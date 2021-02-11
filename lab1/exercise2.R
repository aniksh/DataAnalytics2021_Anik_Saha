EPILand <- EPI[!Landlock]
ELand <- EPILand[!is.na(EPILand)]
par(pty="m")
hist(ELand)
hist(ELand, seq(30., 95., 1.), prob = TRUE)
lines(density(ELand, na.rm = TRUE, bw = 1.))
rug(ELand)

plot(ecdf(ELand), do.points = FALSE, verticals = TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)

EPI_South_Asia <- EPI[EPI_regions=="South Asia"]
par(pty="m")
hist(EPI_South_Asia)
hist(EPI_South_Asia, seq(40., 70., 1.), prob = TRUE)
lines(density(EPI_South_Asia, na.rm = TRUE, bw = 1.))
rug(EPI_South_Asia)
