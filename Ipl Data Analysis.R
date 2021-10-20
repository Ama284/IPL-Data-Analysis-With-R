#Which team has won most number of Matches 
#how many matches were played so far as per the dataset.

library(tidyverse)
matches<-read.csv("C:/Users/ASUS/Dropbox/PC/Downloads/IPL Matches 2008-2020.csv", stringsAsFactors = FALSE)
matches%>% drop_na
View(matches)
deliveries<-read.csv("C:/Users/ASUS/Dropbox/PC/Downloads/Deliveries.csv", stringsAsFactors = FALSE)
View(deliveries)
head(deliveries)
head(matches)

#Total number of matches played so far as per dataset
count(matches)
matches %>%summarise(total_number = n())

matches %>% head()

#Which team has won most number of matches 

matches %>% group_by(winner) %>% summarise(wins = n()) %>% filter(wins == max(wins))

#Plot graph

matches %>% group_by(winner)%>% summarise(wins =n()) %>% ggplot(aes(x=winner, y=wins,fill=winner))+ geom_bar(stat ='identity')+coord_flip()+scale_y_continuous('Total Matches Won')
                                            