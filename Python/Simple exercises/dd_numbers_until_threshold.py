number=0
treshhold=10
#add haye fard
while True:
    number+=1
    if not number%2:
        continue
    print(f"numer is {number}")
    if number>treshhold:
        break