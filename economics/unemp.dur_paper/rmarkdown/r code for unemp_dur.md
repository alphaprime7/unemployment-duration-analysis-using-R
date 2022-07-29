---
favorited: true
title: R Code for Unemployment duration
created: '2019-12-15T18:30:36.641Z'
modified: '2019-12-15T18:44:49.241Z'
---

# R Code for Unemployment duration
## I am using the FRED RESTful API
- API = Application Programming Interface
- I can use the <kbd> Quandl,quantmod, and fredr package </kbd>
<pre>
require(Quandl)
mydata = Quandl("FRED/GDPPOT", start_date="2005-01-03",end_date="2013-04-10",type="xts")

OR
data <- new.env()

# set dates
date.start <- "2000-01-01"
date.end <- "2012-12-31"

# set tickers
tickers <- c("FEDFUNDS", "GDPPOT", "DGS10")

# import data from FRED database
library("quantmod")
getSymbols( tickers
  , src = "FRED"  # needed!
  , from = date.start  # ignored
  , to = date.end  # ignored
  , env = data
  , adjust = TRUE
)

head(data$FEDFUNDS)

head(data$FEDFUNDS)
           FEDFUNDS
1954-07-01     0.80
1954-08-01     1.22
1954-09-01     1.06
1954-10-01     0.85
1954-11-01     0.83
1954-12-01     1.28


</pre>
