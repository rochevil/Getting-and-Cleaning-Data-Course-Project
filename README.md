# Getting-and-Cleaning-Data-Course-Project

 This github repository is for the submission of the course project for Coursera's Data Science - Getting and Cleaning Data.
 The raw data used can be found  [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
 The goal is to prepare a tidy dataset that can be used for later analysis.
 
 The files under the repository are the following:

 1. run_analysis.R - This is an R script made in Rstudio that performs the following:
*    Merges the training and the test sets to create one data set.
*    Extracts only the measurements on the mean and standard deviation for each measurement.
*    Uses descriptive activity names to name the activities in the data set
*    Appropriately labels the data set with descriptive variable names.
*    Creates an independent tidy data set with the average of each variable for each activity and each subject.

 2. Codebook.md - A code book describing the variables, data, and transformations performed to clean up the data.

 3. final_dataset.txt - This is the tidy dataset produced after running the R script run_analysis.R
