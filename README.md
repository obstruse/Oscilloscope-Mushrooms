# Oscilloscope-Mushrooms
A Pure Data patch, following Jerobeam Fenderson's "How To Draw Mushrooms On An Oscilloscope With Sound" (https://www.youtube.com/watch?v=rtR63-ecUNo)

## Building a Mushroom

### Step 1
Cos(f) on the vertical, sin(f) on the horizontal

![Step1](/Images/step1.png)

### Step 2
Add Sawtooth(f/n) to the vertical

![Step2](/Images/step2.png)

### Step 3
Horizontal multiplied by sin(f/n)

![Step3a](/Images/step3a.png)

...but only use the last quarter

![Step3b](/Images/step3b.png)

### Step 4
Sawtooth(f/n) multiplied by cos(f/n + x) added to horizontal

Sawtooth(f/n) multiplied by cos((f/n + x)/3) added to horizontal

## Installing Pure Data

### Pd (vanilla)? Pd-extended? Pd-l2ork? Purr-Data?

#### Pd (vanilla)
Version in the Raspbian repository, 0.46.2.  Doesn't work with mushrooms.pd.

#### Pd-extended
Pd‐extended is a fork of Pd Vanilla, including extra features and external libraries. It's outdated, abandoned and there's no support.

#### Pd-l2ork
Linux Laptop Orchestra (Pd-l2ork) is a fork of Pd-extended. Using this version on Raspberry Pi.

#### Purr-Data
Version 2.0 of Pd-l2ork.  


Downloads and instructions here: http://l2ork.music.vt.edu/main/make-your-own-l2ork/software/

## Installation Errors
Missing dependencies, for example the Ubuntu install has these errors:

```
 pd-l2ork depends on libftgl2 (>= 2.1.3~rc5); however:
  Package libftgl2 is not installed.
 pd-l2ork depends on libgsl2; however:
  Package libgsl2 is not installed.
 pd-l2ork depends on libpng12-0 (>= 1.2.13-4); however:
  Package libpng12-0 is not installed.
```

The installation will work, even with the errors, but it leaves the package system in a broken state.  You woun't be able to install anything else until the errors are cleared.

The work-around is to remove the dependencies from the *.deb control file:

```
    dpkg-deb -x pd-l2ork.deb tmpdir
    dpkg-deb --control pd-l2ork.deb tmpdir/DEBIAN
    nano tmpdir/DEBIAN/control
    dpkg -b tmpdir pd-l2ork-modified.deb
```

...and reinstall.
