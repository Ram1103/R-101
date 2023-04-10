#web scrapping type 1
#installing libraries - robotstxt,rvest
#importing libraries
library(robotstxt)
library(rvest)

#scrapping website
url <-"https://www.imdb.com/chart/top/"

#allowability
path = paths_allowed(url)

#HTML elements from the website
my_html <- read_html(url)
View(my_html)

#searching tables
my_tables <- html_nodes(my_html,'table')
View(my_tables)

#extracting table
movie_table <- html_table(my_tables)[[1]]
View(movie_table)

#saving data
write.csv(movie_table,"movie.csv")

#checking datatype
str(movie_table)
