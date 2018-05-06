# Required packages to for assingment: tidyverse

# Question 1.
# The 'gear' variable represents the number of forward gears for each automobile in the data set

# Question 2. 
ggplot(data = mtcars) +
  geom_point(
      mapping = aes(x = mpg, y = cyl)
  )

# Question 3.
# The variables cyl, vs, am, gear, and carb are all categorical. The variables mpg, disp, hp, drat, wt and qsec
# are all continuous. You can see this when running mtcars in the console and by recognizing that 
# the categorical variables consist of a limited number of different values. For example, the am variable
# which represents the type of transmission of the automobile only consists of either 1s or 0s.

# Question 4.
# The first set of code outputs 3 different scatterplots showing the correlation between displacement (size of engine)
# and the miles/gallon of each car grouped by the number of cylinders the car's engine has.
# The second set of code outputs 2 different scatter plots showing the correlation between displacement (size of engine)
# and the miles/gallon of each car grouped by the type of transmission of the car.
# The . tells R that there will be no variable set to either the rows or columns of the facet grid. The . used in the 
# first graph tells R there is no variable set to the columns of the grid and the . in the second graph 
# tells R there is no variable set to the rows of the grid.

# Question 5.
# The argument nrows allows you to set the number of rows for the facet. The argument ncols allows you to set the
# number of columns for the facet. The arguments shrink, labeller, as.table, switch, drop, dir, and strip.position
# are all used to control the layout of the individual panels. The function facet_grid() doesn't have the arguments
# nrows or ncol because it is designed to create a facet where the rows and columns are set to variables.

# Question 6.
# The code should produce a scatterplot where the color of the points represent the number of cylinders of the engine.
# There will also be a blue trendline through the data points with no gray confidence interval along the trendline.

# Question 7.
# The point range geom is associated with stat_summary() by default.
ggplot(data = mtcars) +
  geom_pointrange(
    mapping = aes(x = disp, y = mpg),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median,
    stat = "summary"
  )

# Question 8.
# geom_jitter() is advantageous for viewing a more realistic distribution of the data points as it removes rounding and
# and overplotting but it does introduce a very small amount of random noise to each point. geom_count() can also help
# visualize the total amount of values at specific x-y coordinates but smaller shapes can be hard to distinguish due to
# larger shapes overlapping them. Both are good alternatives to geom_point as they reveal more detail about the data.
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_point()

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_jitter()

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_count()

# Question 9.
# This plot tells me that there is a positive linear relationship between cty and hwy. So as cty mpg increases so should hwy.
# The coord_fixed() function is important the physical representation of the x and y values are at a 1:1 ratio. So one unit 
# on the x axis is the same as one on the y. The geom_abline() function adds a reference line to the plot that has a slope and
# intercepts that are determined by the data of the plot.