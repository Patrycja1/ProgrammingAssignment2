## function that creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  # set values of the matrix
  t <- NULL
  set <- function(y) {
    x <<- y
    t <<- NULL
  }
  # get values of the matrix
  get <- function() {
    x
  }
  # set the inverse of the matrix
  setinv <- function(solve) {
    t <<- solve
  }
  getinv <- function() {
    t
  }
  # get the inverse of the matrix
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}



## This function computes the inverse of the special "matrix" returned by makeCacheMatrix.
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve
## should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  # returns the inverse matrix of 'x'
  
  # get the inverse of the matrix
  t <- x$getinv()
  # check if there is the matrix
  if(!is.null(t)) {
    message("getting cached data")
    return(s)
  }
  # if not gets the inverse of the matrix
  data <- x$get()
  t <- solve(data, ...)
  # set the inverte of the matrix
  x$setinv(t)
  t
}
