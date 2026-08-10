import random
num = random.randint(1, 100) 

while True:
    user=int(input("enter a number= "))
    if user== num:
        break
    elif user>num:
        print("smaller")
    else:
        print("larger")
print("drod bar to")