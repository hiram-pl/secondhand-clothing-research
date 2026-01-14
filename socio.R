#loading in the data and libraries
library(car)
library(stargazer)
library(ggplot2)
library(broom)
library(dplyr)
library(readr)
prices <- read_csv("~/Desktop/rstudio_work/Socio/data/prices.csv")

head(prices)

#the following two lines make H&M prices the baseline ("Constant" in the regression table)
prices$Store <- factor(prices$Store)
prices$Store <- relevel(prices$Store, ref = "HM_Reims")

fit_prices <- lm(Price ~ Store, data = prices)

summary(fit_prices)

#plotting the regression
prices_plot <- ggplot(prices, aes(x = Store, y = Price)) +
  geom_jitter(width = 0.15, alpha = 0.7) +     # points, jittered so they don’t overlap
  stat_summary(fun = mean, 
               fun.min = function(z) mean(z) - 1.96*sd(z)/sqrt(length(z)),
               fun.max = function(z) mean(z) + 1.96*sd(z)/sqrt(length(z)),
               geom = "pointrange",
               color = "darkred",
               size = 0.7) +
  labs(
    title = "Prices by Store",
    x = "Store",
    y = "Prices"
  ) +
  theme_minimal()

#saving the regression
ggsave("prices_by_store.png",
       width = 7, height = 5, dpi = 300)


#making the data tidy
tidy_fit_prices <- tidy(fit_prices)
tidy_fit_prices

#making and saving the regression table
stargazer(
  fit_prices,
  type = "html",
  out = "prices_per_store_results.html",
  title = "Item ~ Store"
)
