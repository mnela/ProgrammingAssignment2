cachematrix <- function(x, ...) {
  m <- x$getmatrixinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(x, ...)
  x$setmatrixinverse(m)
  m
}