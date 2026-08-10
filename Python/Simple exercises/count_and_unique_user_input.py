def process_numbers(numbers):
    result = {}
    for num in numbers:
        if num in result:
            result[num] += 1
        else:
            result[num] = 1
    return result

# گرفتن ورودی از کاربر
user_input = input("Enter numbers separated by spaces: ")

try:
    input_list = [int(x) for x in user_input.split()]
except ValueError:
    print("Error: Please enter only numbers.")
    exit()

# پردازش لیست
output_dict = process_numbers(input_list)
unique_list = list(set(input_list))

# نمایش خروجی
print("Unique numbers:", unique_list)
print("Dictionary with counts:", output_dict)