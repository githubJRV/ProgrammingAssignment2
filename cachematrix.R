# Example from internet for jveracka_JHU_datasciencecoursera
makeVector <- function(x = numeric()) {
        # sets x equal to an empty numeric vector
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get, setmean = setmean      , getmean = getmean)
        
}
# This function creates a special "vector", which is really a list of:
#1. set the value of the vector
#2. get the value of the vector
#3. set the value of the mean
#4. get the value of the mean

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}