library(palmerpenguins)
library(ggplot2)

# Scales customize the expression of mappings

# Manually override default values
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species)) +
  geom_point()

# Use a colorblind-friendly palette instead
okabe_ito <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito)

# We can do the same with shapes
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25)

# Built-in and custom themes
# theme_bw()
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25) +
  theme_bw()

# Move legend inside the figure panel
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25) +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(.99, .01),
        legend.justification = c(1, 0))

# Fix the labels
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito) +
  scale_shape_manual(values = 21:25) +
  labs(x = "Body mass (g)",
       y = "Flipper length (mm)",
       fill = "Species",
       shape = "Species") +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(.99, .01),
        legend.justification = c(1, 0))

# Make the following changes to this basic boxplot.
# 1) Change the grey background to white
ggplot(penguins, aes(island, body_mass_g)) +
  geom_boxplot() +
  theme_light()

# 2) Clean up the axis labels
ggplot(penguins, aes(island, body_mass_g)) +
  geom_boxplot() +
  theme_light() +
  labs(x = "Island Site",
       y = "Body mass (g)")

# 3) Make the color vary by island
ggplot(penguins, aes(x = island,
                     y = body_mass_g,
                     fill = island)) +
  geom_boxplot() +
  theme_light() +
  labs(x = "Island Site",
       y = "Body mass (g)")


# 4) Choose a color palette that you enjoy!
  ggplot(penguins, aes(x = island,
                       y = body_mass_g,
                       fill = island)) +
  geom_boxplot() +
  theme_light() +
  labs(x = "Island Site",
       y = "Body mass (g)") +
  scale_fill_manual(values = okabe_ito)
