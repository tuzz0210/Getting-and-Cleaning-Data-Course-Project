library(data.table)
#1 Merges the training and the test sets to create one data set.
train1<-fread("./train/X_train.txt")
train2<-fread("./train/subject_train.txt")
train3<-fread("./train/y_train.txt")
train<-cbind(train1,train2,train3)
test1<-fread("./test/X_test.txt")
test2<-fread("./test/subject_test.txt")
test3<-fread("./test/y_test.txt")
test<-cbind(test1,test2,test3)
total<-rbind(train,test)

#4 Appropriately labels the data set with descriptive variable names
name<-fread("features.txt")
names(total)[1:561]<-name$V2
names(total)[562:563]<-c("subject","activity_label")

#3 Uses descriptive activity names to name the activities in the data set
acti<-fread("activity_labels.txt")
total$activity_label<-acti[total$activity_label,V2]

#2 Extracts only the measurements on the mean and standard deviation for each measurement.
index<-c(grep("mean",names(total)),grep("std",names(total)))
total1<-total[,c(sort(index),562,563),with=FALSE]

#5 creates a second, independent tidy data set with the average of each variable 
#for each activity and each subject.
final<-total1[,lapply(.SD,mean),by=c("subject","activity_label")]
write.table(final,file="tidydataset.txt",row.names=FALSE)
