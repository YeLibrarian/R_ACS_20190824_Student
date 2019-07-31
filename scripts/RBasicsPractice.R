# This .R file is for students to practice basic R commands.
# Please follow the instructor and type and run commands under the related comment lines
# Once you typed the commands, use "ctrl + Enter" on PC or "Command + Enter" on Mac to run the command

#Identify the current working directory
getwd()

# R can be used as a calculator. 
# Type a math question below and run it. Find your answer in the Console.
1 + 100
3 + 5 * 2
3 + 5 * 2 / 4
3 + 5 ^ 2
2 / 10000
# Precedence order: (,) > Exponents ^ > Divide / > Multiply * > Add + > Subtract -

# Logic comparison works too
# Type/run a comparison and find your answer in the Console.
1 == 1 
1 != 2
1 < 2
1 > 2
1 <= 2

# Use assignment operator '<-" to store values in variable
# Type and run a command to assign the value of 1/40 to a variable x. 

x <- 1/40

# Check what's now stored in the Environment on the right top section.
# Display the value in the console by type and run the variable name

x

# Assignment value can contain the variable being assigned to
# Type and run a command to assign the value of x + 1 to y

y <- x + 1 

# Variable names may not contain or start with some special characters 
# Challenge: Try to assign the value 3 to the following variable names and see if it works. 
# min_height, _age, .mass, MaxLength, min-length, 2widths, celsius2kelvin
min_height <- 3
_age <- 3
.mass <- 3
MaxLength <- 3
min-length <- 3 
2widths <- 3
celsius2kelvin <- 3

#To clean up the variables stored in the Environment, use the function rm()
# Remove variable x
rm(x)
# Remove everything in the Environment using rm(list=ls())
rm(list = ls())






