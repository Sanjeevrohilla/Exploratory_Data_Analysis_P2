a1<- merge(NEI,SCC,by = "SCC")
b1<- grepl("Coal",a1$Short.Name,ignore.case = TRUE)
suba1<- a1[b1,]
agg1<- with(a1,aggregate(Emissions,by = list(year),sum))
 png("plot4.png")
c<- ggplot(agg1,aes( x= factor(Group.1),y = x)) c<- c + geom_bar(stat = "identity",col = "green") + xlab("Year") + ylab("Emissions") + ggtitle("Total Emissions from Coal Sources from 1999 to 2008")
 print(c)
 dev.off()
