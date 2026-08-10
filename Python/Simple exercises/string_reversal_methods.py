name=input('enter somthing: ')
m=len(name)+1
print(name[-1:-m:-1])
print(name[-1:-len(name)-1:-1])
print(name[:-len(name)-2:-1])
print(name[:-int(len(name))-1:-1])
print(name[:(len(name)+1)*(-1):-1])
print(name[::-1])