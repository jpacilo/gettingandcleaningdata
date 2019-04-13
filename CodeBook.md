## Getting and Cleaning Data
Author: Joshua Paolo Acilo 
Github: @jpacilo

### What is this?
This codebook describes the variables, the data, and the transformations done on the UCI HAR Dataset.


### Where is the dataset?
The link on the raw dataset (~60 MB) is found below:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

NOTE: Make sure the UCI HAR Dataset (folder) is in the working directory along with the script <run_analysis.R> 


### Who is the dataset for?
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:
  For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

See full description of the dataset here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


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


## Write out the tidy version. 
I used the write.table function to write out the tidy data as a txt file with an argument <row.names = FALSE> as indicated in the instructions.

