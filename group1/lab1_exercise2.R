EPI_data <- read.csv('./csv/EPI_data.csv')

View(EPI_data)
attach(EPI_data)
fix(EPI_data)

EPI = EPI_data$EPI
# EPI
tf_EPI <- is.na(EPI)
tf_EPI

EPI <- EPI[!tf_EPI]
EPI

#Landlock
EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
#
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)

No_surface_water = EPI_data$No_surface_water
tf_No_surface_water <- is.na(No_surface_water)
tf_No_surface_water
No_surface_water_land<-No_surface_water[!Landlock]
No_surface_water_land <- No_surface_water_land[!is.na(No_surface_water_land)]
hist(No_surface_water_land)
hist(No_surface_water_land, prob=TRUE)

Desert = EPI_data$Desert
tf_Desert <- is.na(Desert)
tf_Desert
Desert_land <- Desert[!Landlock]
Desert_land <- Desert_land[!is.na(Desert_land)]
hist(Desert_land)
hist(Desert_land, prob=TRUE)

High_Population_Density = EPI_data$High_Population_Density
tf_High_Population_Density <- is.na(High_Population_Density)
tf_High_Population_Density
High_Population_Density_land <- High_Population_Density[!Landlock]
High_Population_Density_land <- High_Population_Density_land[!is.na(High_Population_Density_land)]
hist(High_Population_Density_land)
hist(High_Population_Density_land, prob=TRUE)
