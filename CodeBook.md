Code book for Getting and Cleaning Data course project 

This code book describes the data and the variables of the data set reported in the file "tyde_data.txt" included in the present repository. In addition, the operations performed in order to clean up the original data set are also described.


Data

The data consists in a table of 180 rows and 81 columns.
The first row contains the names of 81 variables, which are listed in the next section, and the following rows contain the mean values of these variables.

Variables

The 81 variables consist in 2 identifier and 79 measurement variables.
Identifiers: Subject  --> integer from 1 to 30
             Activity --> string with 6 possible values
                          WALKING: subject was walking
                          WALKING_UPSTAIRS: subject was walking upstairs
                          WALKING_DOWNSTAIRS: subject was walking downstairs
                          SITTING: subject was sitting
                          STANDING: subject was standing
                          LAYING: subject was laying



Measurement variables

Each of the 79 measurement variables contain an averaged value for a given subject and activity.
The measurements are classified as time- of frequency-domain signals.

Time-domain variables
- Average time-domain body acceleration in the X, Y and Z directions:
  timeDomainBodyAccelerometerMeanX
  timeDomainBodyAccelerometerMeanY
  timeDomainBodyAccelerometerMeanZ

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
  timeDomainBodyAccelerometerStandardDeviationX
  timeDomainBodyAccelerometerStandardDeviationY
  timeDomainBodyAccelerometerStandardDeviationZ

- Average time-domain gravity acceleration in the X, Y and Z directions:
  timeDomainGravityAccelerometerMeanX
  timeDomainGravityAccelerometerMeanY
  timeDomainGravityAccelerometerMeanZ

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
  timeDomainGravityAccelerometerStandardDeviationX
  timeDomainGravityAccelerometerStandardDeviationY
  timeDomainGravityAccelerometerStandardDeviationZ

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  timeDomainBodyAccelerometerJerkMeanX
  timeDomainBodyAccelerometerJerkMeanY
  timeDomainBodyAccelerometerJerkMeanZ

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  timeDomainBodyAccelerometerJerkStandardDeviationX
  timeDomainBodyAccelerometerJerkStandardDeviationY
  timeDomainBodyAccelerometerJerkStandardDeviationZ

- Average time-domain body angular velocity in the X, Y and Z directions:
  timeDomainBodyGyroscopeMeanX
  timeDomainBodyGyroscopeMeanY
  timeDomainBodyGyroscopeMeanZ

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
  timeDomainBodyGyroscopeStandardDeviationX
  timeDomainBodyGyroscopeStandardDeviationY
  timeDomainBodyGyroscopeStandardDeviationZ

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
  timeDomainBodyGyroscopeJerkMeanX
  timeDomainBodyGyroscopeJerkMeanY
  timeDomainBodyGyroscopeJerkMeanZ

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
  timeDomainBodyGyroscopeJerkStandardDeviationX
  timeDomainBodyGyroscopeJerkStandardDeviationY
  timeDomainBodyGyroscopeJerkStandardDeviationZ

- Average and standard deviation of the time-domain magnitude of body acceleration:
  timeDomainBodyAccelerometerMagnitudeMean
  timeDomainBodyAccelerometerMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of gravity acceleration:
  timeDomainGravityAccelerometerMagnitudeMean
  timeDomainGravityAccelerometerMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
  timeDomainBodyAccelerometerJerkMagnitudeMean
  timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of body angular velocity:
  timeDomainBodyGyroscopeMagnitudeMean
  timeDomainBodyGyroscopeMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
  timeDomainBodyGyroscopeJerkMagnitudeMean
  timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

Frequency-domain variables

- Average frequency-domain body acceleration in the X, Y and Z directions:
  frequencyDomainBodyAccelerometerMeanX
  frequencyDomainBodyAccelerometerMeanY
  frequencyDomainBodyAccelerometerMeanZ

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
  frequencyDomainBodyAccelerometerStandardDeviationX
  frequencyDomainBodyAccelerometerStandardDeviationY
  frequencyDomainBodyAccelerometerStandardDeviationZ

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
  frequencyDomainBodyAccelerometerMeanFrequencyX
  frequencyDomainBodyAccelerometerMeanFrequencyY
  frequencyDomainBodyAccelerometerMeanFrequencyZ

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  frequencyDomainBodyAccelerometerJerkMeanX
  frequencyDomainBodyAccelerometerJerkMeanY
  frequencyDomainBodyAccelerometerJerkMeanZ

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  frequencyDomainBodyAccelerometerJerkStandardDeviationX
  frequencyDomainBodyAccelerometerJerkStandardDeviationY
  frequencyDomainBodyAccelerometerJerkStandardDeviationZ

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  frequencyDomainBodyAccelerometerJerkMeanFrequencyX
  frequencyDomainBodyAccelerometerJerkMeanFrequencyY
  frequencyDomainBodyAccelerometerJerkMeanFrequencyZ

- Average frequency-domain body angular velocity in the X, Y and Z directions:
  frequencyDomainBodyGyroscopeMeanX
  frequencyDomainBodyGyroscopeMeanY
  frequencyDomainBodyGyroscopeMeanZ

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
  frequencyDomainBodyGyroscopeStandardDeviationX
  frequencyDomainBodyGyroscopeStandardDeviationY
  frequencyDomainBodyGyroscopeStandardDeviationZ

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
  frequencyDomainBodyGyroscopeMeanFrequencyX
  frequencyDomainBodyGyroscopeMeanFrequencyY
  frequencyDomainBodyGyroscopeMeanFrequencyZ
  
- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
  frequencyDomainBodyAccelerometerMagnitudeMean
  frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
  frequencyDomainBodyAccelerometerMagnitudeMeanFrequency

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
  frequencyDomainBodyAccelerometerJerkMagnitudeMean
  frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
  frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
  frequencyDomainBodyGyroscopeMagnitudeMean
  frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
  frequencyDomainBodyGyroscopeMagnitudeMeanFrequency

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
  frequencyDomainBodyyGyroscopeJerkMagnitudeMean
  frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
  frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency


Clean-up operations

The following transformations were applied to the original data set:

- The original data set was loaded into separated training and test data frames 
- The training and test sets were merged to create a single data set
- The measurements on the mean and standard deviation were selected from the merged data set 
- The names for the activities were turned from integers to descriptive names 
- Descriptive names were attributed to the variable by removing special characters and replacing some letters with complete words 
- The data were melted and then recast in order to have the average values of each variable for each activity and each subject.

