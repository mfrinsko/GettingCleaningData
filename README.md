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

