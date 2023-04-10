#code to install packages
install.packages("revest")
install.packages("robotstxt")

#import packages
library(revest)
library(robotstxt)

#check whether the website is allowed to scrap or not
Path <- paths_allowed("https://www.imdb.com/chart/top/")

#assign a variable for the website
url <- "https://www.imdb.com/chart/top/"

#read or extract the HTML code
my_html <- read_html(url)
View(my_html)

#segregate the tables into a separate variable
my_tables <- html_nodes(my_html,"table")
View(my_tables)