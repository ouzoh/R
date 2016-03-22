# Up and Running with R
# Ex06_02
# Computing a regression

# Load data file about Google searches by state
google <- read.csv("google_correlate.csv", header = T)
names(google)

#predicting interest in data visualisation
#multiple regression model
reg1 <- lm(data_viz ~ #linear model #lm
           degree + stats_ed + facebook + nba + has_nba + region,
           data = google)
summary(reg1)
# '*' signifies important statistical significant data