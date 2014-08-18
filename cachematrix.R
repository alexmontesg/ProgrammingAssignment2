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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
