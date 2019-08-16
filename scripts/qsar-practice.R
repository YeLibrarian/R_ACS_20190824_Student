# This .R file is for students to practice basic R commands.
# We can use the pound symbol# to add any comments. Here, we use it to give you instructions on what to do. 
# Please follow the instructor to type and run commands under the related comment lines
# Once you typed the commands, use "ctrl + Enter" on PC or "Command + Enter" on Mac to run the command


# Demonstration:  Building QSAR models with R

# Load the data file benzoate.txt from the /data/ folder


# Build a linear model comparing benzoate$pka with benzoate$sigma.m
# the ~ is used the way you would normally use =
# 
# this model attempts to predict the value of the pKa based on the variable sigma.m

model.m <- lm(pka ~ sigma.m, data=benzoate)

# plot the results
# and add a line for x=y, which represents the ideal prediction by the model

plot(benzoate$pka, fitted(model.m))

abline(a=0, b=1)

# see a numerical summary of the model's statistics
# 

summary(model.m)


# update the plot with a title and label the axes

plot(benzoate$pka, fitted(model.m), main="This is the title", xlab="Observed pKa", ylab="Predicted pKa")


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

min(benzoate$pka)
max(benzoate$pka)

# a couple of ways to visulaize the spread graphically

# a boxplot - you can add a title and label axes if you like

boxplot(benzoate$pka)

# a histogram

hist(benzoate$pka)



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

model.all <- lm(pka ~ . , data=benzoate)

# plot the results

plot(benzoate$pka, fitted(model.xxx), main="This is the title", xlab="Observed pKa", ylab="Predicted pKa")

# add a line

abline(a=0, b=1)

# Get quantitative info on each model using:

summary(model.xxx)


# Best 5 Descriptors from model.all 
# the ones with the lowest Pr values in the summary of model.all

model.5 <- lm(pka ~  sigma.p + sigma.m + ortho + tpsa + logp,  data=benzoate)

# generate a plot and data summary for model.5 following the pattern used for model.all

# Best 2 Descriptors from model.5 (fill in the actual descriptors yourself)

model.2 <- lm(pka ~    desc  +  desc, data=benzoate)

# plot and summary

# Best 1 Descriptor from model.2 (fill in the actual descriptors yourself)

model.1 <- lm(pka ~    desc, data=benzoate)

# plot and summary

#what does it all mean?

#

#