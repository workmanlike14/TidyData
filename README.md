TidyData
========

Guide to contents of repository 

This repository has two files for the Course Project for "Getting and Cleaning Data":

## 1.  "run_analysis.R"  
  
This R script takes the raw data files and processes them into a tidy data set according to the course project instructions.

The script completes the following tasks:
* checks to see if files are in working directory, and if not downloads a zip file and unzips them into the working directory.  (The files can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip .)
* reads the data files into R.
* merges the training and test datasets into one dataframe with variable (feature) labels.
* subsets to keep only measurements with mean and standard deviation.  (NOTE: This is interpreted as variables with "mean" or "std" and DID NOT include additional vectors that averaged signals in a signal window sample, stored as six angle() variables. Reason for not including: these variables appear to not be means or standard deviations of measurements.)
* replaces the activity code with tidy names by converting to a factor variable and using lower case formatting without underscores for activity names.
* appropriately labels the dataset with descriptive variables names (all lowercase words without spaces or symbols).
* creates a second, independent tidy data set with the average of each variable for each activity and each subject.  This data set is a text file, space delimited, with no row names. (The file can be read into R using read.table, setting header as "TRUE".)

## 2.  "Codebook.MD" 

The markdown file details the variables included in the dataset (names, values and units, definitions), and describes the transformations to the data.
