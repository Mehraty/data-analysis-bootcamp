import tkinter as tk
from tkinter import messagebox

def show_message():
    messagebox.showinfo("hi","hello bro!")

# ساخت پنجره
window = tk.Tk()
window.title("normal window")
window.geometry("300x150")

# ساخت دکمه
button = tk.Button(window, text="push me", command=show_message)
button.pack(pady=50)

# اجرای پنجره
window.mainloop()