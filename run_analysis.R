# This is the script to take the raw data files and process them into a tidy
# data set according to the course project instructions.

# check to see if data files in working directory, and if not download them

if (!file.exists("UCI HAR Dataset")) {
        fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        zippedfile <- download.file(fileurl, destfile = "zippedfile.zip")
        unzip("zippedfile.zip")
}

# read data files needed from directory

features <- read.table("./UCI HAR Dataset/features.txt",sep = " ",header=FALSE)
actlabels <- read.table("./UCI HAR Dataset/activity_labels.txt",sep = " ",header=FALSE)
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt", sep = " ", header=FALSE)
subjtest <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep = " ", header=FALSE)
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", sep = " ", header=FALSE)
subjtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = " ", header=FALSE)
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")

# Requirement 1 for course project: merge training and test datasets into one
# dataframe

        # combine training and test sets and then add feature labels
        
        combined <- rbind(xtrain,xtest)
        colnames(combined) <- features$V2

# Requirement 2: subset to keep only measurements with mean and standard
# deviation

        # interpreted as variable with "mean" or "std" DID NOT include
        # additional vectors that averaged signals in a signal window sample,
        # stored as six angle() variables. Reason for not including: these
        # variables appear to not be means or standard deviations of
        # measurements.

        meannames <- grep("mean",names(combined))
        stdnames <- grep("std",names(combined))
        subsetnames <- c(meannames,stdnames)
        combined <- combined[,subsetnames]

# Requirement 3: replace activity code with labels by converting activity column
# to factor and format labels nicely

        # add columns to identify subjects and activities
        subject <- rbind(subjtrain,subjtest)
        colnames(subject) = "subject"
        activity <- rbind(ytrain,ytest)
        colnames(activity) = "activity"
        combined <- cbind(combined,subject,activity)
        
        # label activities with lower case formatting without underscores
        actlabels$V2 <- gsub("_","",actlabels$V2)
        actlabels$V2 <- tolower(actlabels$V2)        
        combined$activity <- factor(combined$activity,
                                    levels = actlabels$V1,
                                    labels = actlabels$V2)

# Requirement 4: appropriately label dataset with descriptive variable names

        # change labels to all lowercase words without spaces or symbols,
        # following direction of lectures
        
        names(combined) <- tolower(names(combined))
        names(combined) <- gsub("-","",names(combined))
        names(combined) <- gsub("()","",names(combined),fixed=TRUE)
        names(combined) <- gsub("^t","time",names(combined))
        names(combined) <- gsub("^f","frequency",names(combined))
        names(combined) <- gsub("acc","acceleration",names(combined))
        names(combined) <- gsub("mag","magnitude",names(combined))
        names(combined) <- gsub("bodybody","body",names(combined))

# Requirement 5: create a second, independent tidy data set with the average of
# each variable for each activity and each subject

        # reshape data: melt data frame
        library(reshape2)
        combmelt <- melt(combined,id=c("subject","activity"))
        tidydata <- dcast(combmelt, subject+activity ~ variable, mean)
        
        # write data to txt file, space delimited, no row names
        write.table(tidydata, file= "tidydata.txt",row.names=FALSE)