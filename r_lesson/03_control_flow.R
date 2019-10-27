for (my_var in 1:10){
  print(my_var)
}

# this in Unix would read somewhat like... 
# for my_var in 1:10 do print(my_var) done

#paste
paste0("I am a ", 5)

#loops in loops
for (i in 1:3){
  for (j in letters[1:3]){
    print(paste(i, j))
  }
}


c <- c()
c
for (i in 1:5){
  c <- c(c, i^2)
  print(c)
}


# "x continent has a life expectancy between _ and _"
unique(gapminder$continent)


for (cont in unique(gapminder$continent)){
  min_life <- min(gapminder[gapminder$continent == cont, 'lifeExp'])
  max_life <- max(gapminder[gapminder$continent == cont, 'lifeExp'])
  print(paste(cont, 
              "has a life expectancy between", 
              min_life, 
              "and", 
              max_life))
}

# do a loop to print the mean life exp by continent 
for(cont in unique(gapminder$continent)){
  mean_life <- mean(gapminder[gapminder$continent == cont, "lifeExp"])
  print(paste(cont,
              "has a mean life expectanct of",
              mean_life))
}

# conditionals

x <- -5
if(x > 0){
  print("positive number")
}

# if else
if(x > 0){
  print("positive number")
} else{
  print('negative number')
}

x <- 0
x <- -5

if(x > 0){
  print("positive number")
} else if (x < 0){
  print('negative number')
}

x <- 3
if (x == 3){
  print('three!')
} else if(x > 0){
  print("positive number")
}  else if (x < 0){
  print('negative number')
} 

# nesting 
if(x > 0){
  print("positive number")
  if (x == 3){
    print('three!')
  } 
}  else if (x < 0){
  print('negative number')
} 

# loops and conditional statements 
for (i in c(-1, 3, 0, -7)){
  if (i>0){
    print("positive number")
  } else if (i<0){
    print("negative number")
  } else{
    print("zero")
  }
}

#gapminder with loops and conditional statements

mean_lifeExp_gapminder <- mean(gapminder$lifeExp)


#find which continents have a mean lifeExp above the mean_lifeExp_gapminder 
# (mean of the whole lifeExp column)

for (cont in unique(gapminder$continent)){
  if (mean(gapminder[gapminder$continent == cont, 'lifeExp']) > 
      mean_lifeExp_gapminder){
    print(paste(cont, "has a mean life expectanct greater than the average for the world"))
  }
}

firstq <- summary(gapminder[gapminder$year == 2007,]$gdpPercap)[2]
med <- summary(gapminder[gapminder$year == 2007,]$gdpPercap)[3]
thirdq <- summary(gapminder[gapminder$year == 2007,]$gdpPercap)[5]

for (country in unique(gapminder$country)){
  country_gdp <- gapminder[gapminder$country == country & 
                             gapminder$year == 2007, 'gdpPercap']
  if (country_gdp <= firstq) {
    print(paste(country, "has a gdp at or below the first quartile"))
  } else if (country_gdp == med) {
    print(paste(country, "has a gdp at the median"))
  } else if (country_gdp >= thirdq) {
    print(paste(country, "has a gdp at or above the third quartile"))
  }
}



















