***Getting and Cleaning Data Project Codebook - January 2015

This document explains the variables in the data sets produced in support of the Getting and Cleaning Data project, as well as the transformations that occurred to provide the data in its final formats.

Two tidy data sets are created through this project.  A brief overview of each one is given here, and detailed information about the variables in each are below.

* all_data - This data table stores the original measurements data, associated to the subjects and activities.  Based on the information in the data set description, these measurements are unitless, having been normalized in the original data set.  There are 89 columns in this data set and 10299 rows.

* all_means - This data table stores a summarized view of the all_data table, taking the average of each measurement variable for each unique combination of subject and activity.  The measurement variables in this table are also unitless.  There are 88 columns in this data set and 180 rows.

**Variable Descriptions for all_data

1. SubjectID: Character field with values from 1-30 representing each individual who participated in the study.

2. SubjectType:	Character field with values of Train or Test. Indicates the original location of the subject as being in the train or test data sets, respectively. While not required for this project, retaining the origin of the subject could be beneficial for future analysis.

3. ActivityDescription:	Character field with descriptive values of the activities performed by the subjects. In the original data set, each activity was represented by a number. This field replaces the numbers with readable text, and the translation is as follows: 

- 1 = Walking
- 2 = Walking Upstairs
- 3 = Walking Downstairs
- 4 = Sitting
- 5 = Standing
- 6 = Laying

4. TimeBodyAccelerometerMeanX:	Average body acceleration time from the accelerometer along the X axis

5. TimeBodyAccelerometerMeanY:	Average body acceleration time from the accelerometer along the Y axis 

6. TimeBodyAccelerometerMeanZ:	Average body acceleration time from the accelerometer along the Z axis

7. TimeGravityAccelerometerMeanX:	Average gravity acceleration time from the accelerometer along the X axis

8. TimeGravityAccelerometerMeanY:	Average gravity acceleration time from the accelerometer along the Y axis

9. TimeGravityAccelerometerMeanZ:	Average gravity acceleration time from the accelerometer along the Z axis

10.	TimeBodyAccelerometerJerkMeanX:	Average body acceleration Jerk time along the X axis

11.	TimeBodyAccelerometerJerkMeanY:	Average body acceleration Jerk time along the Y axis

12.	TimeBodyAccelerometerJerkMeanZ:	Average body acceleration Jerk time along the Z axis

13.	TimeBodyGyroscopeMeanX:	Average body gyroscope time along the X axis

14.	TimeBodyGyroscopeMeanY:	Average body gyroscope time along the Y axis

15.	TimeBodyGyroscopeMeanZ:	Average body gyroscope time along the Z axis

16.	TimeBodyGyroscopeJerkMeanX:	Average body acceleration Jerk time along the X axis

17.	TimeBodyGyroscopeJerkMeanY:	Average body gyroscope Jerk time along the Y axis

18.	TimeBodyGyroscopeJerkMeanZ:	Average body gyroscope Jerk time along the Z axis

19.	TimeBodyAccelerometerMagnitudeMean:	Average magnitude of body acceleration time

20.	TimeGravityAccelerometerMagnitudeMean:	Average magnitude of gravity accleration time

21.	TimeBodyAccelerometerJerkMagnitudeMean:	Average magnitude of body acceleration Jerk time

22.	TimeBodyGyroscopeMagnitudeMean:	Average magnitude of body gyroscope time

23.	TimeBodyGyroscopeJerkMagnitudeMean:	Average magnitude of body gyroscope Jerk time

24.	FrequencyBodyAccelerometerMeanX:	Average body acceleration frequency from the accelerometer along the X axis

25.	FrequencyBodyAccelerometerMeanY:	Average body acceleration frequency from the accelerometer along the Y axis 

26.	FrequencyBodyAccelerometerMeanZ:	Average body acceleration frequency from the accelerometer along the Z axis

27.	FrequencyBodyAccelerometerMeanFreqX:	Weighted average body acceleration frequency from the accelerometer along the X axis

28.	FrequencyBodyAccelerometerMeanFreqY:	Weighted average body acceleration frequency from the accelerometer along the Y axis

29.	FrequencyBodyAccelerometerMeanFreqZ:	Weighted average body acceleration frequency from the accelerometer along the Z axis

30.	FrequencyBodyAccelerometerJerkMeanX:	Average body acceleration Jerk frequency along the X axis

31.	FrequencyBodyAccelerometerJerkMeanY:	Average body acceleration Jerk frequency along the Y axis

