my_list <- list(a = 1,
           b = c(1,2,3),
           c= "banana")
my_list
my_list$b

my_df <- data.frame(a = 1:3,
           b = c(1,3,4), 
           c= rep("banana", 3))

cats <- read.csv("raw_data/feline_data.csv")

colnames(my_df)
colnames(cats)

nrow(my_df)

age <- c(2,3,4)

cats <- cbind(cats, age)
cats$age2 <- c(2,3,4)
cats

new.cat <- list("black", 3.1, 0, 8, 7)

cats <- rbind(cats, new.cat)
cats

new.cat2 <- list("tortoiseshell", 3.5, 1, 5, 5)

rbind(cats, new.cat2)

str(cats$coat)
# because R is only recognizing 3 types of coats (level) than the addition of a new factor is not recognized.
# It must first be added.

levels(cats$coat) <- c(levels(cats$coat),
                       "tortoiseshell")
str(cats$coat)

rbind(cats, new.cat2)
cats <- rbind(cats, new.cat2)
cats

levels(cats$coat)[4] <- "ginger"
cats

cats <- rbind(cats, cats)
cats
cats[1,1]
cats[,2]
cats[1,1]

gap.df <- read.csv("raw_data/gapminder-FiveYearData.csv")

nrow(gap.df)
colnames(gap.df)
str(gap.df)

head(gap.df)

length(gap.df)

# subsetting

gap.df[1:3,]

cats[-1,]

cats
cats[cats$coat == "black" &
       cats$likes_string == 0, ]

play.df <- head(gap.df[gap.df$country == "Afghanistan", ], n=20)
play.df

play.df <- gap.df[gap.df$country %in%
                    c("Afghanistan", "Slovenia"), ]
play.df


cats[1]
cats[[1]]

gapminder <- gap.df

# Challenge 7 in section 6
gapminder[gapminder$year == 1957,]

gapminder[ ,5:6]
gapminder[ ,-c(1:4)]
gapminder[ , -1:-4]

gapminder[gapminder$lifeExp > 80,]
# row,columns so we were missing the comma to distinguish rows

gapminder[1, c(4, 5)]
gapminder[1, 4:5]

# gapminder[gapminder$year == 2002 | 2007,]
# Advanced: extract rows that contain information for the years 2002 and 2007
gapminder[gapminder$year == 2002 | gapminder$year == 2007,]
gapminder[gapminder$year %in% c(2002, 2007),]


for (j in 1:3){
  for(i in cats$coat){
    print(paste("The coat color of the cat is", i, "and j is", j))
  }
  }
  
paste("The coat color of the cat is", cats$coat)  
# serves the same function as the for loop but is simplified

x <- runif(1)
if (x <= .5) {
  print("heads")
} else {
  print("tails")
}

x
x <- runif(14)
x

ifelse(x <= .5,
  print("heads"),
  print("tails"))

