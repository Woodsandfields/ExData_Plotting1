
##################RETRIEVING AND PREPARING THE DATA ################################

##Dataset names

my_file <-"household_power_consumption.txt"
HPC_Dataset <- "household_power_consumption.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## Download, unzip, and prepare the dataset if not already there:

if (!exists("hpc_data2")){
        
        if (!file.exists("household_power_consumption.txt")) {
                if (!file.exists(HPC_Dataset)){
                        download.file(fileURL, HPC_Dataset)
                }

        }
        my_file <- unzip(HPC_Dataset)
        my_table <- read.table(my_file, header = TRUE, sep = ";", stringsAsFactors = FALSE)
        
        ##subsetting 
        my_data <- subset(my_table, my_table$Date == "1/2/2007" | my_table$Date == "2/2/2007")
        rm(my_table)
        
        ## merging & converting Date & Time to appropriate format (2 columns -> 1 column)
        TDate <- paste(my_data$Date, my_data$Time)
        hpc_data2 <- cbind(TDate, my_data[,3:9])
        hpc_data2$TDate <- strptime(hpc_data2$TDate, format = "%d/%m/%Y %H:%M:%S")
        
        ## converting character to numbers in other variable columns
        hpc_data2$Global_active_power <- as.numeric(hpc_data2$Global_active_power)
        hpc_data2$Global_reactive_power <- as.numeric(hpc_data2$Global_reactive_power)
        
        ## removing unnecessary files
        rm(HPC_Dataset, fileURL, my_file)
        
}


##################### PLOT 4 : 4 plots  #####################################################


png(filename = "plot4.png")
Sys.setlocale("LC_TIME", "English")
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))
plot(hpc_data2$TDate, hpc_data2$Global_active_power, ylab = "Global Active Power", xlab = "", type = "n")
lines(hpc_data2$TDate, hpc_data2$Global_active_power, type = "l")
plot(hpc_data2$TDate, hpc_data2$Voltage, ylab = "Global Active Power", xlab = "datetime", type = "n")
lines(hpc_data2$TDate, hpc_data2$Voltage, type = "l")
plot(hpc_data2$TDate, hpc_data2$Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "n")
lines(hpc_data2$TDate, hpc_data2$Sub_metering_1, type = "l", col = "black")
lines(hpc_data2$TDate, hpc_data2$Sub_metering_2, type = "l", col = "red")
lines(hpc_data2$TDate, hpc_data2$Sub_metering_3, type = "l", col = "blue")
legend("topright", pch = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
plot(hpc_data2$TDate, hpc_data2$Global_reactive_power, ylab = "Global_reactive_power", xlab = "datetime", type = "n")
lines(hpc_data2$TDate, hpc_data2$Global_reactive_power, type = "l")
dev.off()