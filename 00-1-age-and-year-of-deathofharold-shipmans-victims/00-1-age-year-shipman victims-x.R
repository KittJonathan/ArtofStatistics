library(tidyverse)

df <- read_csv("00-1-age-and-year-of-deathofharold-shipmans-victims/00-1-shipman-confirmed-victims-x.csv") 

head(df)

ggplot(data = df,
       aes(x = fractionalDeathYear, y = Age,
           col = reorder(gender2, gender))) +
  geom_point(size = 2) +
  labs(x = "Year", y = "Age of victim") +
  scale_x_continuous(breaks = seq(1975, 1995, 5),
                     limits = c(1974, 1998)) +
  scale_y_continuous(breaks = seq(40, 90, 10),
                     limits = c(39, 95)) +
  scale_color_brewer(name = "Set1") +
  theme_bw() +
  theme(legend.position.inside = c(0.125, 1.12),
        legend.background = element_rect(colour = "black"),
        legend.title = element_blank())
