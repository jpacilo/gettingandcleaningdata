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
The resulting tidy dataset has 180 observations and 68 variables. The first two features indicate the ID of the subject and the activity performed which are encoded as numbers. I have listed below all the variables in the tidy-ed dataset. All the features indicated below (aside from the first two) are measurements in terms of mean and standard deviation.

- The subject ID encoded from 1 to 30
1. Subject 
- The activity performed encoded from 1 to 6
2. Activity 
- Time Body Accelerometer Measurements
3. tBodyAcc-mean-X
4. tBodyAcc-mean-Y
5. tBodyAcc-mean-Z
6. tBodyAcc-std-X
7. tBodyAcc-std-Y
8. tBodyAcc-std-Z
- Time Gravity Accelerometer Measurements
9. tGravityAcc-mean-X
10. tGravityAcc-mean-Y
11. tGravityAcc-mean-Z
12. tGravityAcc-std-X
13. tGravityAcc-std-Y
14. tGravityAcc-std-Z
- Time Body Accelerometer Jerk Measurements
15. tBodyAccJerk-mean-X
16. tBodyAccJerk-mean-Y
17. tBodyAccJerk-mean-Z
18. tBodyAccJerk-std-X
19. tBodyAccJerk-std-Y
20. tBodyAccJerk-std-Z
- Time Body Gyroscope Measurements
21. tBodyGyro-mean-X
22. tBodyGyro-mean-Y
23. tBodyGyro-mean-Z
24. tBodyGyro-std-X
25. tBodyGyro-std-Y
26. tBodyGyro-std-Z
- Time Body Gyroscope Jerk Measurements
27. tBodyGyroJerk-mean-X
28. tBodyGyroJerk-mean-Y
29. tBodyGyroJerk-mean-Z
30. tBodyGyroJerk-std-X
31. tBodyGyroJerk-std-Y
32. tBodyGyroJerk-std-Z
- Time Body Accelerometer Magnitude Measurements
33. tBodyAccMag-mean
34. tBodyAccMag-std
- Time Gravity Accelerometer Magnitude Measurements
35. tGravityAccMag-mean
36. tGravityAccMag-std
- Time Body Accelerometer Jerk Magnitude Measurements
37. tBodyAccJerkMag-mean
38. tBodyAccJerkMag-std
- Time Body Gyroscope Magnitude Measurements
39. tBodyGyroMag-mean
40. tBodyGyroMag-std
- Time Body Jerk Gyroscope Magnitude Measurements
41. tBodyGyroJerkMag-mean
42. tBodyGyroJerkMag-std
- Frequency Body Accelerometer Measurements
43. fBodyAcc-mean-X
44. fBodyAcc-mean-Y
45. fBodyAcc-mean-Z
46. fBodyAcc-std-X
47. fBodyAcc-std-Y
48. fBodyAcc-std-Z
- Frequency Body Accelerometer Jerk Measurements
49. fBodyAccJerk-mean-X
50. fBodyAccJerk-mean-Y
51. fBodyAccJerk-mean-Z
52. fBodyAccJerk-std-X
53. fBodyAccJerk-std-Y
54. fBodyAccJerk-std-Z
- Frequency Body Gyroscope Measurements
55. fBodyGyro-mean-X
56. fBodyGyro-mean-Y
57. fBodyGyro-mean-Z
58. fBodyGyro-std-X
59. fBodyGyro-std-Y
60. fBodyGyro-std-Z
- Frequency Body Accelerometer Magnitude Measurements
61. fBodyAccMag-mean
62. fBodyAccMag-std
- Frequency Body Accelerometer Jerk Magnitude Measurements
63. fBodyBodyAccJerkMag-mean
64. fBodyBodyAccJerkMag-std
- Frequency Body Gyroscope Magnitude Measurements
65. fBodyBodyGyroMag-mean
66. fBodyBodyGyroMag-std
- Frequency Body Gyroscope Jerk Magnitude Measurements
67. fBodyBodyGyroJerkMag-mean
68. fBodyBodyGyroJerkMag-std


