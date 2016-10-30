
## Function "makeCacheMatrix": This function creates a special"matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

m <- NULL


  set <- function(y) {


    x <<- y


    m <<- NULL


  }


  get <- function() x


  setinv <- function(inverse) m <<- inverse


  getinv <- function() m


  list(set = set, get = get,


       setinv = setinv,


       getinv = getinv)


}


## Function “cacheSolve”:computes the inverse of the special “matrix” (which is the input of cachemean) returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
        

## Return a matrix that is the inverse of 'x'


  m <- x$getinv()


  if(!is.null(m)) {


    message("getting cached data")


    return(m)


  }


  data <- x$get()


  m <- inverse(data, ...)


  x$setinv(m)


  m

        
}
