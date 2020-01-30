# Exercise 1: exploring the distribution
EPI_data <- read.csv('./csv/EPI_data.csv')
View(EPI_data)
attach(EPI_data)
fix(EPI_data)

# EPI
tf_EPI <- is.na(EPI_data$EPI)
tf_EPI

EPI <- EPI[!tf_EPI]
EPI
summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob = TRUE)
lines(density(EPI, na.rm = TRUE, bw = 1.))
rug(EPI)

# Cumulative density function
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)

# Quantile-Quantile
par(pty='s')
qqnorm(EPI); qqline(EPI)

# Make a Q-Q plot against the generating distribution by: x<-seq(30,95,1)
x<-seq(30, 95, 1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)


# AIR_H
tf_AIR_H <- is.na(EPI_data$AIR_H)
tf_AIR_H

AIR_H <- AIR_H[!tf_AIR_H]
AIR_H
summary(AIR_H)
fivenum(AIR_H, na.rm = TRUE)
stem(AIR_H)
hist(AIR_H)
hist(AIR_H, prob = TRUE)
lines(density(AIR_H, na.rm = TRUE, bw = 1.))
rug(AIR_H)

plot(ecdf(AIR_H), do.points=FALSE, verticals=TRUE)

par(pty='s')
qqnorm(AIR_H); qqline(AIR_H)

x_AIR_H<-seq(30, 95, 1)
qqplot(qt(ppoints(250), df = 5), x_AIR_H, xlab = "Q-Q plot for tdsn")
qqline(x_AIR_H)

# WATER_H
tf_WATER_H <- is.na(EPI_data$WATER_H)
tf_WATER_H

WATER_H <- WATER_H[!tf_WATER_H]
WATER_H
summary(WATER_H)
fivenum(WATER_H, na.rm = TRUE)
stem(WATER_H)
hist(WATER_H)
hist(WATER_H, prob = TRUE)
lines(density(WATER_H, na.rm = TRUE, bw = 1.))
rug(WATER_H)

plot(ecdf(WATER_H), do.points=FALSE, verticals=TRUE)

par(pty='s')
qqnorm(WATER_H); qqline(WATER_H)

x_WATER_H<-seq(30, 95, 1)
qqplot(qt(ppoints(250), df = 5), x_WATER_H, xlab = "Q-Q plot for tdsn")
qqline(x_WATER_H)

# Compare
tf_ENVHEALTH <- is.na(EPI_data$ENVHEALTH)
tf_ENVHEALTH
ENVHEALTH <- ENVHEALTH[!tf_ENVHEALTH]
ENVHEALTH

tf_ECOSYSTEM <- is.na(EPI_data$ECOSYSTEM)
tf_ECOSYSTEM
ECOSYSTEM <- ECOSYSTEM[!tf_ECOSYSTEM]
ECOSYSTEM

tf_DALY <- is.na(EPI_data$DALY)
tf_DALY
DALY <- DALY[!tf_DALY]
DALY

tf_AIR_EWATER_E <- is.na(EPI_data$AIR_EWATER_E)
tf_AIR_EWATER_E
AIR_EWATER_E <- DALY[!tf_AIR_EWATER_E]
AIR_EWATER_E

tf_BIODIVERSITY <- is.na(EPI_data$BIODIVERSITY)
tf_BIODIVERSITY
BIODIVERSITY <- DALY[!tf_BIODIVERSITY]
BIODIVERSITY

boxplot(EPI, ENVHEALTH, ECOSYSTEM, DALY, AIR_H, WATER_H, AIR_EWATER_E, BIODIVERSITY)