32.	FrequencyBodyAccelerometerJerkMeanZ:	Average body acceleration Jerk frequency along the Z axis

33.	FrequencyBodyAccelerometerJerkMeanFreqX:	Weighted average body acceleration Jerk frequency along the X axis

34.	FrequencyBodyAccelerometerJerkMeanFreqY:	Weighted average body acceleration Jerk frequency along the Y axis

35.	FrequencyBodyAccelerometerJerkMeanFreqZ:	Weighted average body acceleration Jerk frequency along the Z axis

36.	FrequencyBodyGyroscopeMeanX:	Average body gyroscope frequency along the X axis

37.	FrequencyBodyGyroscopeMeanY:	Average body gyroscope frequency along the Y axis

38.	FrequencyBodyGyroscopeMeanZ:	Average body gyroscope frequency along the Z axis

39.	FrequencyBodyGyroscopeMeanFreqX:	Weighted average body gyroscope mean frequency along the X axis

40.	FrequencyBodyGyroscopeMeanFreqY:	Weighted average body gyroscope mean frequency along the Y axis

41.	FrequencyBodyGyroscopeMeanFreqZ:	Weighted average body gyroscope mean frequency along the Z axis

42.	FrequencyBodyAccelerometerMagnitudeMean:	Average magnitude of body acceleration frequency

43.	FrequencyBodyAccelerometerMagnitudeMeanFreq:	Weighted average magnitude of body acceleration Jerk mean frequency

44.	FrequencyBodyAccelerometerJerkMagnitudeMean:	Average magnitude of body acceleration Jerk frequency

45.	FrequencyBodyAccelerometerJerkMagnitudeMeanFreq:	Weighted average magnitude of body acceleration frequency

46.	FrequencyBodyGyroscopeMagnitudeMean:	Average magnitude of body gyroscope Jerk time

47.	FrequencyBodyGyroscopeMagnitudeMeanFreq:	Weighted average magnitude of body gyroscope frequency

48.	FrequencyBodyGyroscopeJerkMagnitudeMean:	Average magnitude of body gyroscope Jerk frequency

49.	FrequencyBodyGyroscopeJerkMagnitudeMeanFreq:	Weighted average magnitude of body gyroscope Jerk frequency

50.	AngleTimeBodyAccelerometerMeanGravity:	Angle between average body acceleration time and gravity vector

51.	AngleTimeBodyAccelerometerJerkMeanGravityMean:	Angle between average body acceleration Jerk time and average gravity vector

52.	AngleTimeBodyGyroscopeMeanGravityMean:	Angle between average body gyroscope time and average gravity vector

53.	AngleTimeBodyGyroscopeJerkMeanGravityMean:	Angle between average body gyroscope Jerk time and average gravity vector

54.	AngleXGravityMean:	Angle between X axis and average gravity vector

55.	AngleYGravityMean:	Angle between Y axis and average gravity vector

56.	AngleZGravityMean:	Angle between Z axis and average gravity vector

57.	TimeBodyAccelerometerStandardDeviationX:	Standard deviation body acceleration time from the accelerometer along the X axis

58.	TimeBodyAccelerometerStandardDeviationY:	Standard deviation of body acceleration time from the accelerometer along the Y axis 

59.	TimeBodyAccelerometerStandardDeviationZ:	Standard deviation of body acceleration time from the accelerometer along the Z axis

60.	TimeGravityAccelerometerStandardDeviationX:	Standard deviation of gravity acceleration time from the accelerometer along the X axis

61.	TimeGravityAccelerometerStandardDeviationY:	Standard deviation of gravity acceleration time from the accelerometer along the Y axis

62.	TimeGravityAccelerometerStandardDeviationZ:	Standard deviation of gravity acceleration time from the accelerometer along the Z axis

63.	TimeBodyAccelerometerJerkStandardDeviationX:	Standard deviation of body acceleration Jerk time along the X axis

64.	TimeBodyAccelerometerJerkStandardDeviationY:	Standard deviation of body acceleration Jerk time along the Y axis

65.	TimeBodyAccelerometerJerkStandardDeviationZ:	Standard deviation of body acceleration Jerk time along the Z axis

66.	TimeBodyGyroscopeStandardDeviationX:	Standard deviation of body gyroscope time along the X axis

67.	TimeBodyGyroscopeStandardDeviationY:	Standard deviation of body gyroscope time along the Y axis

68.	TimeBodyGyroscopeStandardDeviationZ:	Standard deviation of body gyroscope time along the Z axis

