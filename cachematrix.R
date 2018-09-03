## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##COURSERA ASSIGNMENT in R PROGRAMMING W3 BY YANJIYANG 
## function makeCacheMatrix is used to create the special list containing original data and functions

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y){
      x <<- y
      inv <<- NULL
  }
  ## set matrix x = input
  get <- function() x
  ## return matrix x
  setinv <- function(inverse) inv <<- inverse
  ## save inverse in inv
  getinv <- function() inv
  ## return inverse matrix inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  

}


## Write a short comment describing this function
## function cacheSolve is a function first checking if the cached is existed
## if the matrix had been calculated£¬ return the cahced data 
## or calculate the matrix and set the result to cache

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached inverted matrix")
    return(inv)
  }
  ## chk if inv is already calculated
  
  data <- x$get()
  ## get the matrix
  inv <- solve(data,...)
  ## calculate the inverse matrix and save to inv
  x$setinv(inv)
  ## set the value of inversed matrix
  inv
  
        ## Return a matrix that is the inverse of 'x'
}

