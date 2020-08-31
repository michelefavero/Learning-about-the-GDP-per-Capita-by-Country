# install.packages("gganimate")
# install.packages("gapminder")
# install.packages("extrafont")
# install.packages("gifski")

library(gganimate)
library(ggplot2)
library(dplyr)
library(gapminder)
library(ggthemes)
library(extrafont)
library(gifski)


font_import()
fonts()

gapminder
str(gapminder)


graph1 = gapminder 
  ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) +
  geom_point(alpha = 0.7, stroke = 0) +
    theme_fivethirtyeight() +
    scale_size(range = c(2,12), guide = "none") +
    scale_x_log10() +
    labs(title = "Learning about the GDP Per Capita by Country",
         x = "(GDP / Capita)",
         y = "Years",
         caption = "Source: Gapminder") +
  theme(axis.title = element_text(),
        text = element_text(family = "Times New Roman"),
        legend.text = element_text(size = 10)) +
    scale_color_brewer(palette = "Set2")

g.a = graph1 +
  transition_time(year) +
  labs(subtitle = "Year: {frame_time}")







