# gettingandcleaningdata
Tidying up the UCI HAR Dataset

Author: Joshua Paolo Acilo

## Task
Write a script <run_analysis.R> capable of doing the following on the UCI HAR Dataset.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Methodology Overview
Here is my take on answering the programming assignment in getting and cleaning data of coursera's ds specialization.
1. Load the datasets.
  a. activity_labels
  b. features
  c. training data
  d. testing data
2. Clean the datasets.
3. Bind the train and test data.
4. Melt the merged train-test data.
5. Cast the molten data to get the tidy-ed dataset.
6. Write out the tidy dataset.


## Load the dataset
I used the read.table function


## Clean the datasets
1. Use appropriate labels for the columns
2. I used the grep function in R to isolate the names in the features column containing the words: mean and std
3. I used the gsub function to delete the unnecessary () in the variable names.


## Bind the train and test data
I used rbind to merge the train and test datasets. When performing this, make sure that the two datasets have the same number of columns.


## Melt the merged train-test data 
I used the melt function to compress the dataset into a narrow form as this is the input needed in the casting.


## Cast the molten data
1. I used the dcast function to reshpae the molten dataset, and applied a mean aggregating function
2. The resulting dimensions of the dataset is 180 x 68


## Write out the tidy version
I used the write.table function to write out the tidy data as a txt file with an argument <row.names = FALSE> as indicated in the instructions.


## Notes
When performing the analysis, make sure your working directory contains the following files:
1. UCI HAR Dataset (folder) 
   This can be downloaded from the ff link:
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
   Unzip the zip file in the working directory
   The folder should be named UCI HAR Dataset
2. run_analysis.R (r file)


## Tidy data
The tidy data output of my work is in this repo.
https://github.com/jpacilo/gettingandcleaningdata/blob/master/tidy_data.txt

