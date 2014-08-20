Study Design Details
====================

### Data source

This dataset summarizes a subset of measurements from experiments conducted by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto.  Thirty subjects performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying), and using a Samsung Galaxy S II smartphone on the waist with its accelerometer and gyroscope to capture measurements of 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  The researchers' "README.txt" and "features_info.txt" should be consulted for a detailed description of the measurements and features.

### Data file description

The data file "tidydata.txt" produced by the R script "run_analysis.R", merges the training and test data sets, takes the subset of 79 variables that capture the mean or standard deviation of each measurement and then calculates the mean for each subject/activity pairing, producing 180 rows of data (30 subjects * 6 activities = 180 mean values for each variables).  The first two columns indicate the subject and activity, creating 81 columns (those two columns + the 79 calculated means).

In addition, variable names and the labels for the activity variable were renamed to lowercase and descriptive names to enhance clarity.

The next section provides specific details on variables included.

Codebook
========

### Format:
Variable
* Variable Definition
* Range of Values

### Variables in "tidydata.txt"
Subject
* Study subject (person)
* 1 to 30

activity
* which of six activities performed by subject
* 1 walking 2 walkingupstairs 3 walkingdownstairs 4 sitting 5 standing 6 laying
 
timebodyaccelerationmeanx	
* the mean time domain signal of body acceleration for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

timebodyaccelerationmeany
* the mean time domain signal of body acceleration for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

timebodyaccelerationmeanz
* the mean time domain signal of body acceleration for z axis, averaged for each subject and activity
* -1 to 1 (from normalized measurements)

timegravityaccelerationmeanx	
* the mean time domain signal of gravity acceleration signal for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

timegravityaccelerationmeany
* the mean time domain signal of gravity acceleration signal for y axis, averaged for each subject and activity
* -1 to 1 (from normalized measurements)

timegravityaccelerationmeanz
* the mean time domain signal of gravity acceleration signal for z axis, averaged for each subject and activity	
* 1 to 1 (from normalized measurements)

timebodyaccelerationjerkmeanx
* the mean time domain signal of body acceleration jerk for x axis, averaged for each subject and activity
* -1 to 1 (from normalized measurements)

timebodyaccelerationjerkmeany
* the mean time domain signal of body acceleration jerk for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

timebodyaccelerationjerkmeanz
* the mean time domain signal of body acceleration jerk for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

timebodygyromeanx
* the mean time domain signal of body gyro for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyromeany
* the mean time domain signal of body gyro for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyromeanz	
* the mean time domain signal of body gyro for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

timebodygyrojerkmeanx
* the mean time domain signal of body gyro jerk for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyrojerkmeany
* the mean time domain signal of body gyro jerk for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyrojerkmeanz
* the mean time domain signal of body gyro jerk for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationmagnitudemean
* the mean magnitude of the time domain signals of body acceleration, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timegravityaccelerationmagnitudemean
* the mean magnitude of the time domain signals of gravity acceleration, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationjerkmagnitudemean
* the mean magnitude of time domain signals of body acceleration jerk, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyromagnitudemean
* the mean magnitude of time domain signals of body gyro, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyrojerkmagnitudemean
* the mean magnitude of time domain signals of body gyro jerk, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationmeanx
* the mean frequency domain signal of body acceleration for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

frequencybodyaccelerationmeany
* the mean frequency domain signal of body acceleration for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

frequencybodyaccelerationmeanz	
* the mean frequency domain signal of body acceleration for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationmeanfreqx
* weighted average of frequency domain signals of body acceleration for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationmeanfreqy
* weighted average of frequency domain signals of body acceleration for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationmeanfreqz
* weighted average of frequency domain signals of body acceleration for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationjerkmeanx
* the mean frequency domain signal of body acceleration jerk for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationjerkmeany
* the mean frequency domain signal of body acceleration jerk for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

frequencybodyaccelerationjerkmeanz	
* the mean frequency domain signal of body acceleration jerk for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

frequencybodyaccelerationjerkmeanfreqx	
* weighted average of frequency domain signals of body acceleration jerk for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

frequencybodyaccelerationjerkmeanfreqy	
* weighted average of frequency domain signals of body acceleration jerk for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

frequencybodyaccelerationjerkmeanfreqz	
* weighted average of frequency domain signals of body acceleration jerk for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)

