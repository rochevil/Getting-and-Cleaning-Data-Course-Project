# Study Design
The raw dataset "Human Activity Recognition Using Smartphones Data Set"
is downloaded from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### The dataset includes the following files:
=========================================

* 'README.txt'

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

*source: README.txt of UCI HAR Dataset*

# Output data column names
* Subject - ID number of the subject (1-30)
* Activity - Subject's activity that was measured (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)
* tBodyAcc(Mean)-X
* tBodyAcc(Mean)-Y
* tBodyAcc(Mean)-Z
* tBodyAcc(StdDev)-X
* tBodyAcc(StdDev)-Y
* tBodyAcc(StdDev)-Z
* tGravityAcc(Mean)-X
* tGravityAcc(Mean)-Y
* tGravityAcc(Mean)-Z
* tGravityAcc(StdDev)-X     
* tGravityAcc(StdDev)-Y
* tGravityAcc(StdDev)-Z
* tBodyAccJerk(Mean)-X
* tBodyAccJerk(Mean)-Y      
* tBodyAccJerk(Mean)-Z
* tBodyAccJerk(StdDev)-X
* tBodyAccJerk(StdDev)-Y
* tBodyAccJerk(StdDev)-Z    
* tBodyGyro(Mean)-X
* tBodyGyro(Mean)-Y
* tBodyGyro(Mean)-Z
* tBodyGyro(StdDev)-X
* tBodyGyro(StdDev)-Y
* tBodyGyro(StdDev)-Z        
* tBodyGyroJerk(Mean)-X
* tBodyGyroJerk(Mean)-Y
* tBodyGyroJerk(Mean)-Z
* tBodyGyroJerk(StdDev)-X
* tBodyGyroJerk(StdDev)-Y
* tBodyGyroJerk(StdDev)-Z   
* tBodyAccMag(Mean)
* tBodyAccMag(StdDev)
* tGravityAccMag(Mean)
* tGravityAccMag(StdDev)    
* tBodyAccJerkMag(Mean)
* tBodyAccJerkMag(StdDev)
* tBodyGyroMag(Mean)
* tBodyGyroMag(StdDev)
* tBodyGyroJerkMag(Mean)
* tBodyGyroJerkMag(StdDev)
* fBodyAcc(Mean)-X
* fBodyAcc(Mean)-Y
* fBodyAcc(Mean)-Z
* fBodyAcc(StdDev)-X
* fBodyAcc(StdDev)-Y
* fBodyAcc(StdDev)-Z
* fBodyAcc(Mean)Freq-X
* fBodyAcc(Mean)Freq-Y
* fBodyAcc(Mean)Freq-Z
* fBodyAccJerk(Mean)-X
* fBodyAccJerk(Mean)-Y
* fBodyAccJerk(Mean)-Z
* fBodyAccJerk(StdDev)-X
* fBodyAccJerk(StdDev)-Y
* fBodyAccJerk(StdDev)-Z
* fBodyAccJerk(Mean)Freq-X
* fBodyAccJerk(Mean)Freq-Y
* fBodyAccJerk(Mean)Freq-Z
* fBodyGyro(Mean)-X
* fBodyGyro(Mean)-Y
* fBodyGyro(Mean)-Z
* fBodyGyro(StdDev)-X
* fBodyGyro(StdDev)-Y
* fBodyGyro(StdDev)-Z
* fBodyGyro(Mean)Freq-X
* fBodyGyro(Mean)Freq-Y
* fBodyGyro(Mean)Freq-Z
* fBodyAccMag(Mean)
* fBodyAccMag(StdDev)
* fBodyAccMag(Mean)Freq
* fBodyAccJerkMag(Mean)
* fBodyAccJerkMag(StdDev)
* fBodyAccJerkMag(Mean)Freq
* fBodyGyroMag(Mean)
* fBodyGyroMag(StdDev)
* fBodyGyroMag(Mean)Freq
* fBodyGyroJerkMag(Mean)
* fBodyGyroJerkMag(StdDev)
* fBodyGyroJerkMag(Mean)Freq

# CodeBook
* datafilespath - the download link for the UCI HAR Dataset.
* datafileszip - the chosen file name for the downloaded ZIP file.
* datafiles - the directory name for the downloaded data files after extraction.
* compiled_test - data frame that stores the column-binded datasets under test.
* compiled_train - data frame that stores the column-binded datasets under train.
* compiled_activities - data frame that stores the combined rows of compiled_test and compiled_train. This is further narrowed down
to display only those that have the mean and standard deviation measurements.
* final_dataset - the output dataset which contains the average of all columns base on different levels of Subject and Activity.

# Instruction List
* Downloads and unzips the file if it has not yet been downloaded
* Reads and binds the datasets inside the test and train folders.
After reading and binding the individual columns, they are binded into a single dataset.
* Gets the desired columns, those containing mean and std in the column names.
The data frame compiled activities is then reshaped to only display those with the desired columns
* Replaces the activity number (1,2,3,4,5,6) to the proper activity name
namely WALKING, WALKING_UPSTAIR, WALKING_DOWNSTAIR, SITTING, STANDING, LAYING.
* Cleans the feature names so as to give it a more descriptive and easily understandable name.
* Computes the average of all columns base on different levels of Subject and Activity.
The dataset is then written to a text file "tidydataset.txt"
