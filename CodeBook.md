#The Code Book
##Code book
###Raw data
In the raw data, each record is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. There are six activity labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* An identifier of the subject who carried out the experiment. The identifier is labeled from 1 to 30.
There are 7352 obs from train set and 2947 obs from test set. The total number of observations is 10299.

These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

###The tidy data
In the tidy data, we calculate the average of each variable for each activity and each subject. The variable names is suggested by the column names of the output.

Notes:
* The angular velocity vector measured by the gyroscope for each window sample. The units are <b>radians/second</b>.
* Features are normalized and bounded within [-1,1].
* The complete list of variables of each feature vector is available in 'features.txt'.

##Study design
In the process of cleaning the data set, we will use the <b>data.table</b> package. The </b>data.table</b> offers a variety of functions to load and manipulate the data. Please make sure you have installed this package before you run the run_analysis.R script. 
Among all the functions <b>data.table</b> provides, we will use the <b>fread</b> function which offers a faster and more convenient way to load data and some other data manipulation in the framework of data.table, such as subsetting. 
Finally, the run_analysis.R script will output a tidy dataset which is stored in a text file named "tidydataset.txt" by using the function <b>write.table()</b> with the setting <b>"row.names=FALSE"</b>.
