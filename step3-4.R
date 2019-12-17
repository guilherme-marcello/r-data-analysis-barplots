dat <- readRDS("events_past_year.rds")

groups <- dat$group_name
count_of_events_per_group <- as.data.frame(table(groups))

View(count_of_events_per_group)

#STEP 3
top <- count_of_events_per_group[with(count_of_events_per_group,order(-Freq)),]
top50 <- top[1:50,]
View(top50)

#STEP 4
barplot(top50$Freq, main="Count of events",
        xlab="Groups")