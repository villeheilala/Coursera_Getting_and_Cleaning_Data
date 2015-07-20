# Coursera Getting and Cleaning Data - Assignment

# Url path for data set
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Local file paths
localPath <- paste(getwd(), "/UCI HAR Dataset/", sep = "")
localFile <- "UCI_HAR_Dataset.zip"

if (!dir.exists(localPath)) {
  dir.create(localPath)
}
if (!file.exists(localFile)) {
  download.file(fileUrl, destfile = localFile, method = "curl")
  unzip(localFile)
}

library(plyr)

# STEP 1
# Merge the data sets to create one data set

# Read feature names
featureNames <- read.table(paste(localPath, "features.txt", sep = ""))$V2
# Create vector of column names
columnNames <- c("subject", "activity", as.character(featureNames))

# Read the X data sets
testX <- read.table(paste(localPath, "test/X_test.txt", sep = ""))
trainX <- read.table(paste(localPath, "train/X_train.txt", sep = ""))
testSubject <- read.table(paste(localPath, "test/subject_test.txt", sep = ""))$V1

# Read the y data sets
testy <- read.table(paste(localPath, "test/y_test.txt", sep = ""))$V1
trainy <- read.table(paste(localPath, "train/y_train.txt", sep = ""))$V1
trainSubject <- read.table(paste(localPath, "train/subject_train.txt", sep = ""))$V1

# Merge all test data sets and assigns column names
test <- cbind(testSubject, testy, testX)
names(test) <- columnNames

# Merge all train data sets and assign column names
train <- cbind(trainSubject, trainy, trainX)
names(train) <- columnNames

# Merge test and train data sets
complete <- rbind(test, train)

# STEP 2
# Extracts only the measurements on the mean and standard deviation for each measurement

# Keep mean and std features
keep <- grepl("(mean|std)\\(\\)", colnames(complete))
# Keep subject and activity
keep[1:2] <- TRUE

# Subset mean and std values
completeMeanStd <- complete[keep]

# Get activity names
activityNames <- read.table(paste(localPath, "activity_labels.txt", sep = ""))$V2

# STEP 3
# Use descriptive activity names to name the activities in the data set

# Change numerical values of "activity" into string factors
for (activity in activityNames) {
  completeMeanStd$activity[completeMeanStd$activity == which(activityNames == activity)] <- activity
}

# STEP 4
# Appropriately label the data set with descriptive variable names

# Assign syntactically valid names for columns
validNames <- gsub("std", "Std", gsub("mean", "Mean", gsub("[:.:]", "", make.names(colnames(completeMeanStd)))))
names(completeMeanStd) <- validNames

# STEP 5
# Create new tidy data set with the average of each variable for each subject and each activity

# Analysis using plyr package
result <- ddply(completeMeanStd, .(subject, activity), function(x) colMeans(x[, 3:dim(completeMeanStd)[2]]))

# Write results to txt file
write.table(result, paste(localPath, "result_tidy.txt", sep = ""), row.names = FALSE)
