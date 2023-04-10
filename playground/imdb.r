#importing dataset
imdb = read.csv("movie.csv")
View(imdb)

#check and replace special char
imdb$years = gsub("\\(|\\)","",imdb$years)

imdb$time = gsub("min","",imdb$time)
View(imdb)

#checking datatypes
str(imdb)

#converting datatype
imdb$years <- as.numeric(imdb$years)
imdb$time <- as.numeric(imdb$time)

str(imdb)

#remove a column
imdb <- subset(imdb,select=-(X))
View(imdb)

#rearranging of Columns
imdb <- imdb[c("rank","titile")]
View(imdb)

#creating missing values
imdb[1,5]