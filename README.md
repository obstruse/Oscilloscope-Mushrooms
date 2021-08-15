# Oscilloscope-Mushrooms
Oscilloscope Mushrooms using Linux Laptop Orchestra (L2Ork/purr-data/puredata), following Jerobeam Fenderson's "How To Draw Mushrooms On An Oscilloscope With Sound" (https://www.youtube.com/watch?v=rtR63-ecUNo)

![Overview](/Images/mushrooms.png)

## Building a Mushroom

Run the patch `mushPanel.pd` to load the presets for the steps below:

![mushPanel](/Images/screen.png)

### Step 1
Cos(f) on the vertical, sin(f) on the horizontal

![Step1](/Images/step1.png)

### Step 2
Add Sawtooth(f/n) to the vertical

![Step2](/Images/step2.png)

### Step 3
**A:** Horizontal multiplied by sin(f/n)

![Step3a](/Images/step3a.png)

**B:** ...but only use the last quarter

![Step3b](/Images/step3b.png)

### Step 4
**A:** Sawtooth(f/n) multiplied by cos(f/n + x) added to horizontal

![Step4a](/Images/MVI_1803-90.gif)

**B:** Sawtooth(f/n) multiplied by cos((f/n + x)/3) added to horizontal

![Step4b](/Images/MVI_1804-90.gif)

## Installing Pure Data

### Pd (vanilla)? Pd-extended? Pd-l2ork? Purr-Data?

#### Pd (vanilla)
Version in the Raspbian repository, 0.46.2.  Doesn't work with mushrooms.pd.

#### Pd-extended
Pd‐extended is a fork of Pd Vanilla, including extra features and external libraries. It's outdated, abandoned and there's no support.

#### Pd-l2ork
Linux Laptop Orchestra (Pd-l2ork) is a fork of Pd-extended. 

#### Purr-Data
Version 2.0 of Pd-l2ork.  Using this version on Raspberry Pi.


Downloads and instructions here: 

https://github.com/agraef/purr-data/wiki/Installation#linux<br>
http://l2ork.music.vt.edu

## The Oscilloscope
![EICO](/Images/EICO.png)
