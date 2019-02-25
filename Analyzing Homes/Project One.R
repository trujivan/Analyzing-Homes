---
title: "Untitled"
author: "Vanessa Trujillo"
date: "2/18/2019"
output: html_document
---

```{r setup, include=FALSE}
#Step 1
library(readr)
Project1_Data <- read_csv("Documents/Class Documents/Stats/Stats 382/R Code/Project1-Data.csv")
```

#Part One
```{r}
#Step2
# Creating a dataframe for the data inported
dat <- data.frame(Project1_Data, row.names = NULL, check.rows = FALSE, check.names = TRUE, fix.empty.names = FALSE, stringsAsFactors = default.stringsAsFactors())
default.stringsAsFactors()
#Step3
str(dat)
#Step 4
# Creating a row name vector
namesrows <- c("Apples", "Oranges", "Cucumbers", "Grapes", "Bananas", "Mangos", "Strawberries", "Coconuts", "Dates", "Blueberries")

# Setting the name vector to the new dataframe to create titles for it
names(dat) <-namesrows
dat

#Step5
# Creating a new colonm that multiplies All the data in Apples with all the Data in Cucumbers 
dat$Computed_Column <- dat$Apples*dat$Cucumbers
dat
```

# Part Two

```{r}
#Step6
# Checking out the summary
Summary(dat)
#Step7
# Deteremining missing values from the dataframe
missingValues <- which(is.na(dat), arr.ind=TRUE)
missingValues
#Step8
# Removing all the missing values from the dataframe
newdat <- na.omit(dat)
str(newdat)
newdat

#Used in Step11
# Creting vectors for the data and assigning the correct corresponding columns to build a datafram

colA1 <- which(newdat$Blueberries == "A1")
colA1
datA1 <- dat[colA1,c(1:10)]
datA1
colA2 <- which(newdat$Blueberries == "A2")
colA2
datA2 <- dat[colA2,c(1:10)]
datA2
colA3 <- which(newdat$Blueberries == "A3")
colA3
datA3 <- dat[colA3,c(1:10)]
datA3
colA4 <- which(newdat$Blueberries == "A4")
colA4
datA4 <- dat[colA4,c(1:10)]
datA4

#Step9
#Histograms for Calculated Values
hist(newdat$Computed_Column[1:11])
hist(newdat$Computed_Column[1:11], breaks = , main = "Histogram Showing The Computed Column Distribution A1",
      xlab = "Feats", col = "pink", ylim=c(0,10))

  hist(newdat$Computed_Column[12:25])
hist(newdat$Computed_Column[12:25], breaks = , main = "Histogram Showing The Computed Column Distribution A2",
      xlab = "Feats", col = "Yellow", ylim=c(0,10))

hist(newdat$Computed_Column[26:30])
hist(newdat$Computed_Column[26:30], breaks = , main = "Histogram Showing The Computed Column Distribution A3",
      xlab = "Feats", col = "maroon", ylim=c(0,10))
#Step12
#Comparing and concluding on results :
#Here we see that the computed columns for A1, A2, A3 all vary in frequency. They also seem to have similar in ranging values, but for A1 we see a missing frequency on the 6th bar location; A3 had 2, one is at bar 3 and the other in bar 5 location. A3 has a smaller range also, and an overalll smaller frequency.

#Step10
#Boxplots for Calculated Values
par(mfrow=c(2,3))

boxplot(newdat$Computed_Column[1:11],
        main = "Boxplot Showing The Computed Column Distribution A1",
        xlab = "Calculated Column Data",
        col = "pink",
        horizontal = TRUE,
        notch = FALSE
)

boxplot(newdat$Computed_Column[12:25],
        main = "Boxplot Showing The Computed Column Distribution A2",
        xlab = "Calculated Column Data",
        col = "yellow",
        horizontal = TRUE,
        notch = FALSE
)

boxplot(newdat$Computed_Column[26:30],
        main = "Boxplot Showing The Computed Column Distribution A3",
        xlab = "Calculated Column Data",
        col = "purple",
        horizontal = TRUE,
        notch = FALSE
)     

#Step12
#Comparing and concluding on results :
#Here we see that the computed columns for A1, A2, A3 don't seem to indicate any extreme outliers.

#Step11
#qqplots for Calculated Values
par(mfrow=c(2,3))

qqnorm(newdat$Computed_Column[1:11], pch = 1, col = "purple", frame = FALSE)
qqline(newdat$Computed_Column[1:11], col = "pink", lwd = 2)

qqnorm(newdat$Computed_Column[12:25], pch = 1, col = "orange", frame = FALSE)
qqline(newdat$Computed_Column[12:25], col = "yellow", lwd = 2)

qqnorm(newdat$Computed_Column[26:30], pch = 1, col = "purple", frame = FALSE)
qqline(newdat$Computed_Column[26:30], col = "maroon", lwd = 2)

#Step12
#Comparing and concluding on results :
#Here we see that the computed columns for A1, A2, A3 all have relatively normal distribution since all the points seem to align fairly well.
```


#Part Three

```{r}
#Step9Part3
#Describing by groups A1, A2, A3
library(psych)
library(Hmisc)

plot(describeBy(newdat, "Blueberries"))
summary(newdat, "Blueberries")

par(mfrow=c(2,3))
hist(datA1$Cucumbers)
hist(datA2$Cucumbers)
hist(datA3$Cucumbers)

par(mfrow=c(2,3))
boxplot(datA1$Cucumbers,
        main = "Boxplot Showing The Computed Column Distribution A1",
        xlab = "Calculated Column C Data",
        col = "pink",
        horizontal = TRUE,
        notch = FALSE
)

boxplot(datA2$Cucumbers,
        main = "Boxplot Showing The Computed Column Distribution A2",
        xlab = "Calculated Column C Data",
        col = "yellow",
        horizontal = TRUE,
        notch = FALSE
)

boxplot(datA3$Cucumbers,
        main = "Boxplot Showing The Computed Column Distribution A3",
        xlab = "Calculated Column C Data",
        col = "maroon",
        horizontal = TRUE,
        notch = FALSE
)

par(mfrow=c(2,3))
qqnorm(datA1$Cucumbers, pch = 1, col = "purple", frame = FALSE)
qqline(datA1$Cucumbers, col = "pink", lwd = 2)

qqnorm(datA2$Cucumbers, pch = 1, col = "orange", frame = FALSE)
qqline(datA2$Cucumbers, col = "yellow", lwd = 2)

qqnorm(datA3$Cucumbers, pch = 1, col = "purple", frame = FALSE)
qqline(datA3$Cucumbers, col = "maroon", lwd = 2)

```

#Part Four
```{r}
#Step10Part4
data_subset <- data.frame(newdat$Oranges, newdat$Grapes, newdat$Coconuts)
data_subset
#Step11Part4
data_remaining <- data.frame(newdat$Apples, newdat$Cucumbers, newdat$Bananas, newdat$Mangos, newdat$Strawberries, newdat$Dates, newdat$Blueberries, newdat$Computed_Column)
data_remaining

#Step12Part4
# Write CSV in R
write.csv(dat, file = "dat.csv")
write.csv(newdat, file = "newdat.csv")
write.csv(data_remaining, file = "data_remaining.csv")
write.csv(data_subset, file = "data_subset.csv")
```