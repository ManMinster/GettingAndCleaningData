---
title: "Code Book"
author: "Manni P"
date: "30 July 2015"
output: html_document
---

## Code Book : Getting and Cleaning Data Project 1

#### Data Source and background information

The data set derives from the Human Activity Recognition database which was made available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The database is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.


## Variables information

### Identifiers for the 'subject' and 'activity' type are variables labelled in the data set.

`subject` The ID of the test subject

`activity` The activity performed by the subject

The possible values for the activity variable was originaly `1` `2` `3` `4` `5` or `6`. The activity_labels.txt file shows what each values corresponds to. 

`1` = `WALKING`

`2` = `WALKING_UPSTAIRS`

`3` = `WALKING_DOWNSTAIRS`

`4` = `SITTING`

`5` = `STANDING`

`6` = `LAYING`

The numbers have been substituted with the description for the tidyData.txt file.


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMa  g). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 



These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

`tBodyAcc-XYZ`

`tGravityAcc-XYZ`

`tBodyAccJerk-XYZ`

`tBodyGyro-XYZ`

`tBodyGyroJerk-XYZ`

`tBodyAccMag`

`tGravityAccMag`

`tBodyAccJerkMag`

`tBodyGyroMag`

`tBodyGyroJerkMag`

`fBodyAcc-XYZ`

`fBodyAccJerk-XYZ`

`fBodyGyro-XYZ`

`fBodyAccMag`

`fBodyAccJerkMag`

`fBodyGyroMag`

`fBodyGyroJerkMag`




####The set of variables that were estimated from these signals are: 


mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.


#### Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

`gravityMean`

`tBodyAccMean`

`tBodyAccJerkMean`

`tBodyGyroMean`

`tBodyGyroJerkMean`


#### Measurements Taken : The complete list of variables of each feature vector

##### The original variables are listed below

`tBodyAccMeanX`

`tBodyAccMeanY`

`tBodyAccMeanZ`

`tBodyAccStdX`

`tBodyAccStdY`

`tBodyAccStdZ`

`tGravityAccMeanX`

`tGravityAccMeanY`

`tGravityAccMeanZ`

`tGravityAccStdX`

`tGravityAccStdY`

`tGravityAccStdZ`

`tBodyAccJerkMeanX`

`tBodyAccJerkMeanY`

`tBodyAccJerkMeanZ`

`tBodyAccJerkStdX`

`tBodyAccJerkStdY`

`tBodyAccJerkStdZ`

`tBodyGyroMeanX`

`tBodyGyroMeanY`

`tBodyGyroMeanZ`

`tBodyGyroStdX`

`tBodyGyroStdY`

`tBodyGyroStdZ`

`tBodyGyroJerkMeanX`

`tBodyGyroJerkMeanY`

`tBodyGyroJerkMeanZ`

`tBodyGyroJerkStdX`

`tBodyGyroJerkStdY`

`tBodyGyroJerkStdZ`

`tBodyAccMagMean`

`tBodyAccMagStd`

`tGravityAccMagMean`

`tGravityAccMagStd`

`tBodyAccJerkMagMean`

`tBodyAccJerkMagStd`

`tBodyGyroMagMean`

`tBodyGyroMagStd`

`tBodyGyroJerkMagMean`

`tBodyGyroJerkMagStd`

`fBodyAccMeanX`

`fBodyAccMeanY`

`fBodyAccMeanZ`

`fBodyAccStdX`

`fBodyAccStdY`

`fBodyAccStdZ`

`fBodyAccMeanFreqX`

`fBodyAccMeanFreqY`

`fBodyAccMeanFreqZ`

`fBodyAccJerkMeanX`

`fBodyAccJerkMeanY`

`fBodyAccJerkMeanZ`

`fBodyAccJerkStdX`

`fBodyAccJerkStdY`

`fBodyAccJerkStdZ`

`fBodyAccJerkMeanFreqX`

`fBodyAccJerkMeanFreqY`

`fBodyAccJerkMeanFreqZ`

`fBodyGyroMeanX`

`fBodyGyroMeanY`

`fBodyGyroMeanZ`

`fBodyGyroStdX`

`fBodyGyroStdY`

`fBodyGyroStdZ`

`fBodyGyroMeanFreqX`

`fBodyGyroMeanFreqY`

`fBodyGyroMeanFreqZ`

`fBodyAccMagMean`

`fBodyAccMagStd`

`fBodyAccMagMeanFreq`

`fBodyBodyAccJerkMagMean`

`fBodyBodyAccJerkMagStd`

`fBodyBodyAccJerkMagMeanFreq`

`fBodyBodyGyroMagMean`

`fBodyBodyGyroMagStd`

`fBodyBodyGyroMagMeanFreq`

`fBodyBodyGyroJerkMagMean`

`fBodyBodyGyroJerkMagStd`

`fBodyBodyGyroJerkMagMeanFreq`


#### Further manipulation of variable names

The features variables have been manipulated in the folliwng way to provide full description
 
- prefix t is replaced by time
- Acc is replaced by Accelerometer
- Gyro is replaced by Gyroscope
- prefix f is replaced by frequency
- Mag is replaced by Magnitude
- BodyBody is replaced by Body

This gives an output of (printed first 10 for example)

- timeBodyAccelerometer-mean()-X
- timeBodyAccelerometer-mean()-Y
- timeBodyAccelerometer-mean()-Z
- timeBodyAccelerometer-std()-X
- timeBodyAccelerometer-std()-Y
- timeBodyAccelerometer-std()-Z
- timeGravityAccelerometer-mean()-X
- timeGravityAccelerometer-mean()-Y
- timeGravityAccelerometer-mean()-Z
- timeGravityAccelerometer-std()-X

...


