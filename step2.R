library(dplyr)
dat <- readRDS("events_past_year.rds")

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


