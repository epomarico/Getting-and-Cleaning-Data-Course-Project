Getting and Cleaning Data Coursera course Project. 

This project consists in the preparation of a tidy data set ("tidy_data.txt") from the original data sets 
obtained during a project about Human Activity Recognition Using Smartphones
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The experiments consisted in carrying out various measurements on a group of 
30 volunteers, while they were performing 6 six activities wearing a smartphone on the waist.
The acquired data have been randomly partitioned into two sets, where 70% of the volunteers 
was selected for generating the training data and 30% the test data. 

In the present repository you can find the following files:
- "run_analysis.R""
  This is the R script that performs the following operations:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- "tidy_data.txt"
   This is the .txt file with a table corresponding to the final data set
  
- "Codebook.md"
   This is the Codebook that describes the variables, the data, and any transformations that has been performed to clean up the data 

   
   