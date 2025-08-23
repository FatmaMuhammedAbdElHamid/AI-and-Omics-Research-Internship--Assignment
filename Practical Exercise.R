#### Patient_info ####

data <- read.csv(file.choose())
View(data)
str(data)

# create a copy of data
data_clean <- data
str(data_clean)

# gender: categorical data type should be factor
# diagnosis: also categorical data type
# smoker: should convert to factor

# make gender,diagnosis and smoker in a variable it name is (factor_cols)
factor_cols <- c("gender","diagnosis","smoker")

# use for loop function to convert 3 columns automatically into factor 
for (col in factor_cols) { data_clean[[col]] <- as.factor(data_clean[[col]])  
}
str(data_clean)

# convert factor to numeric
binary_cols <- c ("smoker")

for (col in binary_cols) {
  data_clean[[col]] <- ifelse(data_clean[[col]] =="No",0,1)
}

# to see the data_clean 
str(data_clean)
View(data_clean)


#### Metadata ####

# to download the data

meta_data <- read.csv(file.choose())

# to see the data
View(meta_data)

# to known the structure of data
str(meta_data)

# to save the meta_data clean 
# make a copy to work in it
meta_data_clean <- meta_data
str(meta_data_clean)

# height must be factor not character
# gender also is a factor not be a chacter

# make "height and gender in a variable it name is (factor_cols)
factor_cols <- c("height","gender")

# use for loop function to convert 2 columns automatically into factor 
for (col in factor_cols) { meta_data_clean[[col]] <- as.factor(meta_data_clean[[col]])  
}
str(meta_data_clean)

# convert factor to numric
binary_cols  <- c ("height")

for (col in binary_cols) {
  meta_data_clean[[col]] <- ifelse( meta_data_clean[[col]] =="Tall",0,1)
}

str(meta_data_clean)
View(meta_data_clean)
