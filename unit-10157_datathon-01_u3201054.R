## Applied Data Analysis in Sport 10157
## Hackathon 1
## u3201054

## load tidyverse
library(tidyverse)


## Read in and save data in df object 
df <- read_csv("data/2015-16_wleague_shot-data.csv")

## Question 11 code goes here
ggplot(df, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + 




## Question 12 code goes here





## Question 13 code goes here





## Question 14 code goes here
df %>%
  group_by(outcome) %>%
  summarise(mean_distance = mean(distance_to_goal), sd_distance = sd(distance_to_goal))




## Question 15 code goes here

#filter data, create goal variable and assign to new object
df2 <- df %>%
  filter(attacking_team == "Canberra") %>%
  mutate(goal = if_else(outcome == "Missed" | outcome == "Saved" | outcome == "Blocked", "no", "yes"))

#create plot
ggplot(df2, aes(x = x_axis, y = y_axis)) +
  geom_point(size=2, shape=23)
  xlim(c(0, 110)) +
  ylim(c(0, 65))




## Question 16 code goes here





## Question 17 code goes here
  
n_goals_for <- df %>%
  filter(attacking_team, outcome == "Goal") %>%
  summarise(team = attacking_team, goals_for = count(attacking_team, outcome))




## Question 18 code goes here





## Question 19 code goes here





## Question 20 code goes here