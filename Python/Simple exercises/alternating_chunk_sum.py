from more_itertools import chunked
def process_numbers(numbers_str):
        list_ = [int(num) for num in numbers_str.split()]
        chunks = list(chunked(list_, 3))
        sums = [sum(combo) for combo in chunks]
        total = 0
        for i, chunk_sum in enumerate(sums):
            if i % 2:  # ایندکس زوج → منها
                total -= chunk_sum
            else:  # ایندکس فرد → جمع
                total += chunk_sum
                
                
        return f" مجموع لیست ها= {sums}",f"طول لیست=  {len(chunks)}",f" باقی مانده بعد از عملیات= {total}"

# استفاده
list_=input("لطفا اعداد را با فاصله وارد کنید = ")
result = process_numbers(list_)
print(result)

# فقط لیست سه تایی تولید میکنه
#valid_chunks = [chunk for chunk in chunks if len(chunk) == 3]
