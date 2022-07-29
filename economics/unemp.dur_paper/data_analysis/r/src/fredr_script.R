library(fredr)
fredr_set_key("d22e8a184d8f1481390a595ad0c103bf")
fredr(series_id = "UNRATE",observation_start = as.Date("1949-01-01"))
fredr_series_observations(series_id = "UNRATE",observation_start = as.Date("1949-01-01"),frequency = "a",units = "pch")
fredr(series_id = "UNRATE",observation_start = as.Date("1949-01-01"))
demo <- fredr_series_observations(series_id = "UNRATE",observation_start = as.Date("1949-01-01"),frequency = "a",units = "pch")
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
uemp = ud2$value
ud3 = cbind(ud1,uemp)
library(dplyr)
library(ggplot2)
plot2 = ggplot(ud3, aes(x=date)) + geom_line(aes(y=value, color='Unemployment Rate (%)')) + geom_line(aes(y=uemp, color='Unemployment Duration (Weeks)')) + labs(title = 'Raw Unemployment Rate vs Date', x = 'Date', y='Unemployment Rate', color='Variables')
plot2
print(plot2 + theme(plot.title = element_text(hjust = 0.5)))
theme_update(plot.title = element_text(hjust = 0.5))
theme_set(theme_linedraw())
saveRDS(ud, file = 'ud_Data.rds')
readRDS(file = 'ud_Data.rds')
save.image(file = 'UD.workspace.RData')
load('UD.workspace.RData')
ur <- fredr_series_observations(
        series_id = "UNRATE",
        observation_start = as.Date("1990-01-01"),
        frequency = "q",
        units = "chg"
)
