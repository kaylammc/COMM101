library(palmerpenguins)
library(ggplot2)

penguins

#Geometries
#Visualizing one continuous variable--histogram
ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram()

#Visualize one continous variable and categorial variable--boxplots
ggplot(penguins, aes(x = body_mass_g, y = species)) +
  geom_boxplot()

#Visualizing two continous varibales--scatterplots
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_point()

#Aesthetics
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species)) +
  geom_point()

# Edit code to match figures -------------------------------------------------
# At the end of the guided notes for the second video you'll find three figures.
# Edit the following code so the outputs match the figures in the notes.

# Figure 1
ggplot(penguins, aes(x = bill_depth_mm)) +
  geom_histogram()

# Figure 2
ggplot(penguins, aes(x = species, y = flipper_length_mm)) +
  geom_boxplot()

# Figure 3
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_point()
