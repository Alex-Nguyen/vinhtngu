source("http://www.openintro.org/stat/data/cdc.R")
names(cdc)
head(cdc)
tail(cdc)
summary(cdc$weight)
mean(cdc$weight)
var(cdc$weight)
median(cdc$weight)
table(cdc$smoke100)
table(cdc$smoke100)/20000
barplot(table(cdc$smoke100))

smoke <-table(cdc$smoke100)
barplot(smoke)

table(cdc$gender, cdc$smoke100)

mosaicplot(table(cdc$gender, cdc$smoke100))

dim(cdc)
cdc[567,6]
names(cdc)
cdc[1:10,6]
cdc[1:10,]
cdc[,6]
cdc$weight

cdc$weight[567]
cdc$weight[1:10]
cdc$gender=="m"
cdc$age >30

mdata <-subset(cdc,cdc$gender=="m")
head(mdata)

m_and_over30 <-subset(cdc,cdc$gender=="m" & cdc$age >30)
m_or_over30 <-subset(cdc,cdc$gender=="m" | cdc$age >30)
boxplot(cdc$height)
summary(cdc$height)

boxplot(cdc$height ~ cdc$gender)

bmi <- (cdc$weight/cdc$height^2) *703
boxplot(bmi ~ cdc$genhlth)

hist(cdc$age)
hist(bmi)
hist(bmi, breaks=50)
