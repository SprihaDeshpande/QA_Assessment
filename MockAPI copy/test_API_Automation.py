import test_urls
import test_commonUtils


def test_characterIn_movie():
    name = "Obi-Wan%20Kenobi"
    movie_name = "A New Hope"
    string_to_search = "?search="
    search_person_url = test_urls.people_url+string_to_search+name
    result1 = test_commonUtils.get_response_json(search_person_url)
    dict1 = result1["results"][-1]
    list1 = dict1["films"]
    Flag = False
    for i in list1:
        result2 = test_commonUtils.get_response_json(i)
        if result2["title"] == movie_name:
            Flag =True
            break
    assert Flag==True, "Character not in movie"

def test_findIf_starship():
    name = "Enterprise"
    search_person_url = test_urls.starships_url
    result1 = test_commonUtils.get_response_json(search_person_url)
    Flag = False
    for i in result1["results"]:
        if i["name"] == name:
            Flag = True
            break
    assert Flag==True, name + " is not starship"

def test_personIs_Wookie():
    name = "Chewbacca"
    string_to_search = "?search="
    search_person_url = test_urls.people_url+string_to_search+name
    result1 = test_commonUtils.get_response_json(search_person_url)
    dict1 = result1["results"][-1]
    list1 = dict1["species"]
    Flag = False
    for i in list1:
        result2 = test_commonUtils.get_response_json(i)
        if result2["name"] == "Wookiee":
            Flag = True
            break
    assert Flag==True, "Not Wookie"

def test_starship_endpoints():
    lst2 = ["name","model","crew","hyperdrive_rating","pilots","films"]
    result1 = test_commonUtils.get_response_json(test_urls.starships_url)
    Flag = True
    for i in result1["results"]:
        key_list = list(i.keys())
        llist1 = [element for element in key_list if element in lst2]
        llist2 = [element for element in lst2 if element in key_list]
        llist1.sort()
        llist2.sort()
        if llist1!=llist2:
            Flag = False
            break
    assert Flag==True, "All endpoints not satisfied"


def test_count_starship():
    result1 = test_commonUtils.get_response_json(test_urls.starships_url)
    number = result1["count"]
    count = 0
    while True:
        print(result1["next"])
        count += len(result1["results"])
        if result1["next"] == None:
            break
        else:
            result1 = test_commonUtils.get_response_json(result1["next"])
    assert number==count, "Count Not Equal to Number of Items"
