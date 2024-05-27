#Welcom to the tip calculator.

print(input("Welcom to the tip calculator."))
bill = (input("What was the total bill? $"))
tip = (input("What percentage tip would you like to give?"))
people = (input("How many people to split the bill?"))
indiviual_bill = (float(bill) / float(people)) * (1 + float(tip) / 100)
indiviual_bill = "{:.2f}". format(indiviual_bill)
print(f"Each person should pay: ${indiviual_bill}")