print("The Love Calculator is calculating your score...")
name1 = input() # What is your name?
name2 = input() # What is their name?
# 🚨 Don't change the code above 👆
# Write your code below this line 👇

# Combine both names into one string and convert to lowercase
names = (name1 + name2).lower()

# Count occurrences of each letter in "TRUE"
true_count = (
    names.count('t') +
    names.count('r') +
    names.count('u') +
    names.count('e')
)

# Count occurrences of each letter in "LOVE"
love_count = (
    names.count('l') +
    names.count('o') +
    names.count('v') +
    names.count('e')
)

# Combine the counts to form the score
score = int(f"{true_count}{love_count}") 

# Print the score
if (score < 10) or (score > 90):
 print(f"Your score is {score}, you go together like coke and mentos.")
elif (score >= 40) and (score <= 50):
 print(f"Your score is {score}, you are alright together.")
else:
  print(f"Your score is {score}.")
