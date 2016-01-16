# About
The script [run_analysis.R](./run_analysis.R) generates a tidy data set according to the requirements of *Getting and Cleaning Data Course Project*.

## Dependencies
The script depends on R pacage 'dplyr', which will be installed automatically when it does not exist on your environment.

## Input
You need to manually download the [source file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), unzip it to your work directory. The input data directory structure is like 
- $R_WORK_DIR/UCI HAR Dataset/
- $R_WORK_DIR/UCI HAR Dataset/test
- $R_WORK_DIR/UCI HAR Dataset/train

Only the following files under input data directory will be taken into account. All others will be ingored.
- test/subject_test.txt
- test/X_test.txt
- test/y_test.txt
- train/subject_train.txt
- train/X_train.txt
- train/y_train.txt
- features.txt
- activity_labels.txt

## Output
The output is a data set file called "average_by_activity_subject.txt" under your work directory. 
The file can be read into a dataframe with the following code.
```r
read.table("average_by_activity_subject.txt", header = TRUE)
```

Please read the [Code Book](./CodeBook.md) for more information about the output.