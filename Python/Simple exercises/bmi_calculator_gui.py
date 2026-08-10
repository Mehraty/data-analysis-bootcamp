import tkinter as tk
from tkinter import messagebox

def calculate_bmi():
    try:
        weight = float(entry_weight.get())
        height = float(entry_height.get()) / 100  # تبدیل سانتی‌متر به متر
        bmi = weight / (height ** 2)
        result = f"your BMI: {bmi:.2f}"
        messagebox.showinfo("result= ", result)
    except ValueError:
        messagebox.showerror("ERROR", "ENTER SOME VALID NUMBERS BRO!")

# ساخت پنجره اصلی
root = tk.Tk()
root.title("calculate BMI")

# برچسب‌ها و ورودی‌ها
tk.Label(root, text="weight (kg):").grid(row=0, column=0, padx=10, pady=5)
entry_weight = tk.Entry(root)
entry_weight.grid(row=0, column=1)

tk.Label(root, text="‌height (cm):").grid(row=1, column=0, padx=10, pady=5)
entry_height = tk.Entry(root)
entry_height.grid(row=1, column=1)

# دکمه محاسبه
btn_calculate = tk.Button(root, text="calculate BMI", command=calculate_bmi)
btn_calculate.grid(row=2, column=0, columnspan=2, pady=10)

root.mainloop()