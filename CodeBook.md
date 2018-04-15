# CodeBook

The data set that this code book pertains to is located in the tidy.txt file of this repository.

See the README.md file of this repository for background information on this data set.


The tidy_data.txt data file is a text file. The first row contains the names of the variables.

There are 81 variables with the first two variables as "group_subject" and "group_activity". Variables from column 3 to 81 are averaged signal measurements with respect to "group_subject" and "group_activity".

Variable Details

 [1] "group_subject"            - identifier, integer, ranges from 1 to 30.                      
 [2] "group_activity_label"     -  identifier, integer, ranges from 1 to 30.                                     
 [3] "TimeDomainBodyAccelerometerMeanX"                              
 [4] "TimeDomainBodyAccelerometerMeanY"                              
 [5] "TimeDomainBodyAccelerometerMeanZ"                              
 [6] "TimeDomainBodyAccelerometerStandardDeviationX"                 
 [7] "TimeDomainBodyAccelerometerStandardDeviationY"                 
 [8] "TimeDomainBodyAccelerometerStandardDeviationZ"                 
 [9] "TimeDomainGravityAccelerometerMeanX"                           
[10] "TimeDomainGravityAccelerometerMeanY"                           
[11] "TimeDomainGravityAccelerometerMeanZ"                           
[12] "TimeDomainGravityAccelerometerStandardDeviationX"              
[13] "TimeDomainGravityAccelerometerStandardDeviationY"              
[14] "TimeDomainGravityAccelerometerStandardDeviationZ"              
[15] "TimeDomainBodyAccelerometerJerkMeanX"                          
[16] "TimeDomainBodyAccelerometerJerkMeanY"                          
[17] "TimeDomainBodyAccelerometerJerkMeanZ"                          
[18] "TimeDomainBodyAccelerometerJerkStandardDeviationX"             
[19] "TimeDomainBodyAccelerometerJerkStandardDeviationY"             
[20] "TimeDomainBodyAccelerometerJerkStandardDeviationZ"             
[21] "TimeDomainBodyGyroscopeMeanX"                                  
[22] "TimeDomainBodyGyroscopeMeanY"                                  
[23] "TimeDomainBodyGyroscopeMeanZ"                                  
[24] "TimeDomainBodyGyroscopeStandardDeviationX"                     
[25] "TimeDomainBodyGyroscopeStandardDeviationY"                     
[26] "TimeDomainBodyGyroscopeStandardDeviationZ"                     
[27] "TimeDomainBodyGyroscopeJerkMeanX"                              
[28] "TimeDomainBodyGyroscopeJerkMeanY"                              
[29] "TimeDomainBodyGyroscopeJerkMeanZ"                              
[30] "TimeDomainBodyGyroscopeJerkStandardDeviationX"                 
[31] "TimeDomainBodyGyroscopeJerkStandardDeviationY"                 
[32] "TimeDomainBodyGyroscopeJerkStandardDeviationZ"                 
[33] "TimeDomainBodyAccelerometerMagnitudeMean"                      
[34] "TimeDomainBodyAccelerometerMagnitudeStandardDeviation"         
[35] "TimeDomainGravityAccelerometerMagnitudeMean"                   
[36] "TimeDomainGravityAccelerometerMagnitudeStandardDeviation"      
[37] "TimeDomainBodyAccelerometerJerkMagnitudeMean"                  
[38] "TimeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"     
[39] "TimeDomainBodyGyroscopeMagnitudeMean"                          
[40] "TimeDomainBodyGyroscopeMagnitudeStandardDeviation"             
[41] "TimeDomainBodyGyroscopeJerkMagnitudeMean"                      
[42] "TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"         
[43] "frequencyDomainBodyAccelerometerMeanX"                         
[44] "frequencyDomainBodyAccelerometerMeanY"                         
[45] "frequencyDomainBodyAccelerometerMeanZ"                         
[46] "frequencyDomainBodyAccelerometerStandardDeviationX"            
[47] "frequencyDomainBodyAccelerometerStandardDeviationY"            
[48] "frequencyDomainBodyAccelerometerStandardDeviationZ"            
[49] "frequencyDomainBodyAccelerometerMeanFrequencyX"                
[50] "frequencyDomainBodyAccelerometerMeanFrequencyY"                
[51] "frequencyDomainBodyAccelerometerMeanFrequencyZ"                
[52] "frequencyDomainBodyAccelerometerJerkMeanX"                     
[53] "frequencyDomainBodyAccelerometerJerkMeanY"                     
[54] "frequencyDomainBodyAccelerometerJerkMeanZ"                     
[55] "frequencyDomainBodyAccelerometerJerkStandardDeviationX"        
[56] "frequencyDomainBodyAccelerometerJerkStandardDeviationY"        
[57] "frequencyDomainBodyAccelerometerJerkStandardDeviationZ"        
[58] "frequencyDomainBodyAccelerometerJerkMeanFrequencyX"            
[59] "frequencyDomainBodyAccelerometerJerkMeanFrequencyY"            
[60] "frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"            
[61] "frequencyDomainBodyGyroscopeMeanX"                             
[62] "frequencyDomainBodyGyroscopeMeanY"                             
[63] "frequencyDomainBodyGyroscopeMeanZ"                             
[64] "frequencyDomainBodyGyroscopeStandardDeviationX"                
[65] "frequencyDomainBodyGyroscopeStandardDeviationY"                
[66] "frequencyDomainBodyGyroscopeStandardDeviationZ"                
[67] "frequencyDomainBodyGyroscopeMeanFrequencyX"                    
[68] "frequencyDomainBodyGyroscopeMeanFrequencyY"                    
[69] "frequencyDomainBodyGyroscopeMeanFrequencyZ"                    
[70] "frequencyDomainBodyAccelerometerMagnitudeMean"                 
[71] "frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"    
[72] "frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"        
[73] "frequencyDomainBodyAccelerometerJerkMagnitudeMean"             
[74] "frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
[75] "frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"    
[76] "frequencyDomainBodyGyroscopeMagnitudeMean"                     
[77] "frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"        
[78] "frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"            
[79] "frequencyDomainBodyGyroscopeJerkMagnitudeMean"                 
[80] "frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"    
[81] "frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency" 


 [1] "group_subject", is identifier, integer, ranges from 1 to 30.                      
 [2] "group_activity_label" is identifier, integer, ranges from 1 to 30.  
 [3]-[81] are numeric, average of measurements grouped by "group_subject" and "group_activity".
