# Nathan Ford
# June 2nd, 2022
# HCDE 410 Final Project
# This file contains the R code for the linear models and data visualization

# install packages if necessary
install.packages("ggplot2")
install.packages("dplyr")
install.packages("broom")

# load the libraries
library(ggplot2)
library(dplyr)

# load dataset created in Python
pisa_data <- read.csv('pisa_df.csv')

# create plots and test for linearity
#
# 

# pre-primary
# check for rough normalcy
hist(pisa_data$PISA..Mean.performance.on.the.reading.scale)
plot(pisa_data$Government.expenditure.on.pre.primary.education.as...of.GDP...., 
     pisa_data$PISA..Mean.performance.on.the.reading.scale)

# create a linear model
pisa_data.lm <- lm(pisa_data$PISA..Mean.performance.on.the.reading.scale ~ 
                      pisa_data$Government.expenditure.on.pre.primary.education.as...of.GDP...., data = pisa_data)
# view results of linear model
summary(pisa_data.lm)

# check linear model's error plots
plot(pisa_data.lm)

# create a plot with the actual data and the linear model's line
pre_primary.graph <- ggplot(pisa_data, aes(x = pisa_data$Government.expenditure.on.pre.primary.education.as...of.GDP....,
                                           y = pisa_data$PISA..Mean.performance.on.the.reading.scale)) + geom_point()
pre_primary.graph <- pre_primary.graph + geom_smooth(method = 'lm', col = 'red')
pre_primary.graph <- pre_primary.graph + theme_bw() + labs(title = "PISA Scores as a function of Pre-Primary Education Spending",
                                                           x = 'Percentage of GDP Spent on Pre-Primary Education',
                                                           y = 'PISA Score')
# display final plot
pre_primary.graph



# primary
# check for rough normalcy
plot(pisa_data$Government.expenditure.on.primary.education.as...of.GDP...., 
     pisa_data$PISA..Mean.performance.on.the.reading.scale)

# create a linear model
pisa_data.lm <- lm(pisa_data$PISA..Mean.performance.on.the.reading.scale ~ 
                      pisa_data$Government.expenditure.on.primary.education.as...of.GDP...., data = pisa_data)
# view results of linear model
summary(pisa_data.lm)

# check linear model's error plots
plot(pisa_data.lm)

# create a plot with the actual data and the linear model's line
primary.graph <- ggplot(pisa_data, aes(x = pisa_data$Government.expenditure.on.primary.education.as...of.GDP....,
                                           y = pisa_data$PISA..Mean.performance.on.the.reading.scale)) + geom_point()
primary.graph <- primary.graph + geom_smooth(method = 'lm', col = 'red')
primary.graph <- primary.graph + theme_bw() + labs(title = "PISA Scores as a function of Primary Education Spending",
                                                           x = 'Percentage of GDP Spent on Primary Education',
                                                           y = 'PISA Score')
# display final plot
primary.graph



# secondary
# check for rough normalcy
plot(pisa_data$Government.expenditure.on.secondary.education.as...of.GDP...., 
     pisa_data$PISA..Mean.performance.on.the.reading.scale)

# create a linear model
pisa_data.lm <- lm(pisa_data$PISA..Mean.performance.on.the.reading.scale ~ 
                      pisa_data$Government.expenditure.on.secondary.education.as...of.GDP...., data = pisa_data)
# view results of linear model
summary(pisa_data.lm)

# check linear model's error plots
plot(pisa_data.lm)

# create a plot with the actual data and the linear model's line
secondary.graph <- ggplot(pisa_data, aes(x = pisa_data$Government.expenditure.on.secondary.education.as...of.GDP....,
                                           y = pisa_data$PISA..Mean.performance.on.the.reading.scale)) + geom_point()
secondary.graph <- secondary.graph + geom_smooth(method = 'lm', col = 'red')
secondary.graph <- secondary.graph + theme_bw() + labs(title = "PISA Scores as a function of Secondary Education Spending",
                                                           x = 'Percentage of GDP Spent on Secondary Education',
                                                           y = 'PISA Score')
# display final plot
secondary.graph



# tertiary
# check for rough normalcy
plot(pisa_data$Government.expenditure.on.tertiary.education.as...of.GDP...., 
     pisa_data$PISA..Mean.performance.on.the.reading.scale)

# create a linear model
pisa_data.lm <- lm(pisa_data$PISA..Mean.performance.on.the.reading.scale ~ 
                      pisa_data$Government.expenditure.on.tertiary.education.as...of.GDP...., data = pisa_data)
# view results of linear model
summary(pisa_data.lm)

# check linear model's error plots
plot(pisa_data.lm)

# create a plot with the actual data and the linear model's line
tertiary.graph <- ggplot(pisa_data, aes(x = pisa_data$Government.expenditure.on.tertiary.education.as...of.GDP....,
                                           y = pisa_data$PISA..Mean.performance.on.the.reading.scale)) + geom_point()
tertiary.graph <- tertiary.graph + geom_smooth(method = 'lm', col = 'red')
tertiary.graph <- tertiary.graph + theme_bw() + labs(title = "PISA Scores as a function of Tertiary Education Spending",
                                                           x = 'Percentage of GDP Spent on Tertiary Education',
                                                           y = 'PISA Score')
# display final plot
tertiary.graph