frequencybodygyromeanx	
* the mean frequency domain signal of body gyro for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyromeany	
* the mean frequency domain signal of body gyro for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyromeanz	
* the mean frequency domain signal of body gyro for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyromeanfreqx	
* weighted average of frequency domain signals of body gyro for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyromeanfreqy	
* weighted average of frequency domain signals of body gyro for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyromeanfreqz	
* weighted average of frequency domain signals of body gyro for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationmagnitudemean	
* the mean frequency domain signal of magnitude of body acceleration, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationmagnitudemeanfreq	
* weighted average of frequency domain signals of magnitude of body acceleration, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationjerkmagnitudemean	
* the mean frequency domain signal of magnitude of body acceleration jerk, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationjerkmagnitudemeanfreq	
* weighted average of frequency domain signals of magnitude of body acceleration jerk, averaged for each subject and activity
* -1 to 1 (from normalized measurements)
 
frequencybodygyromagnitudemean	
* the mean frequency domain signal of magnitude of body gyro, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyromagnitudemeanfreq	
* weighted average of frequency domain signals of magnitude of body gyro, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyrojerkmagnitudemean	
* the mean frequency domain signal of magnitude of body gyro jerk, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyrojerkmagnitudemeanfreq	
* weighted average of frequency domain signals of magnitude of body gyro jerk, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationstdx	
* the standard deviation of the time domain signal of body acceleration for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationstdy	
* the standard deviation of the time domain signal of body acceleration for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationstdz	
* the standard deviation of the time domain signal of body acceleration for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timegravityaccelerationstdx	
* the standard deviation of the time domain signal of gravity acceleration signal for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timegravityaccelerationstdy	
* the standard deviation of the time domain signal of gravity acceleration signal for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timegravityaccelerationstdz	
* the standard deviation of the time domain signal of gravity acceleration signal for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationjerkstdx	
* the standard deviation of the time domain signal of body acceleration jerk for x axis, averaged for each subject and activity
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationjerkstdy	
* the standard deviation of the time domain signal of body acceleration jerk for y axis, averaged for each subject and activity
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationjerkstdz	
* the standard deviation of the time domain signal of body acceleration jerk for z axis, averaged for each subject and activity
* -1 to 1 (from normalized measurements)
 
timebodygyrostdx	
* the standard deviation of the time domain signal of body gyro for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyrostdy	
* the standard deviation of the time domain signal of body gyro for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyrostdz	
* the standard deviation of the time domain signal of body gyro for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyrojerkstdx	
* the standard deviation of the time domain signal of body gyro jerk for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyrojerkstdy
* the standard deviation of the time domain signal of body gyro jerk for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyrojerkstdz	
* the standard deviation of the time domain signal of body gyro jerk for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationmagnitudestd	
* the standard deviation of the magnitude of the time domain signals of body acceleration, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timegravityaccelerationmagnitudestd	
* the standard deviation of the magnitude of the time domain signals of gravity acceleration, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodyaccelerationjerkmagnitudestd	
* the standard deviation of the magnitude of time domain signals of body acceleration jerk, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyromagnitudestd	
* the standard deviation of the magnitude of time domain signals of body gyro, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
timebodygyrojerkmagnitudestd	
* the standard deviation of the magnitude of time domain signals of body gyro jerk, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationstdx	
* the standard deviation of the frequency domain signal of body acceleration for x axis, averaged for each subject and activity
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationstdy	
* the standard deviation of the frequency domain signal of body acceleration for y axis, averaged for each subject and activity
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationstdz	
* the standard deviation of the frequency domain signal of body acceleration for z axis, averaged for each subject and activity
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationjerkstdx	
* the standard deviation of the frequency domain signal of body acceleration jerk for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationjerkstdy	
* the standard deviation of the frequency domain signal of body acceleration jerk for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationjerkstdz	
* the standard deviation of the frequency domain signal of body acceleration jerk for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyrostdx	
* the standard deviation of the frequency domain signal of body gyro for x axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyrostdy	
* the standard deviation of the frequency domain signal of body gyro for y axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyrostdz	
* the standard deviation of the frequency domain signal of body gyro for z axis, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationmagnitudestd	
* the standard deviation of the frequency domain signal of magnitude of body acceleration, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodyaccelerationjerkmagnitudestd	
* the standard deviation of the frequency domain signal of magnitude of body acceleration jerk, averaged for each subject and activity	
* -1 to 1 (from normalized measurements)
 
frequencybodygyromagnitudestd
* the standard deviation of the frequency domain signal of magnitude of body gyro, averaged for each subject and activity
* -1 to 1 (from normalized measurements)
 
frequencybodygyrojerkmagnitudestd
* the standard deviation of the frequency domain signal of magnitude of body gyro jerk, averaged for each subject and activity
* -1 to 1 (from normalized measurements)
