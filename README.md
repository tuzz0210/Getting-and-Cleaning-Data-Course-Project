#Getting and Cleaning Data Course Project
The goal of this project is to prepare tidy data that can be used for later analysis. The data for this project is from <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">the accelerometers from the Samsung Galaxy S smartpho</a>.

The following steps are followed to create a tidy dataset:
<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set.</li><li>Appropriately labels the data set with descriptive variable names.</li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ol>

This repo includes the following files:
* README.md
* run_analysis.R: a R script which achieve the above steps to turn the raw data into a tidy data. The output is the tidy data.
* CodeBook.md: Shows the information about the data and describes transformations that I performed to clean up the data.
