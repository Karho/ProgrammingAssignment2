## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  } ## set the value of the matrix
  get <- function() x ## get the value of the matrix
  setsolve <- function(solve) m <<- solve
  ## set the value of the inverse
  getsolve <- function() m
  ## get the value of the inverse
  list(set = set, get = get, setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve() ## get the inverse from cache
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get() ## get the value from cache
  m <- solve(data)
  x$setsolve(m) ## find the inverse from cache
  m
}
