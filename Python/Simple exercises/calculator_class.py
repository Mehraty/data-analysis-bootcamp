class Calculator:
    def add(self, num1, num2):
        return num1 + num2

    def subtract(self, num1, num2):
        return num1 - num2

    def multiply(self, num1, num2):
        return num1 * num2

    def divide(self, num1, num2):
        if num2 == 0:
            return "Error: Division by zero is not allowed"
        return num1 / num2

# گرفتن ورودی از کاربر
print("Simple Calculator - Please choose an operation:")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")

choice = input("Enter the number of the operation (1 to 4): ")

try:
    number1 = float(input("Enter the first number: "))
    number2 = float(input("Enter the second number: "))
except ValueError:
    print("Error: Please enter valid numbers.")
    exit()

# ساخت شیء از کلاس ماشین حساب
calc = Calculator()

# انجام عملیات
if choice == "1":
    result = calc.add(number1, number2)
    print("Result of addition:", result)
elif choice == "2":
    result = calc.subtract(number1, number2)
    print("Result of subtraction:", result)
elif choice == "3":
    result = calc.multiply(number1, number2)
    print("Result of multiplication:", result)
elif choice == "4":
    result = calc.divide(number1, number2)
    print("Result of division:", result)
else:
    print("Invalid operation.")