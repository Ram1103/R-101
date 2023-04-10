'''Name ="Shruti"
Age = 21
#numeric
Height = 5.3
#logical
Married <- FALSE
#complex
v <- 4+2i
class(Name)
class(Age)
typeof(Height)
class(Married)
class(v)

a =10
b =30

c = a+b
d = b-a
e = a/b
f = b/a
#g = b//a error
#h = b% errora
h = b%%a
i = a*b

#Getting user input
a = readline("Enter a value:")
print(a)
typeof(a)

b = as.integer(readline("Enter a value:"))
print(b)
typeof(b)'''

#CTC(basic income,house allowance,ta,da - travel-rent-food-entertainment)
basic_income = as.integer(readline("Enter a value:"))
hra = as.integer(readline("Enter a value:"))
ta = as.integer(readline("Enter a value:"))
da= as.integer(readline("Enter a value:"))
rent = as.integer(readline("Enter a value:"))
travel = as.integer(readline("Enter a value:"))
food= as.integer(readline("Enter a value:"))
entertainment= as.integer(readline("Enter a value:"))
print(basic_income)
print(hra)
print(ta)
print(da)
print(rent)
print(travel)
print(food)
print(entertainment)
savings = basic_income + hra + ta + da - rent - food - travel - entertainment
print(savings)
fixed_deposit = 1/3(savings)
print(fixed_deposit)

