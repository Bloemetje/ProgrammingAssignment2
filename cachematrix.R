## first function generates a matrix and stores the inverse.
## Second function returns inverse from cache if matrix has not changed
## otherwise second function calculates the inverse.

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
          x <<- y
          m <<- NULL
}
    get <- function() x
    setinv <- function(solve) m <<- solve
    getinv <- function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)

}
## returns inverse if it exists and matrix didn't change, otherwise calculates inverse of matrix.
cacheSolve <- function(x, ...) {
    m <- x$getinv()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
}
      data <- x$getinv()
      m <- solve(data, ...)
      x$setinv(m)
      m
}
