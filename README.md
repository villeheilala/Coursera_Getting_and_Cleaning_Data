# Coursera Getting and Cleaning Data
## Course Project
### Problem

> ...
>
> You should create one R script called run_analysis.R that does the following. 
>
> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names. 
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for 
> each activity and each subject.

### Solution

1. The script checks first if the data is in the workind directory. If it isn't, the script will download it and extract the zip file.
2. In the first step the script reads all feature variable names from the features.txt and then creates a vector of column names for the whole data set.
3. The script reads test, train and subject data from the .txt files using read.table function.
4. After the data is imported, the script merges test and train data sets separately with column bind (cbind) function.
5. Both data sets are then merged together by rows with rbind function. The data set now contains information of the subject, activity and all feature variable data from test and train groups.
6. Second step extracts only the mean and standard deviation variables using grepl function. Variables are identified by strings mean() and std() in their names. A subset is made with selected variables.
7. In the original data activity data is presented in numerical values. Those values are converted into more understandable form. In step three the activity categories are extracted from the activity_labels.txt. Using for loop, all numerical activity values are converted into a descriptive string factors.
8. In step four the feature variable names are made syntactically valid by getting rid of extra characters. This is done by using gsub and make.names functions.
9. In the last step five, analysis is made with the tidy data set using plyr package. New data frame is made with ddply function. For each subset of a data frame, ddply function applys a function and then combines results into a data frame.
10. At last, new data frame is writen in a file result_tidy.txt

### Results

The result file can be obtained by running the script.
