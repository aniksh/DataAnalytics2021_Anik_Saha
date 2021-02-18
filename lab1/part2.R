mvar <- read.csv('multivariate.csv')
attach(mvar)

mm <- lm(Homeowners~Immigrant)
mm
help(lm)
summary(mm)
