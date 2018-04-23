# -----------------------------------------------------------------------------
# Helper functions (just a collection)
# -----------------------------------------------------------------------------

cv          <- function(x) sd(x, na.rm=T) / mean(x, na.rm =T)
zv          <- function(x) (x - mean(x, na.rm =T)) / sd(x, na.rm=T)
create_ymd  <- function(x) tibble(year=year(x),month=month(x),day=day(x))
m3s_to_mmd  <- function(q,area) q * (60*60*24) * 1000 / (area * 1000000)


# ----- Flashiness Index -----
flash       <- function(x) sum(abs(diff(x)),na.rm=T) / sum(x[2:length(x)],na.rm=T) # R B Index

# ----- Timing of a variable in a 0-to-1 and 0-to-1 plot with x and p-----
timing      <- function(x) sum(x/sum(x) * ((0:(length(x)-1))/(length(x)-1)))
