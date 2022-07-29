getwd()
setwd('~/Documents/De Professor/The Thinker/Research Pubs/Economics/Unemployment Duration Paper/R Workspace')
install.packages('fredr')
library(fredr)
#Using the RESTful API by FRED St. Louis.
#fredr package also found in sboysel/fredr. I cloned the repo from Github.
fredr_set_key('d22e8a184d8f1481390a595ad0c103bf')
#Visualizing the data for UNRATE 
ur = fredr_series_observations(
 series_id = "UNRATE",
 observation_start = as.Date("1949-01-01"),
 frequency = "a",
 units = "lin")
ud = fredr_series_observations(
 series_id = "UEMPMEAN",
 observation_start = as.Date("1949-01-01"),
 frequency = "a",
 units = "lin")
head(ud)
uempmean <- ud$value
uempdata <- cbind(ur,uempmean)
head(uempdata)
library(ggplot2)
plot <- ggplot(uempdata, aes(x=date)) + geom_line(aes(y=value, color='Unemployment Rate (%)')) + geom_line(aes(y=uempmean, color='Unemployment Duration (Weeks)')) + labs(title = 'Raw Unemployment Rate vs Date', x = 'Date', y='Unemployment Rate', color='Variables')
plot
theme_update(plot.title = element_text(hjust = 0.5))
theme_set(theme_linedraw())
save(plot,file = 'plot.rda')
save(ud,file = 'ud.rda')
save(uempdata,file = 'uempdata.rda')
save(uempmean,file = 'uempmean.rda')
save(ur,file = 'ur.rda')
save.image(file = 'UDday1.RData')
q(save = 'yes')
