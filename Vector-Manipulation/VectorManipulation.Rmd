---
title: "Vector Manipulations"
author: "Vanessa Trujillo"
date: "3/14/2019"
output: html_document
---

```{r setup, include=TRUE}
knitr::opts_chunk$set(echo = TRUE)
#vector sequence from 3 to 10 inclusive
vect3_10 <- seq.int(3,10)
vect3_10
#repeating given vector 3 times
rep(c(2,-3.5, -26), times = 3)
#The value of the sum of 1/3 and 2.
sum32 <- (1/3) + (2)
sum32
#Extract the first and last elements of the vector you have created to form another vector using the extracted elements.  Print this second vector.
firstNlast <- c(vect3_10[c(1,8)])
firstNlast
#Form a third vector from the elements not extracted in (a).  Print this vector. 
notExct <- c(vect3_10[2:7])
notExct
#Use the vectors from (a) and (b) to reconstruct and print the original first vector.
reconstr <- sort(c(firstNlast, notExct))
reconstr
```
