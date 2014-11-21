## The following pair of functions can be used to cache a matrix object,
## and calculate the inverse of a stored matrix oject
# 
# The first - makeCacheMatrix creates a special 'matrix' object and 4 'methods'
#
# takes the input mat as a matrix
makeCacheMatrix <- function(x = matrix()) {
#
# i will be the 'inverse matrix' and will be reset each time makeCacheMatrix is called
#
      i <- NULL
#
# check that input is a square matrix
      if (sqrt(length(x))%%1 !=0) {
        stop ("Input must be a square matrix. Ex: 2x2, 3x3, 4x4 integer matrix")
      }
#
# the next set of functions are defined, but not run, they will be used by the cacheSolve function
#
# define set 'method'
      set <- function(y) {    # takes a matrix as the input
          x <<- y             # save the input matrix 
          i <<- NULL          # reinit the inv matrix
      } 
#
# define get 'method'
      get <- function() x
#
# define setInverse 'method'
      setinv <- function(inv) i <<- inv
#
# define getInverse 'method'
      getinv <- function() i
#
#my
      list( set = set, 
            get = get, 
            setinv = setinv, 
            getinv = getinv)
}
##
#  End function makeCacheMatrix
##
## The second - cacheSolve, computes the inverse of a "matrix".
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve will retrieve the inverse from the CACHE.
#
# input mat is an object created by makeCacheMatrix
cacheSolve <- function(x) {
#
# Return a matrix that is the inverse of 'mat'
#
      i <- x$getinv()
#
#
      if(!is.null(i))  {
        message("Getting cached data")
        return(i)
      }
#
#
      data <- x$get()
      i <- solve(data)
      x$setinv(i)
      i
}
##
#  End function cacheSolve