69.	TimeBodyGyroscopeJerkStandardDeviationX:	Standard deviation of body gyroscope Jerk time along the X axis

70.	TimeBodyGyroscopeJerkStandardDeviationY:	Standard deviation of body gyroscope Jerk time along the Y axis

71.	TimeBodyGyroscopeJerkStandardDeviationZ:	Standard deviation of body gyroscope Jerk time along the Z axis

72.	TimeBodyAccelerometerMagnitudeStandardDeviation:	Standard deviation of magnitude of body acceleration time

73.	TimeGravityAccelerometerMagnitudeStandardDeviation:	Standard deviation of magnitude of gravity acceleration time

74.	TimeBodyAccelerometerJerkMagnitudeStandardDeviation:	Standard deviation of magnitude of body acceleration Jerk time

75.	TimeBodyGyroscopeMagnitudeStandardDeviation:	Standard deviation of magnitude of body gyroscope time

76.	TimeBodyGyroscopeJerkMagnitudeStandardDeviation:	Standard deviation of magnitude of body gyroscope Jerk time

77. FrequencyBodyAccelerometerStandardDeviationX:	Standard deviation of body acceleration frequency from the accelerometer along the X axis

78. FrequencyBodyAccelerometerStandardDeviationY:	Standard deviation of body acceleration frequency from the accelerometer along the Y axis 

79. FrequencyBodyAccelerometerStandardDeviationZ:	Standard deviation of body acceleration frequency from the accelerometer along the Z axis

80. FrequencyBodyAccelerometerJerkStandardDeviationX:	Standard deviation of body acceleration Jerk frequency along the X axis

81. FrequencyBodyAccelerometerJerkStandardDeviationY:	Standard deviation of body acceleration Jerk frequency along the Y axis

82. FrequencyBodyAccelerometerJerkStandardDeviationZ:	Standard deviation of body acceleration Jerk frequency along the Z axis

83. FrequencyBodyGyroscopeStandardDeviationX:	Standard deviation of body gyroscope frequency along the X axis

84. FrequencyBodyGyroscopeStandardDeviationY:	Standard deviation of body gyroscope frequency along the Y axis

85. FrequencyBodyGyroscopeStandardDeviationZ:	Standard deviation of body gyroscope frequency along the Z axis

86. FrequencyBodyAccelerometerMagnitudeStandardDeviation:	Standard deviation of magnitude of body acceleration time

87. FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation:	Standard deviation of magnitude of body acceleration Jerk time

88. FrequencyBodyGyroscopeMagnitudeStandardDeviation:	Standard deviation of magnitude of body gyroscope time

89. FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation:	Standard deviation of magnitude of body gyroscope Jerk time

**Variable Descriptions for all_means

1.	SubjectID:	Character field with values from 1-30 representing each individual who participated in the study.

2.	ActivityDescription:	Character field with descriptive values of the activities performed by the subjects.  In the original data set, each activity was represented by a number.  This field replaces the numbers with readable text, and the translation is as follows: 

- 1 = Walking
- 2 = Walking Upstairs
- 3 = Walking Downstairs
- 4 = Sitting
- 5 = Standing
- 6 = Laying

3.	TimeBodyAccelerometerMeanX:	Average body acceleration time from the accelerometer along the X axis

4.	TimeBodyAccelerometerMeanY:	Average body acceleration time from the accelerometer along the Y axis 

5.	TimeBodyAccelerometerMeanZ:	Average body acceleration time from the accelerometer along the Z axis

6.	TimeGravityAccelerometerMeanX:	Average gravity acceleration time from the accelerometer along the X axis

7.	TimeGravityAccelerometerMeanY:	Average gravity acceleration time from the accelerometer along the Y axis

8.	TimeGravityAccelerometerMeanZ:	Average gravity acceleration time from the accelerometer along the Z axis

9.	TimeBodyAccelerometerJerkMeanX:	Average body acceleration Jerk time along the X axis

10.	TimeBodyAccelerometerJerkMeanY:	Average body acceleration Jerk time along the Y axis

11.	TimeBodyAccelerometerJerkMeanZ:	Average body acceleration Jerk time along the Z axis

12.	TimeBodyGyroscopeMeanX:	Average body gyroscope time along the X axis

13.	TimeBodyGyroscopeMeanY:	Average body gyroscope time along the Y axis

14.	TimeBodyGyroscopeMeanZ:	Average body gyroscope time along the Z axis

15.	TimeBodyGyroscopeJerkMeanX:	Average body gyroscope Jerk time along the X axis

