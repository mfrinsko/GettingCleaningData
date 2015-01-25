This repository is used to store files for the Coursera Getting and Cleaning Data course project, taken in January 2015.  This README file explains the various files contained in this repository, and information about the output generated for the project.

##Getting and Cleaning Data Course Project Details
The goal of this project is to give students practice in obtaining a real-world data set, and performing various steps to create tidy data sets from the original data.  The data set used for this project is a set of files with wearable computing data made available through the University of California-Irvine's Machine Learning Repository.  

The required output for this project is as follows:

1. A README.md file to explain the contents of the repository, how to use the other files in this repository to evaluate the project output, and a detailed description of the steps used to transform the data.  **You are reading this file right now.**

2. A script that contains all of the commands to download and transform the data into 2 tidy data sets.  **This is the run_analysis.R file.**

3. A codebook that details the data sets, and transformations that occurred to manipulate the data to its final tidy data format.  **This is the CodeBook.md file.**

##Notes on the original data set
When unzipped, the original data set consists of a main folder (UCI HAR Dataset) and two sub-folders (test and train).  The main folder contains information about each of the files in the README.txt, along with other reference data files.  While the original README file explains these in more detail, the relevant files are described briefly here.  The reference data files are:

* activity_labels.txt - shows the descriptive labels for the numeric values that represent the activities in the other data set.

* features.txt - lists each of the measurements that are captured in the data set, along with a numeric sequence ID for each value.  This becomes the basis for the measurement column names.

* features_info.txt - describes the features that are included in the data set, and how they were gathered.

The test and train folders contain the data sets for the test group and train group of subjects, respectively.  They both also have a sub-folder that contains files that are not relevant for this project.  The relevant files in each folder are:

* subject_test.txt/subject_train.txt - these files contain a reference to the subject (person who performed the activities) associated to each of the measurements.  The range is from 1 to 30.

* y_test.txt/y_train.txt - these files contain the a reference to the activity associated to each of the measurements.  The numeric values range from 1 to 6, and the activity_labels.txt file provides the descriptive values for each of these numbers.

* X_test.txt/X_train.txt - these files contain the set of observations of measurements.  

##Notes on the run_analysis.R file
This file contains all of the commands that are needed to download the data set and manipulate it into the end result.  In order to use this file, the following R packages need to be installed:

1. downloader
2. plyr
3. dplyr
4. data.table

The following commands will install the packages if you do not have them:

install.packages("downloader")    
install.packages("plyr")    
install.packages("dplyr")   
install.packages("data.table")  

The script will load the packages for you in the proper order.

The script starts by creating a "Project" folder in your working directory if one does not already exists, and then sets your working directory to be the Project folder.  The dataset is then downloaded from the Coursera site to this folder, and unzipped.

The script then reads the 3 relevant files for the test data (subject_test.txt, y_test.txt, and X_test.txt) into 3 data frames (test_sub, test_act, and test_m respectively), and then converts them to data tables.  Then the column name on the test_act table is updated to be more descriptive.  The test_sub and test_act tables are combined into a new table - ts_act_sub.  At this point, the column name for the subject data is updated to be descriptive.  Then a new column is added to ts_act_sub to store the the descriptive values for each of the six activity values.  While not required by the project, I decided to add a column (SubjectType) to flag these records as "Test" subjects, in case there was ever a need to compare the results of test subjects with train subjects.  Finally, the columns in ts_act_sub were reordered to put the subject and activity columns next to each other.

Then the features.txt file is read in, and subset to use only the 2nd column to assign column names to the measurements data table (test_m).  The only columns that matter are those that contain "mean" or "std" (standard deviation) in the column names.  For the sake of completeness, I looked for all instances of "mean" in the column name, regardless of its position within the name.  This was done in 2 steps (1 for mean and 1 for std), and then the results were combined into a single data table (test_ms).   This was then combined with the subject and activity data to get to the full test data table with subject and activity associated to the measurements - ts_full.  This table has 89 columns and 2947 rows.

These steps are then repeated in the same manner for the 3 relevant files for the train data (subject_train.txt, y_train.txt, and X_train.txt).  The full train data table is called tr_full, and has the same columns as ts_full.  The value in the SubjectType field for the train data is "Train" instead of "Test" as set above.  This table has 89 columns and 7352 rows.  

The test and train data sets were combined into the all_data table, and then ordered by the first 3 columns.  This data set has 89 columns and 10299 rows, which matches the expected number of rows in the information about the data set. The column names were extracted from the data table, and then a series of transformations were applied to this data to remove punctuation and create more descriptive and valid column names **(see below for details)**.  The new names were then applied back to the table.  **In order to make the names more readable, CamelCase was used.**  This completed the first tidy data set - still referred to as all_data.  I chose to do a wide data set, with subject, activity, and measurements in separate columns, and each observation in its own row.

The project also asked for a 2nd tidy data set that showed by the average of each measurement by subject and activity.  The script creates a new data table (all_by_act_sub) that groups the all_data table by subject and activity.  Then, the mean is calculated for each measurement for each unique combination of subject and activity values and stored in a new data table (all_means).  Because there were 30 subjects and each one completed all 6 activities, this created a result of 180 rows.  There are only 88 columns in this table, as 1 column from the all_data set (SubjectType) is not included, as it was not necessary for this result.

Finally, the data in the all_means table is written out to a text file so that it can be uploaded to Coursera.  The file name is tidy_data.txt, and I chose to use a pipe (|) separator to make the file more readable in a text editor.  If you would like to read the file back into R, you may use the script below:

x <- read.table("./tidy_data.txt", header = TRUE, sep = "|")






