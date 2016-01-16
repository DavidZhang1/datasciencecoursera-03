# Code book
This fild discribes the procedure and output of run_analysis.R script.
## Overview
run_analysis.R extracts and transforms the data from [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), which described at [UCI]( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
The script merges the the following files from source dataset into one single dataset.
- test/subject_test.txt
- test/X_test.txt
- test/y_test.txt
- train/subject_train.txt
- train/X_train.txt
- train/y_train.txt
- features.txt
- activity_labels.txt
All other files in source data set are ignored.
The script takes only the mean and standard diviation related variables into a tidy data set. The output is the average of each variable in the tidy data set by each activity and subject.

The script also maps the names of feature variables (discribed in features_info.txt of source data set) to readable ones. For more information about the rule, please reference the STEP 4 in source code.

## Data dictionary
The variables in output file are a subset of the variables described in the features_info.txt file in the original data set. 
1. **Subject** - A factor that identifies the volunteer participant.
    Values are integer, range  from 1 to 30
2. **Activity** - A factor that identifies the activity being performed
    Values include: Laying, Sitting, Standing, Walking, WalkingDownstairs, WalkingUpstairs
    
    *** The variables below are each an average of the values collected for the test subject and activity specified in the data row. For each, the value is a numeric normalized and bounded within [-1, 1] ***
3. **MeanBodyAccelerationXAxis** - The mean of the body acceleration on the X axis. 
4. **MeanBodyAccelerationYAxis** - The mean of the body acceleration on the Y axis.
5. **MeanBodyAccelerationZAxis** - The mean of the body acceleration on the Z axis.
6. **MeanGravityAccelerationXAxis** - The mean of the gravity acceleration on the X axis. 
7. **MeanGravityAccelerationYAxis** - The mean of the gravity acceleration on the Y axis.
8. **MeanGravityAccelerationZAxis** - The mean of the gravity acceleration on the Z axis.
9. **MeanBodyAccelerationJerkXAxis** - The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals. 
10. **MeanBodyAccelerationJerkYAxis** - The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals.
11. **MeanBodyAccelerationJerkZAxis** - The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals.
12. **MeanBodyGyroscopeXAxis** - The mean of the body angular velocity on the X axis.
13. **MeanBodyGyroscopeYAxis** - The mean of the body angular velocity on the Y axis.
14. **MeanBodyGyroscopeZAxis** - The mean of the body angular velocity on the Z axis.
15. **MeanBodyGyroscopeJerkXAxis** - The mean of the body angular velocity on the X axis, derived in time to obtain Jerk signals.
16. **MeanBodyGyroscopeJerkYAxis** - The mean of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.
17. **MeanBodyGyroscopeJerkZAxis** - The mean of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.
18. **MeanBodyAccelerationMagnitude** - The mean of the body acceleration magnitude, calculated using the Euclidean norm.
19. **MeanGravityAccelerationMagnitude** - The mean of the gravity acceleration magnitude.
20. **MeanBodyAccelerationJerkMagnitude** - The mean of the body acceleration magnitude derived in time to obtain Jerk signals.
21. **MeanBodyGyroscopeMagnitude** - The mean of the angular velocity magnitude.
22. **MeanBodyGyroscopeJerkMagnitude** - The mean of the angular velocity magnitude derived in time to obtain Jerk signals.
23. **MeanFFTBodyAccelerationXAxis** - The mean of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied. 
24. **MeanFFTBodyAccelerationYAxis** - The mean of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.
25. **MeanFFTBodyAccelerationZAxis** - The mean of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.
26. **MeanFFTBodyAccelerationJerkXAxis** - The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied. 
27. **MeanFFTBodyAccelerationJerkYAxis** - The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
28. **MeanFFTBodyAccelerationJerkZAxis** - The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
29. **MeanFFTBodyGyroscopeXAxis** - The mean of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.
30. **MeanFFTBodyGyroscopeYAxis** - The mean of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.
31. **MeanFFTBodyGyroscopeZAxis** - The mean of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.
32. **MeanFFTBodyAccelerationMagnitude** - The mean of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.
33. **MeanFFTBodyAccelerationJerkMagnitude** - The mean of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
34. **MeanFFTBodyGyroscopeMagnitude** - The mean of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.
35. **MeanFFTBodyGyroscopeJerkMagnitude** - The mean of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
36. **StandardDeviationTimeBodyAccelerationXAxis** - The standard deviation of the body acceleration on the X axis. 
37. **StandardDeviationTimeBodyAccelerationYAxis** - The standard deviation of the body acceleration on the Y axis.
38. **StandardDeviationTimeBodyAccelerationZAxis** - The standard deviation of the body acceleration on the Z axis.
39. **StandardDeviationTimeGravityAccelerationXAxis** - The standard deviation of the gravity acceleration on the X axis. 
40. **StandardDeviationTimeGravityAccelerationYAxis** - The standard deviation of the gravity acceleration on the Y axis.
41. **StandardDeviationTimeGravityAccelerationZAxis** - The standard deviation of the gravity acceleration on the Z axis.
42. **StandardDeviationTimeBodyAccelerationJerkXAxis** - The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals. 
43. **StandardDeviationTimeBodyAccelerationJerkYAxis** - The standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals.
44. **StandardDeviationTimeBodyAccelerationJerkZAxis** - The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals.
45. **StandardDeviationTimeBodyGyroscopeXAxis** - The standard deviation of the body angular velocity on the X axis. 
46. **StandardDeviationTimeBodyGyroscopeYAxis** - The standard deviation of the body angular velocity on the Y axis.
47. **StandardDeviationTimeBodyGyroscopeZAxis** - The standard deviation of the body angular velocity on the Z axis.
48. **StandardDeviationTimeBodyGyroscopeJerkXAxis** - The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals. 
49. **StandardDeviationTimeBodyGyroscopeJerkYAxis** - The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.
50. **StandardDeviationTimeBodyGyroscopeJerkZAxis** - The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.
51. **StandardDeviationTimeBodyAccelerationMagnitude** - The standard deviation of the body acceleration magnitude, calculated using the Euclidean norm.
52. **StandardDeviationTimeGravityAccelerationMagnitude** - The standard deviation of the gravity acceleration magnitude.
53. **StandardDeviationTimeBodyAccelerationJerkMagnitude** - The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals.
54. **StandardDeviationTimeBodyGyroscopeMagnitude** - The standard deviation of the angular velocity magnitude.
55. **StandardDeviationTimeBodyGyroscopeJerkMagnitude** - The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals.
56. **StandardDeviationFFTBodyAccelerationXAxis** - The standard deviation of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied. 
57. **StandardDeviationFFTBodyAccelerationYAxis** - The standard deviation of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.
58. **StandardDeviationFFTBodyAccelerationZAxis** - The standard deviation of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.
59. **StandardDeviationFFTBodyGyroscopeJerkXAxis** - The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied. 
60. **StandardDeviationFFTBodyGyroscopeJerkYAxis** - The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
61. **StandardDeviationFFTBodyGyroscopeJerkZAxis** - The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
62. **StandardDeviationFFTBodyGyroscopeXAxis** - The standard deviation of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied. 
63. **StandardDeviationFFTBodyGyroscopeYAxis** - The standard deviation of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.
64. **StandardDeviationFFTBodyGyroscopeZAxis** - The standard deviation of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.
65. **StandardDeviationFFTBodyAccelerationMagnitude** - The standard deviation of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.
66. **StandardDeviationFFTBodyAccelerationJerkMagnitude** - The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
67. **StandardDeviationFFTBodyGyroscopeMagnitude** - The standard deviation of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.
68. **StandardDeviationFFTBodyGyroscopeJerkMagnitude** - The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
