======================================================================
CodeBook
Getting and Cleaning Data Course Project
Week 4
======================================================================
This codebook contains the description of the variables and their 
transformations.
----------------------------------------------------------------------
The variables are:
 [1] "acceleration_meanX"                             
 [2] "acceleration_meanY"                             
 [3] "acceleration_meanZ"                             
 [4] "acceleration_stdX"                              
 [5] "acceleration_stdY"                              
 [6] "acceleration_stdZ"                              
 [7] "gravity_meanX"                                  
 [8] "gravity_meanY"                                  
 [9] "gravity_meanZ"                                  
[10] "gravity_stdX"                                   
[11] "gravity_stdY"                                   
[12] "gravity_stdZ"                                   
[13] "linearacceleration_meanX"                       
[14] "linearacceleration_meanY"                       
[15] "linearacceleration_meanZ"                       
[16] "linearacceleration_stdX"                        
[17] "linearacceleration_stdY"                        
[18] "linearacceleration_stdZ"                        
[19] "angularvelocity_meanX"                          
[20] "angularvelocity_meanY"                          
[21] "angularvelocity_meanZ"                          
[22] "angularvelocity_stdX"                           
[23] "angularvelocity_stdY"                           
[24] "angularvelocity_stdZ"                           
[25] "angularvelocityjerk_meanX"                      
[26] "angularvelocityjerk_meanY"                      
[27] "angularvelocityjerk_meanZ"                      
[28] "angularvelocityjerk_stdX"                       
[29] "angularvelocityjerk_stdY"                       
[30] "angularvelocityjerk_stdZ"                       
[31] "acceleration_normalized_mean"                   
[32] "acceleration_normalized_std"                    
[33] "gravity_normalized_mean"                        
[34] "gravity_normalized_std"                         
[35] "linearacceleration_normalized_mean"             
[36] "linearacceleration_normalized_std"              
[37] "angularvelocity_normalized_mean"                
[38] "angularvelocity_normalized_std"                 
[39] "angularvelocityjerk_normalized_mean"            
[40] "angularvelocityjerk_normalized_std"             
[41] "transformed_acceleration_meanX"                 
[42] "transformed_acceleration_meanY"                 
[43] "transformed_acceleration_meanZ"                 
[44] "transformed_acceleration_stdX"                  
[45] "transformed_acceleration_stdY"                  
[46] "transformed_acceleration_stdZ"                  
[47] "transformed_accelerationjerk_meanX"             
[48] "transformed_accelerationjerk_meanY"             
[49] "transformed_accelerationjerk_meanZ"             
[50] "transformed_accelerationjerk_stdX"              
[51] "transformed_accelerationjerk_stdY"              
[52] "transformed_accelerationjerk_stdZ"              
[53] "transformed_angularvelocity_meanX"              
[54] "transformed_angularvelocity_meanY"              
[55] "transformed_angularvelocity_meanZ"              
[56] "transformed_angularvelocity_stdX"               
[57] "transformed_angularvelocity_stdY"               
[58] "transformed_angularvelocity_stdZ"               
[59] "transformed_acceleration_normalized_mean"       
[60] "transformed_acceleration_normalized_std"        
[61] "transformed_linearacceleration_normalized_mean" 
[62] "transformed_linearacceleration_normalized_std"  
[63] "transformed_angularvelocity_normalized_mean"    
[64] "transformed_angularvelocity_normalized_std"     
[65] "transformed_angularvelocityjerk_normalized_mean"
[66] "transformed_angularvelocityjerk_normalized_std" 
[67] "activity"  

- "acceleration": Body acceleration (tBodyAcc in original data set)
- "gravity": Gravity acceleration (tGravityAcc in original data set)
- "linearacceleration": Linear acceleration (tBodyAccJerk in original data set)
- "angularvelocity": Angular velocity (tBodyGyro in original data set)
- "...jerk": Jerk signals (view original data set for information)
- "normalized": Euclidean normalization (view original data set for 
information, variables with "Mag")
- "transformed": Fast Fourier Transform applicated (view original data set for
information)
- "mean": Mean value ("-mean()" in original data set)
- "std": Standard deviation ("-std()" in original data set)
- "X/Y/Z": Axis X/Y/Z values

Each row is labeled in the column "activity":
- "walking": idem "WALKING" in original data set
- "goingup": idem "WALKING_UPSTAIRS" in original data set
- "goingdown": idem "WALKING_DOWNSTAIRS" in original data set
- "sitting": idem "SITTING" in original data set
- "standing": idem "STANDING" in original data set
- "laying": idem "LAYING" in original data set

======================================================================
data_summary: This data set is tidy (by "activity")
Each column for each activity is calculated using the "mean ()" function on all
the values of the variable that belong to each class in "activity".
The units of variables are the same of original data set.


