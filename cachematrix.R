## Put comments here that give an overall description of what your
## functions do

##The aim of the experiment is to write a pair of functions,namely,
##"makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix

## Write a short comment describing this function
##makeCscheMaatrix is a function which creates a special"matrix" object that can

##library(MASS) is used to calculate inverse for non square matrices 
library(MASS)

##i simply set the input x as a matrix
##and then set the solved value "s" as a null 
## then i changed every reference to "mean" to "solve"
makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) 
  
  s <- NULL                              
  set <- function(y){                      
  x <<- y 
  s <<- NULL
}
  get <- function()x
  setsolve <- function(solve) s <<- solve
  getsolve <- function()s 
list(set = set, get = get,
     setsolve = setsolve,
     getsolve = getsolve)

##cache its inverse for the input(which is an invertible square matrix)
makeCacheMatrix <-function(x=matrix()){
  inv <-NULL
  set <-function()x{
  x <<- y 
  inv <<- NULL
  }
  get <-function()x
  setinv <-function(inverse) inv <<-inverse
  getinv <-function()inv
  list(set=,get=get,setinv=setinv,getinv=getinv)
} 
  ## Write a short comment describing this function
##cacheSolve is a function which computes the inverse of the special "matrix)
## same here, changed "mean" to "solve" and "m" to
cacheSolve <- function(x,...){
  s <- x$getsolve()
  if(!is.null(s)){
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <-solve(data,...)
  x$setsolve(s)
  s
}

s <- x$getsolve()
if(!is.null(s)) {
  message("getting inversed matrix")
  return(s)
}
  data <- x$get()
  s <- solve(data,...)
  x$setsolve(s)
  s
  x<-5
  y<-if(x<3){
  
  
  
}else{
  
  
}

## return by "makeCacheMatrix above. if the inverse has already been calculated
##(the matrix has not changed),then the cachesolve should retrieve the
##inverse from the cache
 
   cacheSolve <-function(x,...){
  ##Return a matrix that is the inverse of 'x'
    inv<- x$getinv()
    if(!is.null(inv)){
    message("getting cached result")
    return(inv)
    }
    data <- x$get()
    inv <- solve(data,...)
    x$setinv(inv)
}
  
  