16.	TimeBodyGyroscopeJerkMeanY:	Average body gyroscope Jerk time along the Y axis

17.	TimeBodyGyroscopeJerkMeanZ:	Average body gyroscope Jerk time along the Z axis

18.	TimeBodyAccelerometerMagnitudeMean:	Average magnitude of body acceleration time

19.	TimeGravityAccelerometerMagnitudeMean:	Average magnitude of gravity acceleration time

20.	TimeBodyAccelerometerJerkMagnitudeMean:	Average magnitude of body acceleration Jerk time

21.	TimeBodyGyroscopeMagnitudeMean:	Average magnitude of body gyroscope time

22.	TimeBodyGyroscopeJerkMagnitudeMean:	Average magnitude of body gyroscope Jerk time

23.	FrequencyBodyAccelerometerMeanX:	Average body acceleration frequency from the accelerometer along the X axis

24.	FrequencyBodyAccelerometerMeanY:	Average body acceleration frequency from the accelerometer along the Y axis 

25.	FrequencyBodyAccelerometerMeanZ:	Average body acceleration frequency from the accelerometer along the Z axis

26.	FrequencyBodyAccelerometerMeanFreqX:	Weighted average body acceleration frequency from the accelerometer along the X axis

27.	FrequencyBodyAccelerometerMeanFreqY:	Weighted average body acceleration frequency from the accelerometer along the Y axis

28.	FrequencyBodyAccelerometerMeanFreqZ:	Weighted average body acceleration frequency from the accelerometer along the Z axis

29.	FrequencyBodyAccelerometerJerkMeanX:	Average body acceleration Jerk frequency along the X axis

30.	FrequencyBodyAccelerometerJerkMeanY:	Average body acceleration Jerk frequency along the Y axis

31.	FrequencyBodyAccelerometerJerkMeanZ:	Average body acceleration Jerk frequency along the Z axis

32.	FrequencyBodyAccelerometerJerkMeanFreqX:	Weighted average body acceleration Jerk frequency along the X axis

33.	FrequencyBodyAccelerometerJerkMeanFreqY:	Weighted average body acceleration Jerk frequency along the Y axis

34.	FrequencyBodyAccelerometerJerkMeanFreqZ:	Weighted average body acceleration Jerk frequency along the Z axis

35.	FrequencyBodyGyroscopeMeanX:	Average body gyroscope frequency along the X axis

36.	FrequencyBodyGyroscopeMeanY:	Average body gyroscope frequency along the Y axis

37.	FrequencyBodyGyroscopeMeanZ:	Average body gyroscope frequency along the Z axis

38.	FrequencyBodyGyroscopeMeanFreqX:	Weighted average body gyroscope mean frequency along the X axis

39.	FrequencyBodyGyroscopeMeanFreqY:	Weighted average body gyroscope mean frequency along the Y axis

40.	FrequencyBodyGyroscopeMeanFreqZ:	Weighted average body gyroscope mean frequency along the Z axis

41.	FrequencyBodyAccelerometerMagnitudeMean:	Average magnitude of body acceleration frequency

42.	FrequencyBodyAccelerometerMagnitudeMeanFreq:	Weighted average magnitude of body acceleration Jerk mean frequency

43.	FrequencyBodyAccelerometerJerkMagnitudeMean:	Average magnitude of body acceleration Jerk frequency

44.	FrequencyBodyAccelerometerJerkMagnitudeMeanFreq:	Weighted average magnitude of body acceleration frequency

45.	FrequencyBodyGyroscopeMagnitudeMean:	Average magnitude of body gyroscope Jerk time

46.	FrequencyBodyGyroscopeMagnitudeMeanFreq:	Weighted average magnitude of body gyroscope frequency

47.	FrequencyBodyGyroscopeJerkMagnitudeMean:	Average magnitude of body gyroscope Jerk frequency

48.	FrequencyBodyGyroscopeJerkMagnitudeMeanFreq:	Weighted average magnitude of body gyroscope Jerk frequency

49.	AngleTimeBodyAccelerometerMeanGravity:	Angle between average body acceleration time and gravity vector

50.	AngleTimeBodyAccelerometerJerkMeanGravityMean:	Angle between average body acceleration Jerk time and average gravity vector

51.	AngleTimeBodyGyroscopeMeanGravityMean:	Angle between average body gyroscope time and average gravity vector

52.	AngleTimeBodyGyroscopeJerkMeanGravityMean:	Angle between average body gyroscope Jerk time and average gravity vector

