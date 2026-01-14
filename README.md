# Second-Hand Clothing Markets in Reims: A Comparative Mixed-Methods [Study](https://docs.google.com/document/d/1bfs8ZeHTFTJTX4W8RWGN78kJYnh3TN4w/edit)
Here is a [link](https://docs.google.com/document/d/1bfs8ZeHTFTJTX4W8RWGN78kJYnh3TN4w/edit) to the full research.


How do second-hand clothes acquire different symbolic and moral meanings across charity and commercial vintage stores?

## Abstract

Second-hand garments circulate through heterogeneous retail worlds yet acquire different prices and meanings. Based on a comparative mixed-methods case study of three retailers in Reims, France, this article examines how similar categories of second-hand clothing are morally and symbolically qualified across charity and commercial outlets within a single urban field. Semi-structured interviews with staff and customers, combined with in-store observations and price logs, reveal a spectrum of value production: a moral economy of solidarity and refuge at Emmaüs Reims, a hybrid venue that couples market incentives with "responsible", accessible shopping at Ding Fring, and an aestheticized, curated vintage boutique at La Friperie Rémoise.

## Key Findings

- **Spectrum of value**: Second-hand consumption is organized along a spectrum from solidarity-driven (Emmaüs) to aesthetically-driven (La Friperie Rémoise)
- **Price gradient**: Items are ~€9 cheaper at Emmaüs, ~€6 cheaper at Ding Fring, and ~€3 cheaper at La Friperie Rémoise compared to H&M
- **Moral vs. financial value trade-off**: Organizations prioritizing solidarity capture less financial value per item; those prioritizing curation and aesthetics capture more

## Stores Studied

| Store | Type | Position on Spectrum |
|-------|------|---------------------|
| Emmaüs Reims | Charity / Social enterprise | Solidarity pole |
| Ding Fring | Hybrid social enterprise | Middle position |
| La Friperie Rémoise | Commercial vintage boutique | Aesthetic/commercial pole |
| H&M Reims | Fast fashion (baseline) | Commercial benchmark |

## Methods

- **Qualitative**: 15 semi-structured interviews (employees and customers), in-store observations
- **Quantitative**: Price log of 68 items across stores, OLS regression

## Regression Results

```
Dependent variable: Price (€)

                        Coefficient
Constant (H&M)           18.52***
Ding Fring               -5.99***
Emmaüs                   -8.99***
La Friperie Rémoise      -3.04*

R²: 0.316
Observations: 68
```

Store type alone explains 31% of price variation.

## Files

| File | Description |
|------|-------------|
| `SOCIO_FINAL_COMPLETE_PAPER.pdf` | Full research paper (21 pages) |
| `socio.R` | R code for price regression and visualization |
| `data/prices.csv` | Price data across all four stores |
| `figures/prices_by_store.png` | Visualization of prices by store |

## How to Run

1. Open `socio.R` in RStudio
2. Install required packages:
   ```r
   install.packages(c("car", "stargazer", "ggplot2", "broom", "dplyr", "readr"))
   ```
3. Update the file path in `read_csv()` to your local directory
4. Run the script

## Theoretical Framework

Drawing on:
- Appadurai (1986) and Kopytoff (1986) on commodity biographies
- Bourdieu (1984) on distinction and cultural capital
- Callon, Méadel & Rabeharisoa (2002) on economies of qualities
- Clarke (2010) on Emmaüs as social enterprise

## Context

Research project conducted at Sciences Po, Paris Institute of Political Studies (Fall 2025).
