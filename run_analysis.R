## Load libraries
library(dplyr)

## 1. Merges the training and the test sets to create one data set.
## Load test and train data and its outputs

X_test<-read.table("C:/Users/dario/Desktop/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("C:/Users/dario/Desktop/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
X_train<-read.table("C:/Users/dario/Desktop/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("C:/Users/dario/Desktop/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")

## Load features vector
names<-read.table("C:/Users/dario/Desktop/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
names<-as.vector(names[,2])

## Create data set
data<-rbind(X_train,X_test)
Y<-rbind(y_train,y_test)
colnames(data)<-names
data<-cbind(data,Y)
colnames(data)[562]<-"activity"

## Cleaning the auxiliary objects
rm(X_test,y_test,X_train,y_train,Y)

## 2. Extracts only the measurements on the mean and standard deviation for 
## each measurement.
column<-c(grep("mean[^F]",names),grep("std",names))
column<-sort(column)
column<-c(column,562)
data<-data[,column]

## 3. Uses descriptive activity names to name the activities in the data set
data$activity<-as.factor(data$activity)
niveles<-read.table("C:/Users/dario/Desktop/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
niveles<-niveles[,2]
niveles<-tolower(niveles)
niveles[2:3]<-c("goingup","goingdown")
levels(data$activity)<-niveles

## 4. Appropriately labels the data set with descriptive variable names.
names<-names(data)
names<-tolower(names)
names<-gsub("[-x]$","X",names)
names<-gsub("[-y]$","Y",names)
names<-gsub("[-z]$","Z",names)
names<-gsub("^[t]","",names)
names<-gsub("fbody","transformed",names)
names<-gsub("mag","normalized",names)
names<-gsub("acc","acceleration",names)
names<-gsub("bodyaccelerationjerk","linearacceleration",names)
names<-gsub("body","",names)
names<-gsub("gyro","angularvelocity",names)
names<-gsub("[()]","",names)
names<-gsub("-m","_m",names)
names<-gsub("-s","_s",names)
names<-gsub("-X","X",names)
names<-gsub("-Y","Y",names)
names<-gsub("-Z","Z",names)
names<-gsub("transformed","transformed_",names)
names<-gsub("normalized","_normalized",names)
names<-gsub("gravityacceleration","gravity",names)
names[67]<-"activity"
names(data)<-names

## Cleaning the auxiliary objects
rm(column,names,niveles)

## 5. From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

data<-as_tibble(data)
data_summary<-data %>% group_by(activity) %>% summarise_all(.funs= mean)

