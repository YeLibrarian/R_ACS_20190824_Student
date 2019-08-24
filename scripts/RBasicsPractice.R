# This .R file is for students to practice basic R commands.
# We can use the pound symbol# to add any comments. Here, we use it to give you instructions on what to do. 
# Please follow the instructor to type and run commands under the related comment lines
# Once you typed the commands, use "ctrl + Enter" on PC or "Command + Enter" on Mac to run the command

#Identify the current working directory


# R can be used as a calculator. 
# Type a math question below and run it. Find your answer in the Console.







# Precedence order: (,) > Exponents ^ > Divide / > Multiply * > Add + > Subtract -

# Logic comparison works too
# Type/run a comparison and find your answer in the Console.








# Use assignment operator '<-" to store values in variable
# Type and run a command to assign the value of 1/40 to a variable x. 



# Check what's now stored in the Environment on the right top section.
# Display the value in the console by type and run the variable name



# Assignment value can contain the variable being assigned to
# Type and run a command to assign the value of x + 1 to y



# Variable names may not contain or start with some special characters 
# Challenge: Try to assign the value 3 to the following variable names and see if it works. 
# min_height, _age, .mass, MaxLength, min-length, 2widths, celsius2kelvin










#To clean up the variables stored in the Environment, use the function rm()
# Remove variable x



# Remove everything in the Environment using rm(list=ls())




# Get tabulized data into the Environment as data frame
# Example: plot a calibrarion curve for the chemical reaction Fe^3+^ + SCN^-^  <-> FeSCN^2+^

# To import the data in .csv format, use read.csv function
# when importing, we assign the dataframe to a variable named calib



# hint: the data file is under the data subfolder while the R script is under the script subfolder. 
# use ./ to go up one level of folder first. 

# Take a look at the imported data


# Your turn: overview the data object properties - use str() or summary()




# subset dataframe
# read the concentration column only






# basic statistic functions: mean, std, median 





# Your turn: read the Absorbance column and assign it to a varaible called abs






# Your turn: read the first six rows only and assign it to a variable called calib_clean
# Because the last absorption value is negative and clearly an outlier 






# Note that the raw data file Calib20190725.csv still has all the data points. 
# Your deletion of the suspicious data point is reproducible through the script. 
# Documenting the reason for deletion will help youself and others to understand in the future.

# change names of the columns





#save the cleaned up data as a csv file to the data_output folder




# Now let's plot the calibration curve
# First, let's plot the data points



# You may need to click on Plots/Zoom on the right botton window to see the plot
# to change the color and shape of the points




# calculate the best fit using lm(y ~ x, data = )










# Add the fitted value to the plot







#save a plot to a file
#Open jpeg file



#Create the plot




#Close the file





# Getting help
#know function name and search for documents



#remind yourself the name of arguments of a function



#keyword search in Help when not knowing the function



#Google or search on stackoverflow.com . With tag [r]
#inlcude computing environment info when asking questions



#Optional content

#Predict concentration using the model 




# access chem data online 



