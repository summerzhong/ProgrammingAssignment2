The below functions can caculate the inverse of a matrix, and if the inverse has been cached before, 
then it can avoid computaing process.

This funtion calculate the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(matrix) {
               x <<- matrix
               m <<- NULL
        }
        get <- function() x
        setmean <- function(inverse) m <<- inverse
      getmean <- function() m
      list(set = set, get = get,
           setInverse = setInverse,
           getInverse = getInverse)

}


This function get the inverse from above makeCacheMatrix funtion. If the inverse has already been calculated, then cache 
the value directly.

cacheSolve <- function(x, ...) { 
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- x$get()
        m <- inverse(matrix, ...)
        x$setInverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
