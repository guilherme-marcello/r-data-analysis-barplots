# Events-per-city-and-country

#step 1
I read the .rds file as suggested, with readRDS() function.

#step 2
First, I changed all "venue_country" values to uppercase - because to add them they must be uniform - with a loop. After that I created two new variables: "city" and "country". "city" took with it all city values in the dataframe, "country" the same, but country values in the dataframe. From these two columns, I changed the type to table and then dataframe to get the count values (the frequency of each variable, ie how many times it appears)

#step 3-4
In the same way of step2 I created the "count of events dataframe". Then I created the variable "top". This one is the same "count_of_events_per_group", but sorted by frequency. After create "top", I choose the first 50 values from the top.
To step 4, I created a barplot with the data of top 50 groups with more events.
