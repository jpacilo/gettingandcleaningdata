## Joshua Paolo Acilo
##
## Task Summary
## 
## 1. Merge the training and the test sets to create one data set.
## 2. Extract only the measurements on the mean and standard deviation for each measurement.
## 3. Use descriptive activity names to name the activities in the data set
## 4. Appropriately label the data set with descriptive variable names.
## 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.


library(plyr)
library(reshape2)
# plyr pkg is used for the mapvalues fnc
# reshape2 pkg is used for the melt and dcast fncs

activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt', col.names = c('Label', 'Activity'))
features <- read.table('UCI HAR Dataset/features.txt', col.names = c('Index', 'Name'))
#features_wanted <- grep("(mean|std)\\(\\)", features$Name)
features_wanted <- sort(c(grep("mean()", features$Name), grep("std()", features$Name)))
measurements <- features[features_wanted,]$Name
measurements_wanted <- gsub('[()]', '', measurements)
# grep fnc is used here to find varnames containing the words mean or std
# gsub fnc is used here to delete the () character in between varnames 
      # sort(c(grep("mean()", colnames(totaldata)), grep("std()", colnames(totaldata)))))
      


train_x <- read.table("UCI HAR Dataset/train/X_train.txt")[, features_wanted]
  names(train_x) <- measurements_wanted
train_activities <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names = c('Activity'))
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = c('Subject'))
train <- cbind(train_subjects, train_activities, train_x)
# names of the train_x df is changed to the measurements_wanted derived in line 19
# cbind is used to combine the x, activities, and subjects dfs into the train var


test_x <- read.table("UCI HAR Dataset/test/X_test.txt")[, features_wanted]
  names(test_x) <- measurements_wanted
test_activities <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names = c('Activity'))
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = c('Subject'))
test <- cbind(test_subjects, test_activities, test_x)
# names of the test_x df is changed to the measurements_wanted derived in line 19
# cbind is used to combine the x, activities, and subjects dfs into the test var


train_test <- rbind(train, test)
  train_test$Subject <- as.factor(train_test$Subject)
  train_test$Activity <- mapvalues(train_test$Activity, from = 1:6, to = as.character(activity_labels$Activity))
  train_test$Activity <- as.factor(train_test$Activity)
train_test_melt <- melt(data = train_test, id = c('Subject', 'Activity'))
train_test_cast <- dcast(data = train_test_melt, Subject + Activity ~ variable, fun.aggregate = mean) 
  colnames(train_test_cast) <- gsub("^f", "frequencyDomain", colnames(train_test_cast))
  colnames(train_test_cast) <- gsub("^t", "timeDomain", colnames(train_test_cast))
  colnames(train_test_cast) <- gsub("Acc", "Accelerometer", colnames(train_test_cast))
  colnames(train_test_cast) <- gsub("Gyro", "Gyroscope", colnames(train_test_cast))
  colnames(train_test_cast) <- gsub("Mag", "Magnitude", colnames(train_test_cast))
  colnames(train_test_cast) <- gsub("Freq", "Frequency", colnames(train_test_cast))
  colnames(train_test_cast) <- gsub("mean", "Mean", colnames(train_test_cast))
  colnames(train_test_cast) <- gsub("std", "StandardDeviation", colnames(train_test_cast))
# rbind is used to merge the train and test dfs
# mapvalues fnc is used to map the numeric values of activity var to its respective char name
# subject and activity col is changed to factor data type 
# melt fnc is used to compress the dataset in long format, led by the subject and activity var
# dcast fnc is used to reshape and aggregate the molten dataset and to apply a mean fnc to it
# gsub is used to expand the abbreviations in the feature names
  

write.table(train_test_cast, file = 'tidy_data.txt', row.names = FALSE)
# write out the tidy-ed dataset as a txt file

## How to read and view this file?
## tidy_data <- read.table('tidy_data.txt', header = TRUE)
## View(tidy_data)



