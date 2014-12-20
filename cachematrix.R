## Put comments here that give an overall description of what your
## functions do
# the two functions makeCacheMatri and cacheSolve are used to create a special object that stores a matrix and caches its inverse matrix.

## Write a short comment describing this function
# The following function creates a specical matrix to cache inverse matrix.
# It contains a list of function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse matrix
# 4. get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmean <- function(matrix) m <<- solve
    getmean <- function() m
    list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## Write a short comment describing this function
# The following function calculates the inverse matrix of the returned matrix from makeCacheMatri function
# It will search cache first to see if the inverse matrix has been calculated before.
# If so, it gers the matrix from the cache.
# Otherwise, it calculate the inverse matrix and sets the inverse matrix in the cache via the setmean function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getmatrix()
    if(!is.null(m)) {
       message("getting cached data")
       return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setmatrix(m)
    m
}
