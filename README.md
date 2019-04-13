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

To view this in R:
tidy_data <- read.table('tidy_data.txt', header = TRUE)
View(tidy_data)
