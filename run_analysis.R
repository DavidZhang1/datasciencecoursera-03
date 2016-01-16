# Load packages, install if missing
if (!require("pacman")) install.packages("pacman")
pacman::p_load(dplyr)

output_file_name <- "average_by_activity_subject.txt"
data_path <- "UCI HAR Dataset"
data_test_path <- file.path(data_path, "test")
data_train_path <- file.path(data_path, "train")
read.tbl <- function(...) tbl_df(read.table(file.path(...)))

# Load all datasets
features <- read.tbl(data_path, "features.txt") 
activity_labels <- read.tbl(data_path, "activity_labels.txt")
test_data <- read.tbl(data_test_path, "X_test.txt")
test_label_ids <- read.tbl(data_test_path, "y_test.txt")
test_subjects <- read.tbl(data_test_path, "subject_test.txt")
train_data <- read.tbl(data_train_path, "X_train.txt")
train_label_ids <- read.tbl(data_train_path, "y_train.txt")
train_subjects <- read.tbl(data_train_path, "subject_train.txt")

# STEP 1: Merges the training and the test sets to create one data set.
data_all <- rbind_list(test_data, train_data)
label_ids <- rbind_list(test_label_ids, train_label_ids) %>%
        rename_(activity_id = "V1")
col_subject <- rbind_list(test_subjects, train_subjects) %>%
        rename_(Subject = "V1")

# STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.
features <- features %>% rename_(feature_name = "V2")
colnames(data_all) <- make.names(as.character(features$feature_name), unique = TRUE)
data_sub <- data_all %>% select(contains(".mean."), contains(".std."))

# STEP 3: Uses descriptive activity names to name the activities in the data set
activity_labels <- activity_labels %>%
        rename_(activity_id = "V1", Activity = "V2") %>%
        mutate(Activity = as.factor(gsub("_?([A-Z])([A-Z]+)", "\\U\\1\\L\\2", .$Activity, perl = TRUE)))
col_activity <- label_ids %>% 
        inner_join(activity_labels) %>%
        select(Activity)

# STEP 4: Appropriately labels the data set with descriptive variable names.
data_sub_names <- colnames(data_sub)
data_sub_names <- gsub("[.][.]", "", data_sub_names, perl = TRUE)
data_sub_names <- gsub("^[t]", "Time", data_sub_names, perl = TRUE)
data_sub_names <- gsub("^[f]", "FFT", data_sub_names, perl = TRUE)
data_sub_names <- gsub("Acc", "Accelerometer", data_sub_names, perl  =TRUE)
data_sub_names <- gsub("Mag", "Magnitude", data_sub_names, perl = TRUE)
data_sub_names <- gsub("Gyro", "Gyroscope", data_sub_names, perl = TRUE)
data_sub_names <- gsub("BodyBody", "Body", data_sub_names, perl = TRUE)
data_sub_names <- gsub("(\\w*?)\\.(mean)(\\w*?)", "Mean\\E\\1\\E\\3", data_sub_names, perl = TRUE)
data_sub_names <- gsub("(\\w*?)\\.(std)(\\w*?)", "StandardDeviation\\E\\1\\E\\3", data_sub_names, perl = TRUE)
data_sub_names <- gsub("(\\w*?)\\.([XYZ])$", "\\E\\1\\U\\2Axis", data_sub_names, perl=TRUE)
colnames(data_sub) <- data_sub_names

tidy_df <- tbl_df(data.frame(col_subject, col_activity, data_sub))

# STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
average_by_activity_subject <- tidy_df %>%
        group_by(Activity, Subject) %>%
        summarise_each(funs(mean))

## write the tidy data set to a file for project submission
write.table(average_by_activity_subject, 
            output_file_name, 
            row.names = FALSE)