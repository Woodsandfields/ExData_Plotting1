*The following presentation is closely adapted from the original README file of the forked repository. Most assignments of the Data specialization curriculum were usually submitted through the internal platform for confidentiality reasons (to prevent plagiarism). This was an exercise to be submitted via Github.*  

## Introduction

This assignment has been made for the Data Specialization track offered by Johns Hopkins University with Coursera.
It uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we use the "Individual household
electric power consumption Data Set":


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.

## Variables

The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data

*Professor Roger Peng wrote these indications to help the students load the data:*

> If you intend to load the dataset into R for yourself, please consider the following:

> The dataset has 2,075,259 rows and 9 columns. First
calculate a rough estimate of how much memory the dataset will require
in memory before reading into R. Make sure your computer has enough
memory (most modern computers should be fine).

> For this repo assignment we only used data from the dates 2007-02-01 and
2007-02-02. One alternative is to read the data from just those dates
rather than reading in the entire dataset and subsetting to those
dates.

> You may find it useful to convert the Date and Time variables to
Date/Time classes in R.

> Note that in this dataset missing values are coded as `?`.


## Making Plots

Our overall goal here was simply to examine how household energy usage
varies over a 2-day period in February, 2007. Our task was to
reconstruct the following plots below, all of which were constructed
using the base plotting system.

First we had to fork and clone the following GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)


For each plot then we had to:

* Construct the plot and save it to a PNG file with a width of 480
pixels and a height of 480 pixels (these dimensions are the defaults for the png graphics device).

* Name each of the plot files as `plot1.png`, `plot2.png`, etc.

* Create a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot. Our code file **should include code for reading
the data** so that the plot can be fully reproduced. We had also to
include the code that creates the PNG file.

* Add the PNG file and R code file to our git repository and push it to github

There are four PNG files and four R code files ready to be peer-evaluated by my fellow students of the Data Specialization track offered by Johns Hopkins University on Coursera.


The four plots that I had to reproduce are shown below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

