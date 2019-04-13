## Getting and Cleaning Data
Author: Joshua Paolo Acilo 


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


## Variables
1. activity_labels
    two column df describing the six activities
2. features
    two column df describing the features
3. features_wanted
    the features wanted are variables containing the words mean and std
4. measurements
    the corresponding measurements from features_wanted
5. measurements_wanted
    just cleaned version of #4 deleted the () bit
6. train_x
    the x vars from the train dataset
7. train_activities
    the six activities encoded from 1-6
8. train_subjects
    the subject number
9. train
    binded the three dfs above
10. test_x
    the x vars from the test dataset
11. test_activities
    the six activities encoded from 1-6
12. test_subjects
    the subject number
13. test
    binded the three dfs above
14. train_test
    merged the train and test dfs
15. train_test_melt
    melted the train_test df to prepare as an input in the casting
16. train_test_cast
    used to aggregate and apply a mean function


