#Decision Tree Algorithm

dataset=read.csv('Social_Network_Ads.csv')
View(dataset)
dataset=dataset[3:5]
str(dataset)
#encoding the target feature as factor
dataset$Purchased=factor(dataset$Purchased, levels=c(0,1))
install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(dataset$Purchased, SplitRatio=0.8)
training_set=subset(dataset, split==TRUE)
test_set=subset(dataset, split==FALSE)
View(training_set)

#feature scaling
training_set[-3]=scale(training_set[-3])
View(training_set)
test_set[-3]=scale(test_set[-3])
View(test_set)

install.packages('rpart')
library(rpart)

classifier=rpart(formula=Purchased ~., data=training_set)

#predicting the test set results
y_pred = predict(classifier, newdata = test_set[-3], type='class')
y_pred1 = predict(classifier, newdata = test_set, type='class')
View(y_pred)
View(y_pred1)
cm = table(test_set[,3], y_pred)
View(cm)

plot(classifier)
text(classifier)
