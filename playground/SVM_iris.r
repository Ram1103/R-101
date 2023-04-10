dataset = iris

summary(dataset)
View(datset)
library(caTools)
library(ggplot2)
library(GGally)
library(e1071)

split=sample.split(dataset$Species,SplitRatio = 0.75)
training_set=subset(dataset,split==TRUE)
testing_set=subset(dataset,split==FALSE)
View(training_set)
View(testing_set)

#scatterplot
ggpairs(training_set,ggplot2::aes(colour=Species,alpha=0.4))

#scaling train and test dataset
training_set[,1:4]=scale(training_set[,1:4])
testing_set[,1:4]=scale(testing_set[,1:4])

#classifying model
classifier1 = svm(formula = Species~.,
                  data = training_set,
                  type = 'C-classification',
                  kernel='radial')

#prediction
pred1 = predict(classifier1, type = 'response',
                newdata = testing_set)

#accuracy
cm1=table(testing_set[,5],pred1)
View(cm1)
