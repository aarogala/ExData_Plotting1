data_all<-read.table('household_power_consumption.txt',header = TRUE, sep = ";")
mydata<-data_all[(data_all$Date=='1/2/2007')|(data_all$Date=='2/2/2007'),]

png(file='plot4.png')

Data_weekdays<-strptime(paste(mydata$Date,mydata$Time),'%d/%m/%Y %H:%M:%S')
par(mfcol=c(2,2))

Global_active_power_num<-as.numeric(as.character(mydata$Global_active_power))

plot(Data_weekdays,Global_active_power_num,type='n', xlab='', ylab='Global Active Power')
lines(Data_weekdays,Global_active_power_num)


Global_active_power_num<-as.numeric(as.character(mydata$Global_active_power))
Sub_metering_1<-as.numeric(as.character(mydata$Sub_metering_1))
Sub_metering_2<-as.numeric(as.character(mydata$Sub_metering_2))


plot(Data_weekdays,Sub_metering_1,type='n', xlab='', ylab='Energy sub metering')
lines(Data_weekdays,Sub_metering_1)
lines(Data_weekdays,Sub_metering_2, col='red')
lines(Data_weekdays,mydata$Sub_metering_3, col='blue')
legend('topright',col=c('black','red','blue'),
       lwd=c(1,1,1),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), bty = 'n')



Voltage_num<-as.numeric(as.character(mydata$Voltage))

plot(Data_weekdays,Voltage_num,type='n', xlab='datetime', ylab='Voltage')
lines(Data_weekdays,Voltage_num)


Global_reactive_power_num<-as.numeric(as.character(mydata$Global_reactive_power))

plot(Data_weekdays,Global_reactive_power_num,type='n', xlab='datetime', ylab='Global_reactive_power_num')
lines(Data_weekdays,Global_reactive_power_num)

dev.off()
