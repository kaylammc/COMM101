library(marinecs100b)


# Distributions of continuous variables -----------------------------------

# P1 What type of visualization is appropriate for a single continuous variable?
# A histogram

# P2 What type of visualization is appropriate for a continuous variable across
# categorical variables?
# Bar plots

# P3 Use ggplot to visualize the distribution of sea surface salinity. Save your
# figure as “comm101p3.png”.
ggplot(woa_sal, aes (x = salinity)) +
  geom_histogram()

# P4 Use ggplot to visualize the distribution of sea surface salinity by ocean
# basin. Save your figure as “comm101p4.png”.
ggplot(woa_sal, aes (x = ocean ,
                     y = salinity)) +
  geom_boxplot()

# P5 Interpret your figures from P3 and P4. What patterns do you notice? Most of
# the salinity levels are between 30-40, with a few outliers. The first one is a
# histogram and the second one is a boxplot.

# P6 Critique your figures from P3 and P4. What changes would highlight the
# patterns you interpreted in P5? You don’t need to write code for these
# changes, just describe them verbally. A change that would highlight the
# distribution patterns of the first one would be to make the histogram more
# condensed. For the second one, I think giving each boxplot a color would make
# it easier to read.


# Relationships between continuous variables ------------------------------

# P7 Visualize the relationship between salinity and latitude by ocean basin.
ggplot(woa_sal, aes(x = latitude,
                    y = salinity,
                    color = ocean)) +
  geom_point()

# P8 Edit your figure from P7 to improve its interpretability in at least one of
# the following categories: visually differentiating the oceans, appropriateness
# of the labels, or use of negative space. Save this figure as “comm101p8.png”.
ggplot(woa_sal, aes(x = latitude,
                    y = salinity,
                    color = ocean)) +
  geom_point() +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(.50, .01),
        legend.justification = c(.5, 0))