53.	AngleXGravityMean:	Angle between X axis and average gravity vector

54.	AngleYGravityMean:	Angle between Y axis and average gravity vector

55.	AngleZGravityMean:	Angle between Z axis and average gravity vector

56.	TimeBodyAccelerometerStandardDeviationX:	Standard deviation body acceleration time from the accelerometer along the X axis

57.	TimeBodyAccelerometerStandardDeviationY:	Standard deviation of body acceleration time from the accelerometer along the Y axis 

58.	TimeBodyAccelerometerStandardDeviationZ:	Standard deviation of body acceleration time from the accelerometer along the Z axis

59.	TimeGravityAccelerometerStandardDeviationX:	Standard deviation of gravity acceleration time from the accelerometer along the X axis

60.	TimeGravityAccelerometerStandardDeviationY:	Standard deviation of gravity acceleration time from the accelerometer along the Y axis

61.	TimeGravityAccelerometerStandardDeviationZ:	Standard deviation of gravity acceleration time from the accelerometer along the Z axis

62.	TimeBodyAccelerometerJerkStandardDeviationX:	Standard deviation of body acceleration Jerk time along the X axis

63.	TimeBodyAccelerometerJerkStandardDeviationY:	Standard deviation of body acceleration Jerk time along the Y axis

64.	TimeBodyAccelerometerJerkStandardDeviationZ:	Standard deviation of body acceleration Jerk time along the Z axis

65.	TimeBodyGyroscopeStandardDeviationX:	Standard deviation of body gyroscope time along the X axis

66.	TimeBodyGyroscopeStandardDeviationY:	Standard deviation of body gyroscope time along the Y axis

67.	TimeBodyGyroscopeStandardDeviationZ:	Standard deviation of body gyroscope time along the Z axis

68.	TimeBodyGyroscopeJerkStandardDeviationX:	Standard deviation of body acceleration Jerk time along the X axis

69.	TimeBodyGyroscopeJerkStandardDeviationY:	Standard deviation of body gyroscope Jerk time along the Y axis

70.	TimeBodyGyroscopeJerkStandardDeviationZ:	Standard deviation of body gyroscope Jerk time along the Z axis

71.	TimeBodyAccelerometerMagnitudeStandardDeviation:	Standard deviation of magnitude of body acceleration time

72.	TimeGravityAccelerometerMagnitudeStandardDeviation:	Standard deviation of magnitude of gravity accleration time

73.	TimeBodyAccelerometerJerkMagnitudeStandardDeviation:	Standard deviation of magnitude of body acceleration Jerk time

74.	TimeBodyGyroscopeMagnitudeStandardDeviation:	Standard deviation of magnitude of body gyroscope time

75.	TimeBodyGyroscopeJerkMagnitudeStandardDeviation:	Standard deviation of magnitude of body gyroscope Jerk time

76.	FrequencyBodyAccelerometerStandardDeviationX:	Standard deviation of body acceleration frequency from the accelerometer along the X axis

77.	FrequencyBodyAccelerometerStandardDeviationY:	Standard deviation of body acceleration frequency from the accelerometer along the Y axis 

78.	FrequencyBodyAccelerometerStandardDeviationZ:	Standard deviation of body acceleration frequency from the accelerometer along the Z axis
79.	FrequencyBodyAccelerometerJerkStandardDeviationX:	Standard deviation of body acceleration Jerk frequency along the X axis

80.	FrequencyBodyAccelerometerJerkStandardDeviationY:	Standard deviation of body acceleration Jerk frequency along the Y axis

81.	FrequencyBodyAccelerometerJerkStandardDeviationZ:	Standard deviation of body acceleration Jerk frequency along the Z axis

82.	FrequencyBodyGyroscopeStandardDeviationX:	Standard deviation of body gyroscope frequency along the X axis

83.	FrequencyBodyGyroscopeStandardDeviationY:	Standard deviation of body gyroscope frequency along the Y axis

84.	FrequencyBodyGyroscopeStandardDeviationZ:	Standard deviation of body gyroscope frequency along the Z axis

85.	FrequencyBodyAccelerometerMagnitudeStandardDeviation:	Standard deviation of magnitude of body acceleration time

86.	FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation:	Standard deviation of magnitude of body acceleration Jerk time

87.	FrequencyBodyGyroscopeMagnitudeStandardDeviation:	Standard deviation of magnitude of body gyroscope time

88.	FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation:	Standard deviation of magnitude of body gyroscope Jerk time
