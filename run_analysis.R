setwd("C:/Users/me/Documents/Coursera/Getting and Cleaning Data/week4/project/UCI HAR Dataset")

activity_labels<-read.table("activity_labels.txt")
features <-read.table("features.txt")


#test dataset
test_data <-read.table("test/X_test.txt")
test_label <- read.table("test/y_test.txt")
subject_test<-read.table("test/subject_test.txt")
body_acc_x_test <- read.table("test/Inertial Signals/body_acc_x_test.txt")
body_acc_y_test <- read.table("test/Inertial Signals/body_acc_y_test.txt")
body_acc_z_test <- read.table("test/Inertial Signals/body_acc_z_test.txt")

body_gyro_x_test <- read.table("test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_y_test <- read.table("test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_z_test <- read.table("test/Inertial Signals/body_gyro_z_test.txt")

total_acc_x_test <- read.table("test/Inertial Signals/total_acc_x_test.txt")
total_acc_y_test <- read.table("test/Inertial Signals/total_acc_y_test.txt")
total_acc_z_test <- read.table("test/Inertial Signals/total_acc_z_test.txt")


#train dataset
train_data <-read.table("train/X_train.txt")
train_label <- read.table("train/y_train.txt")
subject_train<-read.table("train/subject_train.txt")
body_acc_x_train <- read.table("train/Inertial Signals/body_acc_x_train.txt")
body_acc_y_train <- read.table("train/Inertial Signals/body_acc_y_train.txt")
body_acc_z_train <- read.table("train/Inertial Signals/body_acc_z_train.txt")

body_gyro_x_train <- read.table("train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_y_train <- read.table("train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_z_train <- read.table("train/Inertial Signals/body_gyro_z_train.txt")

total_acc_x_train <- read.table("train/Inertial Signals/total_acc_x_train.txt")
total_acc_y_train <- read.table("train/Inertial Signals/total_acc_y_train.txt")
total_acc_z_train <- read.table("train/Inertial Signals/total_acc_z_train.txt")


#1 Merge the training and the test sets to create one data set
train <- cbind(subject_train,train_data,train_label)
test <- cbind(subject_test,test_data,test_label)
merged<-rbind(train,test)
rm(train,test)

colnames(merged) <- c("subject",as.character(features$V2),"activity_label")


#2 Extracts only the measurements on the mean and standard deviation for each measurement.
colnames_clean <- features[grep("mean|std",features$V2),"V2"]
merged_clean <-merged[,as.character(colnames_clean)]
merged_clean <-cbind(merged$subject,merged_clean,merged$activity_label)
names(merged_clean)[c(1, ncol(merged_clean))]=c("subject","activity_label")

#3 Uses descriptive activity names to name the activities in the data set
colnames(activity_labels)<- c("activity_label","desc_activity_label")
merged_clean2 <- merge(merged_clean,activity_labels,by="activity_label")

#4 Appropriately label the data set with descriptive variable names
VarNames <-colnames(merged_clean2)
VarNames <- gsub("[()-]", "", VarNames)
VarNames <- gsub("^f","frequencyDomain", VarNames)
VarNames <- gsub("^t","TimeDomain", VarNames)
VarNames <- gsub("Acc","Accelerometer", VarNames)
VarNames <- gsub("Gyro","Gyroscope", VarNames)
VarNames <- gsub("Mag","Magnitude", VarNames)
VarNames <- gsub("Freq","Frequency", VarNames)
VarNames <- gsub("mean","Mean", VarNames)
VarNames <- gsub("std","StandardDeviation", VarNames)
VarNames <- gsub("BodyBody","Body", VarNames)

colnames(merged_clean2) <- VarNames 

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- aggregate(merged_clean2[, 4:ncol(merged_clean2)-1], list(merged_clean2$subject,merged_clean2$desc_activity_label), mean)
