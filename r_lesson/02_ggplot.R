library(ggplot2)

#datafram
#variables
#visualization

gapminder <- read.csv("gapminder.csv", stringsAsFactors = TRUE)

ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) 
      + geom_point()

ggplot(data = gapminder, mapping = aes
       (x = year, y = lifeExp)) + geom_point()

ggplot(data = gapminder, mapping = aes
       (x = year, y = lifeExp, color = continent)) + geom_point()

ggplot(data = gapminder, mapping = aes
       (x = year, y = lifeExp, color = continent, 
         by = country)) + geom_point()

ggplot(data = gapminder, mapping = aes
       (x = year, y = lifeExp, color = continent, 
         by = country)) + geom_line()

ggplot(data = gapminder, mapping = aes
       (x = year, y = lifeExp, color = continent, 
         by = country)) + geom_point() + geom_line()

?geom_line()

lifeExpYear <- ggplot(data = gapminder, mapping = aes(
  x = year, y = lifeExp, by = country
  )) + geom_line(mapping = aes (color=continent)) + geom_point() 

?ggsave()
ggsave(filename = "lifeExp_vs_year.png", lifeExpYear )

lifeExpYear <- ggplot(data = gapminder, mapping = aes(
  x = year, y = lifeExp, by = country
)) + geom_point() + geom_line(mapping = aes (color=continent)) 

#Fitting Models
ggplot(data = gapminder, 
       mapping = aes(x = gdpPercap, 
                     y = lifeExp)) + 
  geom_point() + 
  scale_x_log10()

ggplot(data = gapminder, 
       mapping = aes(x = gdpPercap, 
                     y = lifeExp)) + 
  geom_point() + 
  scale_x_log10() + 
  geom_smooth(method = 'lm')

?geom_smooth()

#Exercises answer
ggplot(data = gapminder, 
       mapping = aes(x = gdpPercap, 
                     y = lifeExp, 
                     color = continent)) + 
  geom_point(size =3, shape = 17) + 
  scale_x_log10() + 
  geom_smooth(method = 'lm')

ggplot(data = gapminder,
       mapping = aes(x = gdpPercap,
                     color = continent)) +
  geom_density()

ggplot(data = gapminder,
       mapping = aes(x = gdpPercap,
                     fill = continent)) +
  geom_density()

ggplot(data = gapminder,
       mapping = aes(x = gdpPercap,
                     color = continent)) +
  geom_density() + 
  scale_x_log10() +
  facet_wrap(~ continent)
  







