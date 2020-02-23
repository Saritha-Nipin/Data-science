##Ensemble Methods-Bagging
acc<-c()
for(i in 1:1000)
{ 
  print(i)
  #Data partition
  inTraininglocal<-createDataPartition(iris$Species,p=.80,list = F)
  training1<-iris[inTraininglocal,]
  testing<-iris[-inTraininglocal,]
  ##Model Building
  model<-C5.0(training1$Species~.,data = training1)
  #Prediction
  pred<-predict.C5.0(model,testing[,-5])
  a<-table(testing$Species,pred)
  #Accuracy
  acc<-c(acc,sum(diag(a))/sum(a))
}
summary(acc)
        boxplot(acc)
        
        ##Ensemble Methods-Boosting
        acc<-c()
        for(i in 1:100)
        { 
          print(i)
          #Data partition
          inTraininglocal<-createDataPartition(iris$Species,p=.80,list = F)
          training1<-iris[inTraininglocal,]
          testing<-iris[-inTraininglocal,]
          ##Model Building
          fittree<-C5.0(training1$Species~.,data = training1,trials=20)
          #Prediction
          pred<-predict.C5.0(fittree,testing[,-5])
          a<-table(testing$Species,pred)
          #Accuracy
          acc<-c(acc,sum(diag(a))/sum(a))
        }
        summary(acc)
        boxplot(acc)        