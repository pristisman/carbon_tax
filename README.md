## Carbon Tax Microsimulation Model for Argentina

This repository contains a basic microsimulation model developed to estimate the impact of carbon taxation on household energy expenditures in Argentina. The models simulate different carbon pricing systems and evaluate their effects on consumption patterns, income distribution, and revenue recycling mechanisms, using household-level microdata from Argentina’s national household expenditure survey.

### Project Overview

Using data from the 2018 Encuesta Nacional de Gastos de los Hogares (ENGHo), this project models three carbon tax scenarios and assesses their implications for households across different income levels. The aim is to provide evidence to inform policy decisions around carbon pricing and its distributional consequences.

### Data Description

The dataset is based on the ENGHo 2018 survey, which includes 21,065 households interviewed between November 2017 and November 2018. Households are identified by a unique id.

The data includes household-level expenditure and quantity consumed for the following energy sources:

Bottled gas / LPG in canisters (Gas envasado en garrafas)
Bulk-delivered LPG (Gas a granel)
Gas in larger cylinders or tanks (Gas envasado en tubo)
Markatable Natural Gas (Gas Natural)
Electricity (Electricidad)
Kerosene
Other liquid fossil fuels (Otros combustibles)
Coal and firewood (Leña y Carbón)
Model Structure

The simulation includes three basic models:

**1. Uniform Tax Model**
A flat carbon price is applied uniformly across all households and energy sources.
Assumes no behavioral response and includes no rebates.
**2. Argentine Carbon Tax Emulation**
Simulates the existing carbon tax in Argentina using lump-sum values per fuel type.
Excludes behavioral responses and rebates.
**3. Canadian-Style Tax with Behavioral Response and Rebates**
Applies differentiated tax rates based on carbon intensity, following the Canadian approach.
Incorporates:
Behavioral response using short-run price elasticity of –0.76
Two rebate schemes:
- Flat per capita rebate
- Progressive rebate targeting lower-income households
- Sensitivity and Elasticity Analysis

We conduct sensitivity analysis using Model 3, varying key parameters:

Elasticity of demand: Following Zabaloy and Viego (2022), we use –0.76 for elastic energy sources such as kerosene, firewood, and bottled gas. This represents an upper-bound scenario.
Carbon price levels: Simulations include multiple tax levels by energy type.
Distributional Analysis

To assess the policy’s equity effects, we evaluate:

- Post-tax energy expenditures per household
- Total tax payments and rebate amounts
- Net fiscal impact per household
- Results disaggregated by income quintile
- Comparison between flat and progressive rebate schemes

### References

Encuesta Nacional de Gastos de los Hogares (ENGHo) 2018 – Instituto Nacional de Estadística y Censos (INDEC)
Zabaloy, N. & Viego, V. (2022). 
Carbon content conversion factors – Argentine and Canadian tax authorities
