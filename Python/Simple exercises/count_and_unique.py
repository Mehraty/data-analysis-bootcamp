def process_numbers(numbers):
    result = {}
    for num in numbers:
        if num in result:
            result[num] += 1
        else:
            result[num] = 1
    return result

# تست برنامه
input_list = [1, 2, 2, 3, 4, 4, 4, 5]
output_dict = process_numbers(input_list)

# حذف تکراری‌ها از لیست
unique_list = list(set(input_list))

print("Unique numbers:", unique_list)
print("Dictionary with counts:", output_dict)