user_input = input("Enter numbers separated by spaces: ")

try:
    numbers = [int(x) for x in user_input.split()]
    max_number = max(numbers)
    print("The largest number is:", max_number)
except ValueError:
    print("Error: Please enter valid numbers.")