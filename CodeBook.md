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



### THE VARIABLES
The resulting tidy dataset has 180 observations and 81 variables. The first two columns indicate the ID of the subject and the activity performed. I have listed below all the variables in the tidy-ed dataset. All the features indicated below (aside from the first two) are measurements in terms of mean and standard deviation. I used the grep function in base R to isolate these measurements in terms of keyword.

- The subject id encoded from 1 to 30
1. Subject
- The activity performed by the indidual encoded from 1 to 6.
- The numeric factors to the literal names of the activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
2. Activity
- Time Domain Measurements
3. timeDomainBodyAccelerometer-Mean-X
4. timeDomainBodyAccelerometer-Mean-Y
5. timeDomainBodyAccelerometer-Mean-Z
6. timeDomainBodyAccelerometer-StandardDeviation-X
7. timeDomainBodyAccelerometer-StandardDeviation-Y
8. timeDomainBodyAccelerometer-StandardDeviation-Z
9. timeDomainGravityAccelerometer-Mean-X
10. timeDomainGravityAccelerometer-Mean-Y
11. timeDomainGravityAccelerometer-Mean-Z
12. timeDomainGravityAccelerometer-StandardDeviation-X
13. timeDomainGravityAccelerometer-StandardDeviation-Y
14. timeDomainGravityAccelerometer-StandardDeviation-Z
15. timeDomainBodyAccelerometerJerk-Mean-X
16. timeDomainBodyAccelerometerJerk-Mean-Y
17. timeDomainBodyAccelerometerJerk-Mean-Z
18. timeDomainBodyAccelerometerJerk-StandardDeviation-X
19. timeDomainBodyAccelerometerJerk-StandardDeviation-Y
20. timeDomainBodyAccelerometerJerk-StandardDeviation-Z
21. timeDomainBodyGyroscope-Mean-X
22. timeDomainBodyGyroscope-Mean-Y
23. timeDomainBodyGyroscope-Mean-Z
24. timeDomainBodyGyroscope-StandardDeviation-X
25. timeDomainBodyGyroscope-StandardDeviation-Y
26. timeDomainBodyGyroscope-StandardDeviation-Z
27. timeDomainBodyGyroscopeJerk-Mean-X
28. timeDomainBodyGyroscopeJerk-Mean-Y
29. timeDomainBodyGyroscopeJerk-Mean-Z
30. timeDomainBodyGyroscopeJerk-StandardDeviation-X
31. timeDomainBodyGyroscopeJerk-StandardDeviation-Y
32. timeDomainBodyGyroscopeJerk-StandardDeviation-Z
33. timeDomainBodyAccelerometerMagnitude-Mean
34. timeDomainBodyAccelerometerMagnitude-StandardDeviation
35. timeDomainGravityAccelerometerMagnitude-Mean
36. timeDomainGravityAccelerometerMagnitude-StandardDeviation
37. timeDomainBodyAccelerometerJerkMagnitude-Mean
38. timeDomainBodyAccelerometerJerkMagnitude-StandardDeviation
39. timeDomainBodyGyroscopeMagnitude-Mean
40. timeDomainBodyGyroscopeMagnitude-StandardDeviation
41. timeDomainBodyGyroscopeJerkMagnitude-Mean
42. timeDomainBodyGyroscopeJerkMagnitude-StandardDeviation
- Frequency Domain Measurements
43. frequencyDomainBodyAccelerometer-Mean-X
44. frequencyDomainBodyAccelerometer-Mean-Y
45. frequencyDomainBodyAccelerometer-Mean-Z
46. frequencyDomainBodyAccelerometer-StandardDeviation-X
47. frequencyDomainBodyAccelerometer-StandardDeviation-Y
48. frequencyDomainBodyAccelerometer-StandardDeviation-Z
49. frequencyDomainBodyAccelerometer-MeanFrequency-X
50. frequencyDomainBodyAccelerometer-MeanFrequency-Y
51. frequencyDomainBodyAccelerometer-MeanFrequency-Z
52. frequencyDomainBodyAccelerometerJerk-Mean-X
53. frequencyDomainBodyAccelerometerJerk-Mean-Y
54. frequencyDomainBodyAccelerometerJerk-Mean-Z
55. frequencyDomainBodyAccelerometerJerk-StandardDeviation-X
56. frequencyDomainBodyAccelerometerJerk-StandardDeviation-Y
57. frequencyDomainBodyAccelerometerJerk-StandardDeviation-Z
58. frequencyDomainBodyAccelerometerJerk-MeanFrequency-X
59. frequencyDomainBodyAccelerometerJerk-MeanFrequency-Y
60. frequencyDomainBodyAccelerometerJerk-MeanFrequency-Z
61. frequencyDomainBodyGyroscope-Mean-X
62. frequencyDomainBodyGyroscope-Mean-Y
63. frequencyDomainBodyGyroscope-Mean-Z
64. frequencyDomainBodyGyroscope-StandardDeviation-X
65. frequencyDomainBodyGyroscope-StandardDeviation-Y
66. frequencyDomainBodyGyroscope-StandardDeviation-Z
67. frequencyDomainBodyGyroscope-MeanFrequency-X
68. frequencyDomainBodyGyroscope-MeanFrequency-Y
69. frequencyDomainBodyGyroscope-MeanFrequency-Z
70. frequencyDomainBodyAccelerometerMagnitude-Mean
71. frequencyDomainBodyAccelerometerMagnitude-StandardDeviation
72. frequencyDomainBodyAccelerometerMagnitude-MeanFrequency
73. frequencyDomainBodyBodyAccelerometerJerkMagnitude-Mean
74. frequencyDomainBodyBodyAccelerometerJerkMagnitude-StandardDeviation
75. frequencyDomainBodyBodyAccelerometerJerkMagnitude-MeanFrequency
76. frequencyDomainBodyBodyGyroscopeMagnitude-Mean
77. frequencyDomainBodyBodyGyroscopeMagnitude-StandardDeviation
78. frequencyDomainBodyBodyGyroscopeMagnitude-MeanFrequency
79. frequencyDomainBodyBodyGyroscopeJerkMagnitude-Mean
80. frequencyDomainBodyBodyGyroscopeJerkMagnitude-StandardDeviation
81. frequencyDomainBodyBodyGyroscopeJerkMagnitude-MeanFrequency


### THE TRANSFORMATIONS
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
