GoogleCapstoneClean
================

# Running packages

``` r
library("dplyr")
```

    ## Warning: package 'dplyr' was built under R version 4.1.2

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library("plyr")
```

    ## Warning: package 'plyr' was built under R version 4.1.2

    ## ------------------------------------------------------------------------------

    ## You have loaded plyr after dplyr - this is likely to cause problems.
    ## If you need functions from both plyr and dplyr, please load plyr first, then dplyr:
    ## library(plyr); library(dplyr)

    ## ------------------------------------------------------------------------------

    ## 
    ## Attaching package: 'plyr'

    ## The following objects are masked from 'package:dplyr':
    ## 
    ##     arrange, count, desc, failwith, id, mutate, rename, summarise,
    ##     summarize

``` r
library("readr")
```

    ## Warning: package 'readr' was built under R version 4.1.2

``` r
library("janitor")
```

    ## 
    ## Attaching package: 'janitor'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     chisq.test, fisher.test

``` r
library("lubridate")
```

    ## 
    ## Attaching package: 'lubridate'

    ## The following objects are masked from 'package:base':
    ## 
    ##     date, intersect, setdiff, union

# Reading each and every individual file

``` r
Jan2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Jan2021.csv")
```

    ## Rows: 96834 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Feb2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Feb2021.csv")
```

    ## Rows: 49622 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Mar2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Mar2021.csv")
```

    ## Rows: 228496 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Apr2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Apr2021.csv")
```

    ## Rows: 337230 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
May2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/May2021.csv")
```

    ## Rows: 531633 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Jun2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Jun2021.csv")
```

    ## Rows: 729595 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Jul2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Jul2021.csv")
```

    ## Rows: 822410 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Aug2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Aug2021.csv")
```

    ## Rows: 804352 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Sep2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Sep2021.csv")
```

    ## Rows: 756147 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Oct2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Oct2021.csv")
```

    ## Rows: 631226 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Nov2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Nov2021.csv")
```

    ## Rows: 359978 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
Dec2021 <- read_csv("/Users/clement/Documents/Google Capstone One/CSV/Dec2021.csv")
```

    ## Rows: 247540 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

# Organizing the files into their respective seasons

``` r
Spring <- bind_rows(Dec2021, Jan2021, Feb2021)
Summer <- bind_rows(Jun2021, Jul2021, Aug2021)
Fall <- bind_rows(Sep2021, Oct2021, Nov2021)
Winter <- bind_rows(Dec2021, Jan2021, Feb2021)
```

# Putting all of the files together in a masterlist

``` r
cycle_data <- list.files(path = "/Users/clement/Documents/Google Capstone One/CSV", 
                         pattern = "*.csv", full.names = TRUE) %>%
  lapply(read_csv) %>%
  bind_rows
```

    ## Rows: 337230 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 804352 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 247540 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 49622 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 96834 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 822410 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 729595 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 228496 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 531633 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 359978 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 631226 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.Rows: 756147 Columns: 13── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...
    ## dbl  (4): start_lat, start_lng, end_lat, end_lng
    ## dttm (2): started_at, ended_at
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

# Quick peak at the data

``` r
glimpse(cycle_data)
```

    ## Rows: 5,595,063
    ## Columns: 13
    ## $ ride_id            <chr> "6C992BD37A98A63F", "1E0145613A209000", "E498E15508…
    ## $ rideable_type      <chr> "classic_bike", "docked_bike", "docked_bike", "clas…
    ## $ started_at         <dttm> 2021-04-12 18:25:36, 2021-04-27 17:27:11, 2021-04-…
    ## $ ended_at           <dttm> 2021-04-12 18:56:55, 2021-04-27 18:31:29, 2021-04-…
    ## $ start_station_name <chr> "State St & Pearson St", "Dorchester Ave & 49th St"…
    ## $ start_station_id   <chr> "TA1307000061", "KA1503000069", "20121", "TA1305000…
    ## $ end_station_name   <chr> "Southport Ave & Waveland Ave", "Dorchester Ave & 4…
    ## $ end_station_id     <chr> "13235", "KA1503000069", "20121", "13235", "20121",…
    ## $ start_lat          <dbl> 41.89745, 41.80577, 41.74149, 41.90312, 41.74149, 4…
    ## $ start_lng          <dbl> -87.62872, -87.59246, -87.65841, -87.67394, -87.658…
    ## $ end_lat            <dbl> 41.94815, 41.80577, 41.74149, 41.94815, 41.74149, 4…
    ## $ end_lng            <dbl> -87.66394, -87.59246, -87.65841, -87.66394, -87.658…
    ## $ member_casual      <chr> "member", "casual", "casual", "member", "casual", "…

# Check for any missing data points

``` r
sum(is.na(cycle_data))
```

    ## [1] 2869497

# Remove unneeded columns (lat and lng)

``` r
cycle_data <- subset(cycle_data, select = -c(start_lat, start_lng, end_lat, end_lng))
```

# Remove any and all missing data points

``` r
clean_data <- na.omit(cycle_data)
sum(is.na(clean_data))
```

    ## [1] 0

# Find the ride length

``` r
clean_data$ride_length <- clean_data[,4] - clean_data[,3]
```

# Unlist ride_length then change to hh:mm:ss

``` r
clean_data$ride_length <- as.numeric(unlist(clean_data$ride_length))
clean_data$ride_length <- hms::hms(seconds_to_period(clean_data$ride_length))
```

#Reference:
<https://www.statology.org/r-list-object-cannot-be-coerced-to-type-double/>

# Remove rows that have a negative ride length

``` r
clean_data <- clean_data %>% filter(clean_data$ride_length > 0)
```

# Find the day of the week of each trip

``` r
clean_data$day_of_week <- wday(clean_data$started_at, label=TRUE) 
```

#ReferenceL <https://stackoverflow.com/a/9216210>

# Export as CSV

``` r
write.csv(clean_data, file="all_cycle_data.csv", row.names = FALSE)
```
