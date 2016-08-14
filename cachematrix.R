## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  #getting cached data
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}




cacheSolve <- function(x, ...)  ## Return a matrix that is the inverse of 'x'{
  i<- x$getinverse()
  if(!is.null(i)) {
   
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i      
  
  
  
}
