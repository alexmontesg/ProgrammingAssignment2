## These functions can be used to efficiently
## calculate the inverse of a matrix several
## times, because its value is cached and it is
## only calculated once

## Creates a list of functions to get/set the
## value of a matrix as well as its mean

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInv <- function(inverse) inv <<- inverse
    getInv <- function() inv
    
    list(set = set, get = get, setInv = setInv, 
         getInv = getInv)
}


## Checks if the inverse is already calculated.
## If not, the inverse is calculated, cached and
## returned. Otherwhise is just returned.

cacheSolve <- function(x, ...) {
    inv <- x$getInv()
    if(is.null(inv)) {
        ## This is only executed if inv is null
        data <- x$get()
        inv <- solve(x, ...)
        x$setInv(inv)
    }
    
    inv
}
