## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a cache for a matrix and provides methods to set and get the matrix, as well as calculate its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL

  set <- function(y) {
    x <<- y
    inv <<- NULL
  }

  get <- function() x


  cacheInverse <- function() {
    if (!is.null(inv)) {
      message("getting cached inverse")
      return(inv)
    }
    inv <- solve(x)
    inv <<- inv
    inv
  }


  list(set = set,
       get = get,
       cacheInverse = cacheInverse)
}


## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

cacheSolve <- function(x, ...) {

  inv <- x$cacheInverse()

  ## Return a matrix that is the inverse of 'x'
  inv
}
