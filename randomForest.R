library(randomForest)

rf.tacnost<- NULL
for (i in 1:10) {
  podaci.test <- train2[t(as.data.frame(data.folds[i])),]
  podaci.train <- train2[-t(as.data.frame(data.folds[i])),]
  rf.model<- randomForest(podaci.train$price_range ~., podaci.train,ntree=700)
  rf.predict <- predict(rf.model,podaci.test[-21])
  rfcrosstable <- CrossTable(podaci.test$price_range,rf.predict)
  rf.tacnost[i] <- (rfcrosstable$t[1,1]+rfcrosstable$t[2,2]+rfcrosstable$t[3,3]+rfcrosstable$t[4,4])/length(podaci.test$price_range)
}
