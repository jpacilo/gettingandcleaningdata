## Getting and Cleaning Data
Author: Joshua Paolo Acilo 


### What is this?
This codebook describes the data, the variables, and the transformations done on the UCI HAR Dataset.


### Where is the dataset?
The link on the raw dataset (~60 MB) is found below:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

NOTE: Make sure the UCI HAR Dataset (folder) is in the working directory along with the script <run_analysis.R> 


### THE DATA
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



## THE VARIABLES
The resulting tidy dataset has 180 observations and 81 variables. The first two columns indicate the ID of the subject and the activity performed. I have listed below all the variables in the tidy-ed dataset. All the features indicated below (aside from the first two) are measurements in terms of mean and standard deviation. I used the grep function in base R to isolate these measurements in terms of keyword.

Subject
Activity
timeDomainBodyAccelerometer-Mean-X
timeDomainBodyAccelerometer-Mean-Y
timeDomainBodyAccelerometer-Mean-Z
timeDomainBodyAccelerometer-StandardDeviation-X
timeDomainBodyAccelerometer-StandardDeviation-Y
timeDomainBodyAccelerometer-StandardDeviation-Z
timeDomainGravityAccelerometer-Mean-X
timeDomainGravityAccelerometer-Mean-Y
timeDomainGravityAccelerometer-Mean-Z
timeDomainGravityAccelerometer-StandardDeviation-X
timeDomainGravityAccelerometer-StandardDeviation-Y
timeDomainGravityAccelerometer-StandardDeviation-Z
timeDomainBodyAccelerometerJerk-Mean-X
timeDomainBodyAccelerometerJerk-Mean-Y
timeDomainBodyAccelerometerJerk-Mean-Z
timeDomainBodyAccelerometerJerk-StandardDeviation-X
timeDomainBodyAccelerometerJerk-StandardDeviation-Y
timeDomainBodyAccelerometerJerk-StandardDeviation-Z
timeDomainBodyGyroscope-Mean-X
timeDomainBodyGyroscope-Mean-Y
timeDomainBodyGyroscope-Mean-Z
timeDomainBodyGyroscope-StandardDeviation-X
timeDomainBodyGyroscope-StandardDeviation-Y
timeDomainBodyGyroscope-StandardDeviation-Z
timeDomainBodyGyroscopeJerk-Mean-X
timeDomainBodyGyroscopeJerk-Mean-Y
timeDomainBodyGyroscopeJerk-Mean-Z
timeDomainBodyGyroscopeJerk-StandardDeviation-X
timeDomainBodyGyroscopeJerk-StandardDeviation-Y
timeDomainBodyGyroscopeJerk-StandardDeviation-Z
timeDomainBodyAccelerometerMagnitude-Mean
timeDomainBodyAccelerometerMagnitude-StandardDeviation
timeDomainGravityAccelerometerMagnitude-Mean
timeDomainGravityAccelerometerMagnitude-StandardDeviation
timeDomainBodyAccelerometerJerkMagnitude-Mean
timeDomainBodyAccelerometerJerkMagnitude-StandardDeviation
timeDomainBodyGyroscopeMagnitude-Mean
timeDomainBodyGyroscopeMagnitude-StandardDeviation
timeDomainBodyGyroscopeJerkMagnitude-Mean
timeDomainBodyGyroscopeJerkMagnitude-StandardDeviation
frequencyDomainBodyAccelerometer-Mean-X
frequencyDomainBodyAccelerometer-Mean-Y
frequencyDomainBodyAccelerometer-Mean-Z
frequencyDomainBodyAccelerometer-StandardDeviation-X
frequencyDomainBodyAccelerometer-StandardDeviation-Y
frequencyDomainBodyAccelerometer-StandardDeviation-Z
frequencyDomainBodyAccelerometer-MeanFrequency-X
frequencyDomainBodyAccelerometer-MeanFrequency-Y
frequencyDomainBodyAccelerometer-MeanFrequency-Z
frequencyDomainBodyAccelerometerJerk-Mean-X
frequencyDomainBodyAccelerometerJerk-Mean-Y
frequencyDomainBodyAccelerometerJerk-Mean-Z
frequencyDomainBodyAccelerometerJerk-StandardDeviation-X
frequencyDomainBodyAccelerometerJerk-StandardDeviation-Y
frequencyDomainBodyAccelerometerJerk-StandardDeviation-Z
frequencyDomainBodyAccelerometerJerk-MeanFrequency-X
frequencyDomainBodyAccelerometerJerk-MeanFrequency-Y
frequencyDomainBodyAccelerometerJerk-MeanFrequency-Z
frequencyDomainBodyGyroscope-Mean-X
frequencyDomainBodyGyroscope-Mean-Y
frequencyDomainBodyGyroscope-Mean-Z
frequencyDomainBodyGyroscope-StandardDeviation-X
frequencyDomainBodyGyroscope-StandardDeviation-Y
frequencyDomainBodyGyroscope-StandardDeviation-Z
frequencyDomainBodyGyroscope-MeanFrequency-X
frequencyDomainBodyGyroscope-MeanFrequency-Y
frequencyDomainBodyGyroscope-MeanFrequency-Z
frequencyDomainBodyAccelerometerMagnitude-Mean
frequencyDomainBodyAccelerometerMagnitude-StandardDeviation
frequencyDomainBodyAccelerometerMagnitude-MeanFrequency
frequencyDomainBodyBodyAccelerometerJerkMagnitude-Mean
frequencyDomainBodyBodyAccelerometerJerkMagnitude-StandardDeviation
frequencyDomainBodyBodyAccelerometerJerkMagnitude-MeanFrequency
frequencyDomainBodyBodyGyroscopeMagnitude-Mean
frequencyDomainBodyBodyGyroscopeMagnitude-StandardDeviation
frequencyDomainBodyBodyGyroscopeMagnitude-MeanFrequency
frequencyDomainBodyBodyGyroscopeJerkMagnitude-Mean
frequencyDomainBodyBodyGyroscopeJerkMagnitude-StandardDeviation
frequencyDomainBodyBodyGyroscopeJerkMagnitude-MeanFrequency


## THE TRANSFORMATIONS
The transformations done from the raw dataset to the tidy-ed dataset is indicated in this section.

1. grep
   used to locate the indices of the data containing the keywords: mean and std
2. gsub
   used to replace the unwanted () in the dataset
3. rbind and cbind
   used to bind the train dataset and test dataset individually first, then them together
4. melt
   used to shape the dataset in a long format; this is the input shape needed in casting
5. dcast
   used to reshape the molten dataset; a mean aggregating function is applied in this part
