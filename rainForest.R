install.packages("caret", dependencies = TRUE)
install.packages("randomForest")
model<-randomForest(iris$Species~.,data=iris,ntree=1000)
#view the forst results
print(model)
##Importance of the variable_Lower Gini
print(importance(model))
#extract a single tree from a forest
#split var which variable was used to split the node: 0 if the node is terminal
#split point where the best split is; See details for Categorical Predictor
#statys is the node terminal(-1) or not (1)
#prediction the prediction for the node; 0 if the node is not terminal
#getTree(model)
#prediction
pred<-predict(model,iris[,-5])
table(pred,iris$Species)

