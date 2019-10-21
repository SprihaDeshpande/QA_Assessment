import requests

def get_response_json(url):
    response = requests.get(url).json()
    return response