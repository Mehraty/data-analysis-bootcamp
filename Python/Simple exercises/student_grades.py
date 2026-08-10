scors=[0, 25,99,65,77,54,38,46,85]

def get_grade(score):
    if score>= 90:
        return 'a'
    elif score>=80:
        return 'b'
    elif score>=70:
        return 'c'
    elif score>=60:
        return 'd'
    else:
        return 'f'
    
grade={}
for i ,scor in enumerate(scors):
    grade[f"student {i+1}"]= get_grade(scor)

avrage= sum(scors)/len(scors)
for student, gr in grade.items():
    print(f'{student} have grade {gr}')
# print(grade)
print(f"the avrage of student score is {avrage}")

