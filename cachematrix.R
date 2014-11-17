## The following pair of functions can be used to cache the inverse of a matrix
## 
## The first - makeCacheMatrix creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}

## The second - cacheSolve, computes the inverse of the special "matrix" returned by makeCacheMatrix
## above.  If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve will retrieve the inverse from the CACHE.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
}
