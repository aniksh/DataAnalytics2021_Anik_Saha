setwd("C:/Users/Anik/Desktop/data-analytics/labs/lab1")

EPIData <- read.csv('2010EPI_data.csv', skip = 1) 
# First row contains excel column names X1, X2 etc. So skipped.
View(EPIData)

attach(EPIData)
fix(EPIData)

EPI
tf <- is.na(EPI)
E <- EPI[!tf] # filters out NA values, new array

summary(EPI)
fivenum(EPI, na.rm = TRUE) # prints the min, q1, median, q3, max

help(stem)
stem(EPI)

help(hist)
hist(EPI)

hist(EPI, seq(30., 95., 1.0), prob=TRUE)
help(lines)
lines(density(EPI, na.rm = TRUE, bw = 1.))
help(rug)
rug(EPI)

help(plot)
plot(ecdf(EPI), do.points = FALSE, verticals = TRUE)
help(par)
par(pty="s")
qqnorm(EPI); qqline(EPI)

x <- seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn"); qqline(x)

par(pty="s")
qqplot(EPI,DALY)
boxplot(EPI,DALY)
