##This section downloads and unzips the file if it has not yet been downloaded.

datafileszip <- "run_analysis_files.zip"
datafilespath <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
datafiles <- "UCI HAR Dataset"

if (!file.exists(datafileszip))
{
        download.file(datafilespath, datafileszip)
}

if (!file.exists(datafiles))
{
        unzip(datafileszip)
}

##This section reads and binds the datasets inside the test and train folders.
##After reading and binding the individual columns, they are binded into a single dataset
##called compiled_activities.

Subjects_test <- read.table(file.path(datafiles, "test", "subject_test.txt"))
Activity_test <- read.table(file.path(datafiles, "test", "y_test.txt"))
Data_test <- read.table(file.path(datafiles, "test", "X_test.txt"))
compiled_test <- cbind (Subjects_test, Activity_test, Data_test)

Subjects_train <- read.table(file.path(datafiles, "train", "subject_train.txt"))
Activity_train <- read.table(file.path(datafiles, "train", "y_train.txt"))
Data_train <- read.table(file.path(datafiles, "train", "X_train.txt"))
compiled_train <- cbind (Subjects_train, Activity_train, Data_train)

compiled_activities <- rbind (compiled_train, compiled_test)

##This section gets the desired columns, those containing mean and std in the column names.
##The data frame compiled activities is then reshaped to only display those with the desired columns

features_list <- read.table(file.path(datafiles, "features.txt"), as.is=TRUE)
colnames(compiled_activities) <- c("Subject", "Activity", features_list[,2])
desired_columns <- grep("Subject|Activity|mean|std", colnames(compiled_activities))
compiled_activities <- compiled_activities[,desired_columns]

##This section replaces the activity number (1,2,3,4,5,6) to the proper activity name
##namely WALKING, WALKING_UPSTAIR, WALKING_DOWNSTAIR, SITTING, STANDING, LAYING.
##It also removes the underscore and replace it with a space.

activity_names <- read.table(file.path(datafiles, "activity_labels.txt"))
compiled_activities$Activity <- factor(compiled_activities$Activity, labels = activity_names[,2])
compiled_activities$Activity <- gsub("_"," ",compiled_activities$Activity)

##This section cleans the feature names so as to give it a more descriptive
##and easily understandable name.

Activity_Columns <- colnames(compiled_activities)
Activity_Columns <- gsub ("-mean","(Mean)", Activity_Columns,fixed=TRUE)
Activity_Columns <- gsub ("-std","(StdDev)", Activity_Columns,fixed=TRUE)
Activity_Columns <- gsub ("()","", Activity_Columns,fixed=TRUE)
Activity_Columns <- gsub ("BodyBody","Body", Activity_Columns)
colnames(compiled_activities) <- Activity_Columns

##This section computes the average of all columns base on different levels of Subject and Activity.
##The dataset is then written to a text file "tidydataset.txt"

final_dataset <- aggregate(. ~ Activity + Subject, compiled_activities, FUN=mean)
final_dataset <- final_dataset[,c(2,1,3:ncol(final_dataset))]
write.table(final_dataset, "tidydataset.txt", row.names = FALSE, quote = FALSE)
