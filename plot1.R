data_all<-read.table('household_power_consumption.txt',header = TRUE, sep = ";")
mydata<-data_all[(data_all$Date=='1/2/2007')|(data_all$Date=='2/2/2007'),]


png(file='plot1.png')

Global_active_power_num<-as.numeric(as.character(mydata$Global_active_power))
hist(Global_active_power_num, col='red',main='Global Active Power', xlab='Global Active Power (kilowatts)')

dev.off()