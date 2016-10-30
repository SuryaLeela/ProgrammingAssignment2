## makeCacheMatrix(): creates a special “matrix” object that can cache its inverse

## Function to 1. Set a square matrix.  2. Get thematrix.  3. Set the inverse.  4 Get the inverse

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


## cacheSolve(): computes the inverse of the “matrix” returned by makeCacheMatrix()

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
