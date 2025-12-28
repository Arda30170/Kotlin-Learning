print("Welcome to the Tip Calculator!")

bill = float(input("How much is your bill: $"))
tip = int(input("How much tip would you like to give? 10,12 or 15 "))
people = int(input("How many people to split the bill? "))

bill_per_person = ((tip / 100 * bill) + bill) / people
print(f"Each people should pay ${round(bill_per_person, 2)}")