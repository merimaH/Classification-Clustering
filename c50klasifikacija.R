#decision tree c50
library(C50)
library(caret)

data.folds <- createFolds(train2$price_range, k = 10)
tacnost<- NULL
for (i in 1:10) {
  podaci.test <- train2[t(as.data.frame(data.folds[i])),]
  podaci.train <- train2[-t(as.data.frame(data.folds[i])),]
  c50.model<- C5.0(x = podaci.train[-21],y = podaci.train$price_range,control = C5.0Control(minCases = 50))
  c50.predict <- predict(c50model,podaci.test[-21])
  c50crosstable <- CrossTable(podaci.test$price_range,c50.predict)
  tacnost[i] <- (c50crosstable$t[1,1]+c50crosstable$t[2,2]+c50crosstable$t[3,3]+c50crosstable$t[4,4])/length(podaci.test$price_range)
}
