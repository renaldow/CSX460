
#title: "Exercise #2"
#author: "Renaldo Williams"
#date: "April 13, 2016"
#output: html_document


#Create vector of 20 numbers
x <- 1:20

#create empty array vector
vector <- vector(mode="character", length=0)

#create function to convert to Fizz, Buzz, or FizzBuzz
f <- function(numbers) {
  
  for (i in 1:length(numbers)) { 
    
    #Use modulus to find if multiple of 3
    if(numbers[i] %% 3 == 0)
    {
      vector[i] <- "Fizz"
    }
    #Use modulus to find if multiple of 5
    else if(numbers[i] %% 5 == 0)
    {
      vector[i] <- "Buzz"
    }
    #Use modulus to find if multiple of 3 and 5
    else if((numbers[i] %% 3 == 0) && (numbers[i] %% 5 == 0))
    {
      vector[i] <- "FizzBuzz"
    }
    else {
      vector[i] <- numbers[i]
    }
    
  }
  
  vector
}

# test function
f(x)


