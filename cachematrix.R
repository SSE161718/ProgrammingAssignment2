## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  y <- x
  m <- FALSE
  getm <- function() m
  setmatrix <- function(z){
    y <<- z
    m <<- TRUE
  }
  getmatrix <- function(){
    y
  }
  list(getm = getm,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getm()
  if(m == TRUE){
    return(x$getmatrix())
  }
  t <- x$getmatrix()
  tt <- solve(t);
  x$setmatrix(tt)
  tt
}