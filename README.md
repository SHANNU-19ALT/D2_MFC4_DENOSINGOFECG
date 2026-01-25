Badam Shanmukha Venkata Vinayak - CB.SC.U4AIE24307
Potluri Aditya Pavan - CB.SC.U4AIE24307
Paper link = https://www.mdpi.com/2076-3417/11/4/1591
Project outine - ECG SIGNAL DENOISING USING BASIS PURSUIT

challenges - 
1)WFDB Toolbox Compatibility Issues
Resolved by switching to CSV-based MIT-BIH dataset

2)Short Signal Length Constraint
Each ECG beat contains only 187 samples
High-order FIR filters failed with filtfilt(function used for filtering)
