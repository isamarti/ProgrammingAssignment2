## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  reverse <- NULL
  set <- function(y) {
    x <<- y
    reverse <<- NULL
  }
  get <- function() x
  setreverse <- function(r) reverse <<- r
  getreverse <- function() reverse
  list(set = set, get = get,
       setreverse = setreverse,
       getreverse = getreverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  reverse <- x$getreverse()
  if(!is.null(reverse)) {
    message("getting cached data")
    return(reverse)
  }
  data <- x$get()
  r <- solve(data)
  x$setreverse(r)
  r
}
