**Carbon Tax Microsimulation Model for Argentina
**
This repository contains a basic microsimulation model developed to estimate the impact of carbon taxation on household energy expenditures in Argentina. The models simulate different carbon pricing systems and evaluate their effects on consumption patterns, income distribution, and revenue recycling mechanisms, using household-level microdata from Argentina’s national household expenditure survey.

**Project Overview
**
Using data from the 2018 Encuesta Nacional de Gastos de los Hogares (ENGHo), this project models three carbon tax scenarios and assesses their implications for households across different income levels. The aim is to provide evidence to inform policy decisions around carbon pricing and its distributional consequences.

**Data Description
**
The dataset is based on the ENGHo 2018 survey, which covers 21,065 households interviewed between November 2017 and November 2018. Households are identified by a unique id.

The data includes household-level expenditure and quantity consumed for the following energy sources:

Bottled gas / LPG in canisters (Gas envasado en garrafas)
Bulk-delivered LPG (Gas a granel)
Gas in larger cylinders or tanks (Gas envasado en tubo)
Markatable Natural Gas (Gas Natural)
Electricity (Electricidad)
Kerosene
Other liquid fossil fuels (Otros combustibles)
Coal and firewood (Leña y Carbón)

**Model Structure
**

The simulation includes three basic models:

1. Uniform Tax Model
A flat carbon price is applied uniformly across all households and energy sources. This model assumes no behavioral response and includes no rebate mechanisms.
2. Argentine Carbon Tax Emulation
Simulates the existing carbon tax in Argentina using lump-sum values per fuel type. Behavioral responses and rebates are not included.
3. Canadian-Style Tax with Behavioral Response and Rebates
- Applies differentiated tax rates based on carbon intensity, reflecting the Canadian approach. This model includes:
- Behavioral response using short-run price elasticity (–0.76)
- Two types of rebate schemes:
- Flat per capita rebate
-Progressive rebate targeting lower-income households

**Sensitivity and Elasticity Analysis
**

Based on the third model, we conduct sensitivity analysis to test alternative parameter values, including:

Elasticity of Demand: Following Zabaloy and Viego (2022), we adopt an elasticity of –0.76 for energy sources that are more elastic in practice (e.g., kerosene, firewood, bottled gas). This represents an upper-bound scenario of household response.
Price Levels: We simulate outcomes under varying carbon tax rates by energy type.

**Distributional Analysis
**
We evaluate how the tax burden and rebates affect households across the income distribution:

Estimate post-tax energy expenditures per household
Compute tax payments and compare them to rebate amounts
Assess net impacts by income quintile
Compare flat versus progressive rebate schemes
References

Encuesta Nacional de Gastos de los Hogares (ENGHo) 2018 – Instituto Nacional de Estadística y Censos (INDEC)
Zabaloy, N. & Viego, V. (2022). [Full citation if available]
Carbon content conversion factors – Argentina and Canada tax authorities

**Repository Structure
**
├── data/                    # Processed and raw ENGHo data 
├── code/                 # Scripts for data processing and modeling               
├── README.md                # Project overview and documentation
