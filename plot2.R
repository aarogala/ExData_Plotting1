data_all<-read.table('household_power_consumption.txt',header = TRUE, sep = ";")
mydata<-data_all[(data_all$Date=='1/2/2007')|(data_all$Date=='2/2/2007'),]


png(file='plot2.png')

Data_weekdays<-strptime(paste(mydata$Date,mydata$Time),'%d/%m/%Y %H:%M:%S')
Global_active_power_num<-as.numeric(as.character(mydata$Global_active_power))

plot(Data_weekdays,Global_active_power_num,type='n', xlab='', ylab='Global Active Power (kilowatts)')
lines(Data_weekdays,Global_active_power_num)

dev.off()