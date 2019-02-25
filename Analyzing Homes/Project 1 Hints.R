# The command you want to use for 1, is setwd for example
setwd("C:/Users/Education to the z/Documents/382") #Step 1

# read your csv file you use the following command but
# NOTE: check out the option header, this should be set to FALSE, since
# there are no labels for your columns 
# only then you will be able to properly add labels with your code.
dat <- read.csv(file.path("Project1-Data.csv"), sep = "," ) # step2

# str will create your dataframe to dat
str(dat) #Step 3

# you should simply write your variable for example dat to print it in
# the screen
# to create a vector you use the c(x1,x2,...) then you assign this to 
# a  variable using the <- operator 
# the column names may be generic

#step 4
# To add the row on the top as a header you will use the colnames()
# Caution for this to work properly you need to actually set the header 
# when you read your data, research how to do this by searching for help
# on read.csv (options) one of the options sets the header off and on
colnames(dat) <- titles
# to check if the dataframe has labels now, you should print the dat in your screen

# Step 5
# R uses vectorization, use dat$col... to reach each column. Operations of columns 
# completed with the use of the actual operators. dat$col4*dat$col7 will create 
# that holds the values of the product of the columns row by row


# Step 6
# to identify the N/A data there are many different methods and I would expect that 
# each on of you will come up with a different method
# you may review is.na() and use it with dat. 
# also combine is.na() with colSums() that will return the number of NA for each column
# A different method maybe to do this manually using is.na() with sapply, create a matrix, and use addmargins
# for the count, or use table()

# Step 7
# once you count the N/A's you want to clean up your data by ommiting those that are NAs
# if you do not do this, then you will have issues splitting dat by classes.
# NOTE: store the cleaned data in a new data frame using:
# dat.clean<-na.omit(dat)
#
# You may also find # how many in total NA values in all rows
# sum(is.na(dat[,1:10]))

# Step 8
# graphing
# you will need to use par(mfrow = c(1,2)) to set up your output to
# print two graphs per row.
# for example:
#hist(dat$Col3)
# boxplot(dat$Col3)  note that it is important to play around with your
# graphs, add titles, proportions, legends, colors, etc...



# Step 9
# separating dataframes
# to separate the data frames you should use the which () that helps you
# choose those rows where there is a condition satisfied
# for example: which(dat$Col10 == "A1")
# create one new dataframe for each subset of rows that correspond to each class
# remember you need to work with the dat.clean, otherwise some classes will end up having
# no data, the reason is that which() doesn't count NAs
#
# You may want to try this:
# colA1 <- which(dat$Col10 == "A1")
# colA1
# datA1 <- dat[colA1,c(1:10)]
# datA1



# run your summary and graphs for each dataframe
# you can if you want create a loop to do this and a function for the entire
# process but this is optional. We will review loops later in our course.

# summary(datA1)
# ...
#....

# Set your output for 4 graphs per row. You did something similar above for 2 graphs
# You should decide what graphs to create and how, remember you have 10 columns to
# work with.
# Hint: Review your Summaries, to identify anomalies, try to show those
# with your graphs.
# not necessary to overdo it here, just 1,2 observations are enough for this
# part
# beautify your graphs



 
# Last part, you have worked with subsetting in Swirl, so you should know how
# to do this.

# Steps 10-11-12
# if you to select columns 1,4,8 from my data: new <-dat[c(1,4,8)]
# if you want to exclude 3 and 5 from my data new <- dat[-c(3,5)]
# NOTE: REMEMBER that you should work with your initial data, NOT with the
# cleaned up.
# to write in a file use the command: rite.csv(data_remaining, "C:/Users/Education to the z/Documents/R/Data_Remaining.csv", row.names = TRUE)


