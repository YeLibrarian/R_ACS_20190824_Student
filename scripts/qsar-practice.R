# This .R file is for students to practice basic R commands.
# We can use the pound symbol# to add any comments. 
# Here, we use it to give you instructions on what to do. 

# Please follow the instructor to type and run commands under the related comment lines
# Once you typed the commands, use "ctrl + Enter" on PC or "Command + Enter" on Mac to run the command


# Load Data:  Building QSAR models with R

# Load the data file benzoate.txt from the /data/ folder
# File menu (top left)
#    Import Dataset
#    from Text (base)
#    navigate to the data folder
#    select benzoate.txt

# The Import Panel has several settings and a preview of the data
# Heading Yes
# Row Names - select "Use First Column" 
#               (otherwise you may get strange results later)
# Separator Tab



# view the datafile in the terminal window



# you can also see the dataset using the Environment tab (top right panel)


# Demonstration:  Building QSAR models with R

# A simple Example
# Build a linear model comparing benzoate$pka with benzoate$sigma.m
# the ~ is used the way you would normally use =
# 
# this model attempts to predict the value of the pKa based on the variable sigma.m



# plot the results
# and add a line for x=y, which represents the ideal prediction by the model





# see a numerical summary of the model's statistics
# 




# update the plot with a title and label the axes



# it's a new plot, so you have to add the line again




# Part 1: Exploratory look at pKa values

# the variable we are attempting to predict is pKa
# it is good practice to look at how the pKa's are distributed
# before modelling

# in each case we only want to see the first column of the data set: pKa
# if you don't specify "$pka" R will give the answer for all of the columns
# this might be a little hard to digest all at once

# how many data points are there

length(benzoate$pka)

# what is the median value

median(benzoate$pka)

# what are the minimum and maximum values




# a couple of ways to visualize the data spread graphically

# a boxplot - you can add a title and label the axes if you like

boxplot(benzoate$pka)

# a histogram

hist(benzoate$pka, main="this is the title")



# Part 2: Model Building

# the data set has 8 variables that could be used to predict the pKa values
# initially we do not know which ones are going to be important
# so we will start by using the whole data set
# and systematically remove low performing variables
# a process called backward stepping

#
#
#

# model with All 8 Descriptors 

model.all <- lm(pka ~ ., data=benzoate)

# plot the results

plot(benzoate$pka, fitted(model.all))

# add a line

abline(a=0, b=1)

# Get quantitative info on each model using:

summary(model.all)


# Best 5 Descriptors from model.all 
# the ones with the lowest Pr values in the summary of model.all

model.5 <- lm(pka ~ sigma.p + sigma.m  +  
                ortho  +  tpsa  + logp, data=benzoate)


# generate a plot and data summary for model.5 following the pattern used for model.all

plot(benzoate$pka, fitted(model.5))

# don't forget to change "model.all" to "model.5"
summary(model.5)
# Best 2 Descriptors from model.5 
#  fill in the actual descriptors yourself
# summary(modle.5) will list Pr values for each descriptor
# note: the Intercept will have is not a descriptor



# plot and summary

# Best 1 Descriptor from model.2 (fill in the actual descriptors yourself)



# plot and summary

#what does it all mean?

#

#