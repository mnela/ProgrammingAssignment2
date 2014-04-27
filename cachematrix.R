## makeCacheMatrix will store a Matrix and its inverse. cacheSolve, will solve the inverse
##matrix and store it in makeCacheMatrix


## this is a list function, into which you can add a matrix, 
##get the matrix, add a inverse of the matrix, and get the cached inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  cachedmatrix <- NULL
  
  set <- function(y) {
    x <<- y
    cachedmatrix <<- NULL
  }
  get <- function() {x}
  setmatrixinverse <- function(m) cachedmatrix <<- m
  getmatrixinverse <- function() cachedmatrix
  list(set = set, get = get,
       setmatrixinverse = setmatrixinverse,
       getmatrixinverse = getmatrixinverse)

}


## if the inverse of the matrix is already solved, will return the cached inverse
## if the inverse is not solved will solve the inverse and return

cacheSolve <- function(x, ...) {
  m <- x$getmatrixinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setmatrixinverse(m)
  m
}
