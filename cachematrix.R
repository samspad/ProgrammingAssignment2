## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrixx()) {
        inv <- NULL
        set <- function(y) {   
                x <<- y
                inv <<- NULL
        }
        get <- function() x    
        setInverse <- function(inverse) inv <<- inverse  ##setting matrix inversion value
        getInverse <- function() inv    ##getting matrix inversion value
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {    
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message("Data")
                return(inv)
        }
        matrix <- x$get()     
        inv <- solve(matrix, ...)
        x$setInverse(inv)
        inv ##return
}
