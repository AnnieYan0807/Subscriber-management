#### Preamble ####
# Purpose: Simulate data
# Author: Annie Yan
# Data: 25 March 2023
# Contact: Yanzixin0807@gmail.com
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####


set.seed(853)
size_of_population <- 5

simulated_subscription_data <-
  tibble(
    Name = c(
      rep(x = "Mike", times = 1),
      rep(x = "Steven", times = 1),
      rep(x = "Linda", times = 1),
      rep(x = "Jenny", times = 1),
      rep(x = "Rose", times = 1)
    ),
    
    Total_post = sample(
      x = c(0: 300),
      size = size_of_population,
      replace = TRUE
    ),
    
    Post_per_week = sample(
      x = c(0: 50),
      size = size_of_population,
      replace = TRUE
    )
  )


head(simulated_subscription_data)

### test

simulated_subscription_data$ Post_per_week  |> class() == "integer"
simulated_subscription_data$ Total_post  |> class() == "integer"
simulated_subscription_data$ Name  |> class() == "character"
simulated_subscription_data$ Post_per_week |> min(na.rm=TRUE) >= 0
simulated_subscription_data$ Total_post|> min(na.rm=TRUE) >= 0

