!/bin/bash

# RMR FORMULA
# MEN: (10 * W) + (6.25 x H) - (5 x A) + 5
# WOMEN: (10 * W) + (6.25 * H) - (5 x A) - 161
# W: Weight in kg (lb / 2.2)
# H: Height in cm (in * 2.54)
# A: Age

# WELCOME MESSAGE
echo -e "*************************\n*************************\nMACRONUTRIENT CALCULATOR\n*************************\n*************************\n"

# GET USER'S NAME VALIDATE USER INPUT
func_user_name() {
    echo -e "Please enter your name: "
    read user_name

}

while true; do
    func_user_name
    if [ -z "$user_name" ]
    then
        echo -e "I need to know what to call you.\n"
    else
        echo -e "Nice to meet you, $user_name!\n"
        break
    fi
done
echo -e "Let's calculate your Resting Metabolic Rate (RMR) and determine how many calories you burn while doing nothing."

# GET USER'S GENDER
func_user_gender() {
    echo -e "$user_name, what is your gender? (m or f): "
    read user_gender

}

while true; do
    func_user_gender
    if [[ $user_gender == m ]] || [[ $user_gender == f ]]
    then
        echo -e "Got it."
        break
    else
        echo -e "Please enter m or f: "
    fi
done

# GET USER'S WEIGHT IN POUNDS (lb) AND CONVERT TO KILOGRAMS (kg) 
echo -e "$user_name, I need your weight in pounds (lbs). "
unset user_weight
while [[ ! ${user_weight} =~ ^[0-9]+$ ]]; do
    echo -e "Please provide a whole number: "
    read user_weight
done

# GET USER'S HEIGHT IN INCHES (in) AND CONVERT TO CENTIMETERS (cm)
echo -e "$user_name, I also need your height in inches (in)." 
unset user_height
while [[ ! ${user_height} =~ ^[0-9]+$ ]]; do
    echo -e "Please provide a whole number: "
    read user_height
done

# GET USER'S AGE
echo -e "Excellent. One last thing, $user_name. I need to know how old you are."
unset user_age
while [[ ! ${user_age} =~ ^[0-9]+$ ]]; do
    echo -e "Please provide a whole number: "
    read user_age
done

# LIST ALL USER INFORMATION
echo -e "Name: $user_name\nGender: $user_gender\nWeight: $user_weight\nHeight: $user_height\nAge: $user_age"
