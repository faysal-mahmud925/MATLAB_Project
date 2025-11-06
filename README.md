# Signals and Systems – Final Project

This repository contains the final project for the **Signals and Systems** course, completed by **Faysal Mahmud**. The project consists of **two exercises** involving audio signal processing: restoring a corrupted audio track and studying the effects of downsampling on an audio signal.

---

## **Files in this Repository**

### MATLAB Scripts
- `exercise1.m` – MATLAB code for **Exercise 1: Audio Track Restoration**
- `exercise2.m` – MATLAB code for **Exercise 2: Downsampling of an Audio Signal**

### Audio Data
- `audio1_2.mat` – Audio file for Exercise 1 (corrupted signal)
- `audioNew_2.mat` – Audio file for Exercise 2 (filtered signal)
- `audio_jk_2.mat` – Optional additional audio track for Exercise 2

### PDFs
- `Report24_25.pdf` – Original exercise assignment / instructions
- `Project_Signal_Systems_Faysal_Mahmud.pdf` – Solution report, including explanations, results, and plots

---

## **Project Overview**

### **Exercise 1: Audio Track Restoration**
- The audio signal `x` in `audio1_2.mat` is corrupted by narrowband disturbances.
- **Steps performed:**
  1. Compute the FFT of the original signal to identify disturbance frequencies (200 Hz and 10,000 Hz).
  2. Design notch filters using MATLAB to remove disturbances while preserving original audio.
  3. Filter the signal and compare FFTs before and after filtering.
- **Outcome:** Disturbances successfully removed, original audio quality preserved.

### **Exercise 2: Downsampling of an Audio Signal**
- The filtered signal `x_new` in `audioNew_2.mat` is studied for downsampling effects.
- **Steps performed:**
  1. Naive downsampling by a factor of 25 introduced aliasing artifacts.
  2. Designed a low-pass anti-aliasing filter to remove high-frequency components.
  3. Resampled the filtered signal to obtain `xsampled_new`.
  4. Compared FFTs of naive and anti-aliased downsampling.
- **Outcome:** Anti-aliasing prevents sonic artifacts and preserves signal fidelity.

---

## **How to Run the MATLAB Scripts**

1. Clone the repository:

```bash
git clone https://github.com/faysal-mahmud925/MATLAB_Project.git
cd MATLAB_Project
Open MATLAB and navigate to the project folder.
Run Exercise 1:
exercise1
This loads the corrupted audio, applies notch filters, and displays FFT plots.
Run Exercise 2:
This loads the filtered audio, performs downsampling with and without anti-aliasing, and displays FFT comparisons
Notes
Ensure all .mat files are in the same folder as the MATLAB scripts when running.
The project demonstrates practical applications of filtering, sampling, and Fourier analysis in audio signal processing.
audio_jk_2.mat can be optionally used for further analysis of downsampling artifacts.
Author
Faysal Mahmud
Email: faysal.mahmud@studenti.unipd.it
University of Padova

