## GROUP NO -D2

TEAM MEMBERS:
- Badam Shanmukha Venkata Vinayak - CB.SC.U4AIE24307
- Potluri Aditya Pavan - CB.SC.U4AIE24307
- Paper link = https://www.mdpi.com/2076-3417/11/4/1591
- Project outine - ECG SIGNAL DENOISING USING BASIS PURSUIT
 

# ECG Signal Denoising using Basis Pursuit

## Overview
This project focuses on removing noise from ECG (Electrocardiogram) signals using Basis Pursuit optimization. The algorithm reconstructs the clean ECG signal by exploiting the sparse representation of the signal.

The denoising process is implemented using the ADMM (Alternating Direction Method of Multipliers) optimization technique.

## Dataset
The ECG signals are taken from the MIT-BIH Arrhythmia Database.

Files used:
- 100.dat
- 101.dat
- 102.dat
- 103.dat
- 104.dat

Each signal contains ECG recordings and header information.

## Methodology
1. Load ECG signal using WFDB toolbox
2. Add artificial noise to the signal
3. Apply baseline removal
4. Perform Basis Pursuit denoising using ADMM
5. Evaluate performance using metrics
6. Visualize original, noisy, and denoised signals

## Algorithms Used
- Basis Pursuit
- ADMM Optimization
- Sparse Signal Representation

## Files
- `main.m` – Main execution script
- `add_noise.m` – Adds noise to ECG signal
- `remove_baseline.m` – Removes baseline wander
- `admm_denoise.m` – ADMM-based denoising
- `compute_metrics.m` – Calculates evaluation metrics
- `plot_results.m` – Plots results

## Output
The system produces:
- Original ECG signal
- Noisy ECG signal
- Denoised ECG signal
- Performance metrics





## REQUIREMNET

- TIME TAKEN-<10 sec
- PLATFORM-LAPTOP
- MATLAB
- HARDWARE-CPU
- WFDB TOOLBOX
   
