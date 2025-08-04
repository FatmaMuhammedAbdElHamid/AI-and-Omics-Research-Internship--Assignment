getwd()

# creat project folder
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")

# import cvs file
data <- read.csv(file.choose())

# view data
View(data)

# check stucture
str(data)

# convert gender to factor
data$gender_factor <- as.factor(data$gender)
str(data)

# convert factor to numric factor:
# convert factor to numric
data$gender_num <- ifelse(data$gender_factor == "Female",1,0)
class(data$gender_num)
# convert numric gender code to factor
data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)

# convert diagnosis to factor
data$diagnosis_fac <- as.factor(data$diagnosis)
str(data)

# set factor level order manually 
data$diagnosis_fac <- factor(data$diagnosis_fac, levels = c("Normal","Cancer"))
levels(data$diagnosis_fac)
str(data)

# convert smoker to factor
data$smoker_fac <- as.factor(data$smoker)
str(data)

# Create a new variable for smoking: 1 for "Yes", 0 for "No"
data$smoker_num <- ifelse(data$smoker_fac == "No",0,1 )
