# Codebook

## Overview of the data

The original data is collected for Human Activity Recognition Using Smartphones Dataset by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto in Smartlab - Non Linear Complex Systems Laboratory DITEN - Universit‡ degli Studi di Genova. Each person of the 30 volunteers performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

Original documents of the data describe the process as follows:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and > tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then
> they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 > Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration 
> signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 
> 0.3 Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected > for generating the training data and 30% the test data. 
> 
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
> (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
> using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
> fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate 
> frequency domain signals).

## Original dataset

Original datasets can be obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Extracted and analyzed feature variables

For the analysis done in the assignment, following feature variables were extracted and analyzed. In the analysis only the measurements on the mean and standard deviation for each measurement were to be extracted. From the original dataset I chose the variables containing mean() and std(). All data from the data sources was merged into one data frame.

Following variables were extracted from subject_test.txt, subject_train.txt, y_test.txt, y_train.txt and activity_labels.txt:

* subject - number of the participating subject in the range 1-30
* activity - activity done in the experiment (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Data for the following variables was extracted from X_test.txt and X_train.txt and following variables are independent tidy data set with the average of each variable for each activity and each subject:

* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdX
* tBodyAccStdY
* tBodyAccStdZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStdX
* tGravityAccStdY
* tGravityAccStdZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStdX
* tBodyAccJerkStdY
* tBodyAccJerkStdZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStdX
* tBodyGyroStdY
* tBodyGyroStdZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ
* tBodyAccMagMean
* tBodyAccMagStd
* tGravityAccMagMean
* tGravityAccMagStd
* tBodyAccJerkMagMean
* tBodyAccJerkMagStd
* tBodyGyroMagMean
* tBodyGyroMagStd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ
* fBodyAccMagMean
* fBodyAccMagStd
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStd
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStd
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd
