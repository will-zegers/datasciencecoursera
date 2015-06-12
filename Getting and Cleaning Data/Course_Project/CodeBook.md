#Human Activity Recognition Using Smartphones

<p>The following is taken from the original README from the UCI data set:</p>

> <p>==================================================================
 
> Human Activity Recognition Using Smartphones Dataset
 
> Version 1.0
 
> ==================================================================
 
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
 
> Smartlab - Non Linear Complex Systems Laboratory
 
> DITEN - Università degli Studi di Genova.
 
> Via Opera Pia 11A, I-16145, Genoa, Italy.
 
> activityrecognition@smartlab.ws
 
> www.smartlab.ws
 
> ==================================================================
 
 
 
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

 
 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
 
 
 
> For each record it is provided:
 
> ======================================
 
 
 
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
 
> - Triaxial Angular velocity from the gyroscope. 
 
> - A 561-feature vector with time and frequency domain variables. 
 
> - Its activity label. 
 
> - An identifier of the subject who carried out the experiment.</p>

<p>The variables contained in this data set are the calculated average mean and standard deviations on Subject-Activity pairs, consisting of 128 observation each. Note this does not include meanFreq measurements seen in frequency domain variables, as these were interpreted to be separate measurements. Furthermore, only variables consisting of *measurements* were considered relevant to this data set and not variables representing means as a result of calculations on these variables (e.g., gravityMean, tBodyAccMean).</p>

##Code Book


###Subject
    Subject ID number
    1..6

###Activity
    Activity type for measurement observations
    .LAYING
    .SITTING
    .STANDING
    .WALKING
    .WALKING_DOWNSTAIRS
    .WALKING_UPSTAIRS

###tBodyAcc.mean...X
    Average x-component of linear acceleration of the body(subject), measured by the accelerometer
    Time domain
    -1..1

###tBodyAcc.mean...Y
    Average y-component of linear acceleration of the body(subject), measured by the accelerometer
    Time domain
    -1..1

###tBodyAcc.mean...Z
    Average z-component of linear acceleration of the body(subject), measured by the accelerometer
    Time domain
    -1..1

###tBodyAcc.std...X
    X-component standard deviation of linear acceleration of the body(subject), measured by the accelerometer
    Time domain
    -1..1

###tBodyAcc.std...Y
    Y-component standard deviation of linear acceleration of the body(subject), measured by the accelerometer
    Time domain
    -1..1

###tBodyAcc.std...Z
    Z-component standard deviation of linear acceleration of the body(subject), measured by the accelerometer
    Time domain
    -1..1

###tGravityAcc.mean...X
    Average x-component of linear acceleration due to gravitational force, measured by the accelerometer
    Time domain
    -1..1

###tGravityAcc.mean...Y
    Average y-component of linear acceleration due to gravitational force, measured by the accelerometer
    Time domain
    -1..1

###tGravityAcc.mean...Z
    Average z-component of linear acceleration due to gravitational force, measured by the accelerometer
    Time domain
    -1..1

###tGravityAcc.std...X
    X-component standard deviation of linear acceleration due to gravitational force, measured by the accelerometer
    Time domain
    -1..1

###tGravityAcc.std...Y
    Y-component standard deviation of linear acceleration due to gravitational force, measured by the accelerometer
    Time domain
    -1..1

###tGravityAcc.std...Z
    Z-component standard deviation of linear acceleration due to gravitational force, measured by the accelerometer
    Time domain
    -1..1

###tBodyAccJerk.mean...X
    Calculated average x-componenet of body jerk (rate of change of linear acceleration)
    Time domain
    -1..1

###tBodyAccJerk.mean...Y
    Calculated average y-componenet of body jerk (rate of change of linear acceleration)
    Time domain
    -1..1

###tBodyAccJerk.mean...Z
    Calculated average z-componenet of body jerk (rate of change of linear acceleration)
    Time domain
    -1..1

###tBodyAccJerk.std...X
    X-componenet standard deviation of body jerk (rate of change of linear acceleration)
    Time domain
    -1..1

###tBodyAccJerk.std...Y
    Y-componenet standard deviation of body jerk (rate of change of linear acceleration)
    Time domain
    -1..1

###tBodyAccJerk.std...Z
    Z-componenet standard deviation of body jerk (rate of change of linear acceleration)
    Time domain
    -1..1

###tBodyGyro.mean...X
    Average x-component of angular acceleration of the body(subject), measured by the gyroscope)
    Time domain
    -1..1

###tBodyGyro.mean...Y
    Average y-component of angular acceleration of the body(subject), measured by the gyroscope)
    Time domain
    -1..1

###tBodyGyro.mean...Z
    Average z-component of angular acceleration of the body(subject), measured by the gyroscope)
    Time domain
    -1..1

###tBodyGyro.std...X
    X-component standard deviation of angular velocity of the body(subject), measured by the gyroscope
    Time domain
    -1..1

###tBodyGyro.std...Y
    X-component standard deviation of angular velocity of the body(subject), measured by the gyroscope
    Time domain
    -1..1

###tBodyGyro.std...Z
    X-component standard deviation of angular velocity of the body(subject), measured by the gyroscope
    Time domain
    -1..1

###tBodyGyroJerk.mean...X
    Calculated average x-componenet of body jerk (rate of change of angular acceleration)
    Time domain
    -1..1

###tBodyGyroJerk.mean...Y
    Calculated average x-componenet of body jerk (rate of change of angular acceleration)
    Time domain
    -1..1

###tBodyGyroJerk.mean...Z
    Calculated average x-componenet of body jerk (rate of change of angular acceleration)
    Time domain
    -1..1

###tBodyGyroJerk.std...X
    X-componenet standard deviation of body jerk (rate of change of angular velocity)
    Time domain
    -1..1

###tBodyGyroJerk.std...Y
    X-componenet standard deviation of body jerk (rate of change of angular velocity)
    Time domain
    -1..1

###tBodyGyroJerk.std...Z
    X-componenet standard deviation of body jerk (rate of change of angular velocity)
    Time domain
    -1..1

###tBodyAccMag.mean..
    Calculated average Euclidean magnitude of body linear acceleration
    Time domain
    -1...1

###tBodyAccMag.std..
    Calculated Euclidean magnitude standard deviation of body linear acceleration
    Time domain
    -1...1

###tGravityAccMag.mean..
    Calculated average Euclidean magnitude of gravitational linear acceleration
    Time domain
    -1...1

###tGravityAccMag.std..
    Calculated Euclidean magnitude standard deviation of gravitational linear acceleration
    Time domain
    -1...1

###tBodyAccJerkMag.mean..
    Calculated average Euclidean magnitude of body jerk (rate of linear acceleration change)
    Time domain
    -1...1

###tBodyAccJerkMag.std..
    Calculated Euclidean magnitude standard deviation of body jerk (rate of linear acceleration change)
    Time domain
    -1...1

###tBodyGyroMag.mean..
    Calculated average Euclidean magnitude of body angular acceleration
    Time domain
    -1...1

###tBodyGyroMag.std..
    Calculated Euclidean magnitude standard deviation of body angular acceleration
    Time domain
    -1...1

###tBodyGyroJerkMag.mean..
    Calculated average Euclidean magnitude of body jerk (rate of angular velocity change)
    Time domain
    -1...1

###tBodyGyroJerkMag.std..
    Calculated Euclidean magnitude standard deviation of body jerk (rate of angular velocity change)
    Time domain
    -1...1

###fBodyAcc.mean...X
    Average z-component of linear acceleration of the body(subject), measured by the accelerometer
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAcc.mean...Y
    Average y-component of linear acceleration of the body(subject), measured by the accelerometer
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAcc.mean...Z
    Average z-component of linear acceleration of the body(subject), measured by the accelerometer
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAcc.std...X
    X-component standard deviation of linear acceleration of the body(subject), measured by the accelerometer
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAcc.std...Y
    Y-component standard deviation of linear acceleration of the body(subject), measured by the accelerometer
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAcc.std...Z
    Z-component standard deviation of linear acceleration of the body(subject), measured by the accelerometer
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAccJerk.mean...X
    Calculated average x-componenet of body jerk (rate of change of linear acceleration)
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAccJerk.mean...Y
    Calculated average y-componenet of body jerk (rate of change of linear acceleration)
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAccJerk.mean...Z
    Calculated average z-componenet of body jerk (rate of change of linear acceleration)
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAccJerk.std...X
    X-componenet standard deviation of body jerk (rate of change of linear acceleration)
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAccJerk.std...Y
    Y-componenet standard deviation of body jerk (rate of change of linear acceleration)
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAccJerk.std...Z
    Z-componenet standard deviation of body jerk (rate of change of linear acceleration)
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyGyro.mean...X
    Average x-component of angular acceleration of the body(subject), measured by the gyroscope)
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyGyro.mean...Y
    Average y-component of angular acceleration of the body(subject), measured by the gyroscope)
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyGyro.mean...Z
    Average z-component of angular acceleration of the body(subject), measured by the gyroscope)
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyGyro.std...X
    X-component standard deviation of angular velocity of the body(subject), measured by the gyroscope
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyGyro.std...Y
    X-component standard deviation of angular velocity of the body(subject), measured by the gyroscope
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyGyro.std...Z
    X-component standard deviation of angular velocity of the body(subject), measured by the gyroscope
    Frequency domain (obtained using FFT on time data)
    -1..1

###fBodyAccMag.mean..
    Calculated average Euclidean magnitude of body linear acceleration
    Frequency domain (obtained using FFT on time data)
    -1...1

###fBodyAccMag.std..
    Calculated Euclidean magnitude standard deviation of body linear acceleration
    Frequency domain (obtained using FFT on time data)
    -1...1

###fBodyBodyAccJerkMag.mean..
    Calculated Euclidean magnitude standard deviation of body linear acceleration
    Frequency domain (obtained using FFT on time data)
    -1...1

###fBodyBodyAccJerkMag.std..
    Calculated Euclidean magnitude standard deviation of body jerk (rate of linear acceleration change)
    Frequency domain (obtained using FFT on time data)
    -1...1

###fBodyBodyGyroMag.mean..
    Calculated average Euclidean magnitude of body angular acceleration
    Frequency domain (obtained using FFT on time data)
    -1...1

###fBodyBodyGyroMag.std..
    Calculated Euclidean magnitude standard deviation of body angular acceleration
    Frequency domain (obtained using FFT on time data)
    -1...1

###fBodyBodyGyroJerkMag.mean..
    Calculated average Euclidean magnitude of body jerk (rate of angular velocity change)
    Frequency domain (obtained using FFT on time data)
    -1...1

###fBodyBodyGyroJerkMag.std..
    Calculated Euclidean magnitude standard deviation of body jerk (rate of angular velocity change)
    Frequency domain (obtained using FFT on time data)
    -1...1
