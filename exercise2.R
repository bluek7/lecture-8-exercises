### Exercise 2 ###

# Install the nycflights13 package and read it in. Require the dplyr package.
# install.packages("nycflights13")
library(nycflights13)
library(dplyr)

# In which month was the average departure delay the greatest?
# Hint: you'll have to perform a grouping operation before summarizing your data
flights %>% group_by(month) %>%
            summarise(avg = mean(dep_delay, na.rm = TRUE)) %>%
            filter(avg == min(avg))

# If you create a data.frame with the columns "month", and "delay" above, you should be able to create 
# a scatterplot by passing it to the 'plot' function
flights %>% group_by(month) %>%
            summarise(delay = mean(dep_delay, na.rm = TRUE)) %>% plot()
              
            

# In which airport were the average arrival delays the highest?
# Hint: you'll have to perform a grouping operation before summarizing your data
flights %>% group_by(dest) %>%
              summarise(avg = mean(arr_delay, na.rm = TRUE))

  filter(delays, avg == max(avg, na.rm = TRUE))

### Bonus ###
# Which city was flown to with the highest average speed?

