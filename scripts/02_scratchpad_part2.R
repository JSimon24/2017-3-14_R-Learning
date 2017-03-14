cats <- read.csv(file = "raw_data/feline_data.csv")
cats$weight

cats$coat

cats$weight + 2

cats$new_weight <- cats$weight + 2
cats

paste("my cat is", cats$coat)

typeof(cats$weight)
# the output "double" indicates that it's a numeral that's a noninteger

typeof(1L)

typeof(1 +1i)

typeof(TRUE)

typeof("banana")
# these all tell you what the input is (e.g. a character, logical or integer)

class(cats)
# tells you what the data structure is (e.g. vector, data frame, etc)

my_vector <- vector(length =3)

another_vector <- vector(mode = "character", length = 3)

str(another_vector)
str(cats)

mixed_vector <- c(2, 3, "a")
typeof(mixed_vector)

coercion_vector <- c("a", TRUE)
coercion_vector
typeof(coercion_vector)

another_coercion_vector <- c(0, TRUE)
another_coercion_vector
typeof(another_coercion_vector)

cats

character_vector_example <- c("0", "2", "4")
character_vector_example
str(character_vector_example)

character_coerced_to_numeric <- as.numeric(character_vector_example)
str(character_coerced_to_numeric)

cats$likes_string
str(cats$likes_string)
cats$likes_string <- as.logical(cats$likes_string)
str(cats$likes_string)

v <- c(1, 2, 3)
v <- c(v, 4, 5, 6)
1:10
seq(1, 10, by = 0.1)

# Challenge 1 in data capentry unit
challenge_1 <- c(1:26)
challenge_1 * 2
str(challenge_1)
twice_challenge_1 <- challenge_1 * 2
names(twice_challenge_1) <- LETTERS
twice_challenge_1

