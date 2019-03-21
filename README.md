# Oscilloscope-Mushrooms
A Pure Data patch, following Jerobeam Fenderson's "How To Draw Mushrooms On An Oscilloscope With Sound" (https://www.youtube.com/watch?v=rtR63-ecUNo)

## Building a Mushroom

### Step 1
Cos(f) on the vertical, sin(f) on the horizontal

### Step 2
Add Sawtooth(f/n) to the vertical

### Step 3
Horizontal multiplied by sin(f/n)

...but only use the last quarter

### Step 4
Sawtooth(f/n) multiplied by cos(f/n + x) added to horizontal

Sawtooth(f/n) multiplied by cos((f/n + x)/3) added to horizontal

## Installing Pure Data

### Pd (vanilla)? Pd-extended? Pd-l2ork? Purr-Data?

#### Pd (vanilla)
Version in the Raspbian repository, 0.46.2.  Doesn't work with mushroom.pd.

#### Pd-extended
Pd‐extended is a fork of Pd Vanilla, including extra features and external libraries. It's outdated, abandoned and there's no support.
