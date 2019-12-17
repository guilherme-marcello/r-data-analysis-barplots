library(dplyr)
#step 1
dat <- readRDS("events_past_year.rds")

#step 2
for (i in 1:nrow(dat))
{
  dat$venue_country[i] <- toupper(dat$venue_country[i])
}

city <- dat$venue_city
country <- dat$venue_country
count_of_events_country <- as.data.frame(table(country))
count_of_events_city <- as.data.frame(table(city))

View(count_of_events_city)
View(count_of_events_country)

#STEP 3
groups <- dat$group_name
count_of_events_per_group <- as.data.frame(table(groups))

View(count_of_events_per_group)

top <- count_of_events_per_group[with(count_of_events_per_group,order(-Freq)),]
top50 <- top[1:50,]
View(top50)

#STEP 4
barplot(top50$Freq, main="Count of events",
        xlab="Groups")