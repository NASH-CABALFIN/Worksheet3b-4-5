#Worksheet 4
#Nash Julian Cabalfin BsIT 2-A

#1)
data_frame <- data.frame(Shoe_size= c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0, 7.5,
                                      10.5, 8.5, 12.0, 10.5), 
                         Height= c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0,
                                   64.0, 74.5, 67.0, 71.0, 71.0), 
                         Gender= c("F", "F", "F", "F", "M", "F", "F", "F", "M", "F", "M",
                                   "F", "M", "M"), 
                         Shoe_size2= c(13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5,
                                       10.5, 11.0, 9.0, 13.0),
                         Height2= c(77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 67.0, 73.0,
                                    69.0, 72.0, 70.0, 69.0, 70.0),
                         Gender2= c("M", "M", "F", "F", "M", "F", "F", "M", "M", "F", "M",
                                    "M", "M", "M"))
data_frame

#a. 
#Data for estimating shoe sizes was collected from a combination of male and female respondents.  
#I added a two to the end of the names of the other three variables because 
#I believed it might confuse the R program because there are three variables with the same name.
#I made an effort to adhere to the variable names of the provided
#data, but the end of the other three variable names all had a 1 in them.


#b.
#Gender Male Shoe_size and Height mean. 

data1 <- subset(data_frame[1:14, 1:3])
data1
male_only <- data1[data_frame$Gender == 'M',]
male_only
mean_male <- mean(male_only$Shoe_size)
mean_male
height_male <- mean(male_only$Height)
height_male

#Gender Male Shoe_size2 and Height2 mean. 
data2 <- subset(data_frame[1:14, 4:6])
data2
male_only2 <- data2[data_frame$Gender2 == 'M',]
male_only2
mean_male2 <- mean(male_only2$Shoe_size2)
mean_male2
height_male2 <- mean(male_only2$Height2)
height_male2

#Gender Female Shoe_size and Height mean. 
data3 <- subset(data_frame[1:14, 1:3])
data3
female_only3 <- data3[data_frame$Gender == 'F',]
female_only3
mean_female3 <- mean(female_only3$Shoe_size)
mean_female3
height_female3 <- mean(female_only3$Height)
height_female3

#Gender Female Shoe_size2 and Height2 mean 
data4 <- subset(data_frame[1:14, 4:6])
data4
female_only4 <- data4[data_frame$Gender2 == 'F',]
female_only4

mean_female4 <- mean(female_only4$Shoe_size2)
mean_female4
height_female4 <- mean(female_only4$Height2)
height_female4


#c.
#The first three columns, the average shoe size for male respondents is 11.3 and the 
#height is 71.7. For the female respondents the average shoe size is 8.222222 and the 
#height is 66.61111.
#For the last three columns, the average shoe size for male respondents is 10.77778
#and the height is 71.33333. For the female respondents the average shoe size is 7.2 
#and the height is 64.
#The relationship of shoe size and height for the first three columns is that the male 
#respondents are mostly tall and they have a larger feet for the female they have
#smaller feet and short in height. 
#I could still say the same about the last three columns the male respondents have 
#larger feet and tall in height. The female are short in height and have smaller feet. 


#2)
months_vector <- c("March","April","January","November","January", "September",
            "October","September","November","August", "January","November",
            "November","February","May","August", "July","December","August",
            "August","September","November","February","April")
factor_months_vector <- factor(months_vector)
print(factor_months_vector)

#3)
summary(months_vector)
summary(factor_months_vector)
 

#4)

Direction <- c("East", "West", "North") 
Frequency <- c(1, 4, 3)
x1 <- factor(Direction)
x2 <- factor(Frequency)
print(x1)
print(x2)

#5)

#a.
getwd()
a<- read.table("import_march.csv", header= TRUE, sep= "," )
a


#b. 
View(a)
#It open another tab in R with the object name that I gave which is a. It displayed 
#the table that I made from excel, at first I used the readxl package to import the 
#file in global environment but the question was to use the read.table. I renamed the 
#file to .csv my first file was in .xlsx then added header and sep. 













