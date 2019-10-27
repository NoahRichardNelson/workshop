3 + 2
4 / 2
2 * (4+2)
(4
  + 2)

#Data type
Data type
# NUMBER TYPE
3
2.4
4.666

class(3)

3L
class(3L)
as.integer(3)
class(as.integer(3))

as.integer()

3 +1i
class(3+1i)

#word type
'dog'
'plant'
class('dog')
TRUE
FALSE
'true'

300 > 200
3 == 3L
class(3) == class(3L)

FALSE == FALSE
10 - 5 == sqrt(25)
TRUE > FALSE
'a' > 'b'

#variable
my_var = 'tucson'
dog <- 3

.day <- 1

# complpex variable names
probl.lm
probl_lm
probLm

x <- 3
y <- 2
y <- 17.4
x+y

#Data structure
# Vector
1:10
num_vect <- 1:10
logic_vect <- c(TRUE, FALSE, TRUE)
chac_vect <- c('Matt', "Asher", "Sarah")

class(num_vect)
class(logic_vect)
class(chac_vect)

mixed <- c(TRUE, "A")
mixed
class(mixed)

#list 
my_list <- list(1, "A", TRUE)

#matrix
m <- matrix(nrow=2, ncol=3 )
m <- matrix(1:6, nrow=2, ncol=3 )
m <- matrix(1:6, nrow=2, ncol=3, byrow = TRUE)

?matrix

#DataFrame
df <- data.frame(id=letters[1:10], x=1:10, y = 11:20)
df
class(df)
class(m)
ncol(df)
nrow(df)
dim(df)
str(df)
summary(df)

fact <- c(rep(1, 4), rep(2,3), rep(3,5))

cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))
cats
getwd()
write.csv(x=cats, file = "cats_data.csv", row.names = FALSE)
cats2 <- read.csv(file="cats_data.csv")
?read.csv()

cats$coat
cats$weight + 2

age <- c(3,4,5)
cbind(cats, age)
rbind()

###Load gapminder data
gapminder <- read.csv(file = "gapminder.csv")
str(gapminder)
head(gapminder)
tail(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
summary(gapminder)
colnames(gapminder)

str(gapminder)
summary(gapminder)
colnames(gapminder)
dim(gapminder)
min(gapminder$year)
mean(gapminder$lifeExp)
max(gapminder$pop)

#Subsetting the data
gapminder[1,1]
gapminder[1:5, 6]
colnames(gapminder)
gapminder[20:22, 3:6]

gapminder[-3:-1704,]
gapminer2 <- gapminder[-3:-1704,-3:-4]

head(gapminder[, 'lifeExp'])
head(gapminder[, c('lifeExp', 'pop')])

head(gapminder[gapminder$year == 1997, ])
gapminder[gapminder$country == 'Gabon' & gapminder$year == 1997, c(4,6)]
gapminder[gapminder$country == 'Gabon' , c(4,6)][gapminder$year == 1997,]
