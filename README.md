# NASA - Technical Challenge

## Exploring  Mars

Let's imagine that a group of probes were sent by NASA to Mars and will land on a plateau. In this plateau, which is curiosly rectangular, must be explored by the probe throughly, so a full picture of the area and send them back to Earth.
The probe position and direction are represented by a array X-Y and a letter representing the cardinal point from the compass card.
The plateau is divided in an array to simplify navigating it. An example of a position would be (0,0,N) which tells us that the probe is on the on the lower left corner pointed to North.
To control it, NASA send a simple sequence of letters, which represents:
L = Turn left
R = Turn right
M = Move forward
In this array, the North is represented by (x,y+1).

## Data Format

The first line to be inserted is the coordinates for the upper right corner from the plateau array
The next lines are the starting coordinates from a probe, and the movements that it is required.
The output is represented by one line with the coordinates and direction of the probe.

## Examples
#### Data entry:
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM

## Expected Output:
1 3 N
5 1 E

This software is product of an technical evaluation process.
