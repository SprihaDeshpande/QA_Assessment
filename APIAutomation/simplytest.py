
def func(ls1,ls2):
   lss1=ls1.sort()
   lss2=ls2.sort()
   return lss1==lss2

ls1=[1,2]
ls2=[2,1]
print(func(ls1,ls2))