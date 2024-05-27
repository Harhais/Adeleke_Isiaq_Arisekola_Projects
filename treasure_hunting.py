print('''
                                 __)),
                                //_ _)
                                ( "\"
                                 \_-/
                             ,---/  '---.
                            /     - -    \
                           /  \_. _|__,/  \
                          /  )\        )\_ \
                         / _/  (   '  ) /  /
                        / |     (_____) | /
                       /,'      /     \/ /,
                     _/(_      (   ._, )-'
                    `--,/      |____|__|
                               |    )  |
                               |   /   |
                               |  / \  |
                              / `|  | _)
                              |  |  |  |
                              |  /  \  |
                              | |    \ |
                              | \    | \_
                             /__(    '-._`,

''')

print("Welcome to Treasure Island.")
print("Your mission is to find the treasure.")

# Ask the user for their choice at the crossroad
crossroad = input("You are at a crossroad. Where do you want to go? 'left' or 'right': ")

if crossroad.lower() == "left":
    # Ask the user for their choice at the lake
    lake = input("You have come to a lake. There is an island in the middle of the lake. Type 'wait' to wait for a boat. Type 'swim' to swim across: ")
    if lake.lower() == "wait":
        # Ask the user for their choice at the house
        door = input("You arrive at the island unharmed. There is a house with 3 doors. One red, one yellow and one blue. Which colour do you choose? ").lower()
        if door == "red":
            print("It's a room full of fire. Game Over.")
        elif door == "yellow":
            print("You found the treasure! You Win!")
        elif door == "blue":
            print("You enter a room of beasts. Game Over.")
        else:
            print("You chose a door that doesn't exist. Game Over.")
    else:
        print("You get attacked by an angry trout. Game Over.")
else:
    print("You fell into a hole. Game Over.")
