install.packages("dplyr")
library(dplyr)

glimpse(gapminder)

# select
select(gapminder, year)
select(gapminder, year, lifeExp, country)
select(gapminder, -year)

# filter 
filter(gapminder, continent == "Asia")
filter(gapminder, continent != "Oceania")
filter(gapminder, year > 2000)

two_countries <- c("Albania", "Dominican Republic")
filter(gapminder, country %in% two_countries)

# piping
min(gapminder[,'lifeExp'])
gapminder %>% select(lifeExp) %>% min()
  
# cntrl + shift + m
x1 <- 1:5
x2 <- 2:6 
(x1-x2)^2 %>% sum() %>% sqrt()

gapminder %>% 
  select(-pop, -gdpPercap) %>% 
  filter(continent == "Asia" | continent == "Oceania") 

# mutate
mean_lifeExp_gapminder
gapminder %>% mutate(NewColumn = lifeExp - mean_lifeExp_gapminder)
gapminder <- gapminder %>% mutate(NewColumn = lifeExp - mean_lifeExp_gapminder)
glimpse(gapminder)
select(gapminder, -NewColumn)
gapminder <- gapminder %>% select(-NewColumn)

# filter for africa, select only lifeExp, country, and year
gapminder %>% 
  filter(continent == "Africa") %>% 
  select(country, lifeExp, year) %>% 
  glimpse()
  



# group_by
gapminder %>% 
  group_by(continent)

# summarize 
gapminder %>% 
  group_by(continent) %>% 
  summarize(MeanLife = mean(lifeExp))

gapminder %>% 
  group_by(continent, year) %>% 
  summarize(MeanLife = (mean(lifeExp)))

gapminder %>% 
  group_by(continent, year) %>% 
  summarize(MeanLife = (mean(lifeExp)),
            SeLife = sd(lifeExp)/sqrt(n())) %>% 
  ggplot(mapping = aes(x = year, 
                       y = MeanLife, 
                       color = continent)) +
  geom_line() +
  geom_errorbar(mapping = aes(ymin = MeanLife - SeLife,
                              ymax = MeanLife + SeLife,
                              width = 0.3))

gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarize(count = n())

gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarize(n = n()) %>% 
  mutate(count = sum(n),
        proportion = n / sum(n))


gapminder %>% 
  group_by(country) %>% 
  summarise(MeanLife = mean(lifeExp)) %>% 
  filter(MeanLife == min(MeanLife) | MeanLife == max(MeanLife))


