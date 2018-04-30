# helpeR
Collection of little helper functions or code snippets in R

## List of functions


### Statistics
```r
cv          <- function(x) sd(x, na.rm=T) / mean(x, na.rm =T)
zv          <- function(x) (x - mean(x, na.rm =T)) / sd(x, na.rm=T)
```

### Date/Time
```R
create_ymd  <- function(x) tibble(year=year(x),month=month(x),day=day(x))

```


### Hydrology-specific

```{r}

# ----- Flashiness Index -----
flash       <- function(x) sum(abs(diff(x)),na.rm=T) / sum(x[2:length(x)],na.rm=T) # R B Index

# ----- Convert Q-----
m3s_to_mmd  <- function(q,area) q * (60*60*24) * 1000 / (area * 1000000)

# ----- Timing of a variable in a 0-to-1 and 0-to-1 plot with x and p-----
timing      <- function(x) sum(x/sum(x) * ((0:(length(x)-1))/(length(x)-1)))
```
