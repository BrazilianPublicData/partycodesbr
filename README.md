
<!-- README.md is generated from README.Rmd. Please edit that file -->

# partycodesbr

This is a simple one-function package to supply TSE political party
codes.

## Installation

You can install partycodesbr with:

``` r
remotes::install_github("BrazilianPublicData/partycodesbr")
```

## Usage

``` r
library(partycodesbr)
tse_codes()
#> # A tibble: 35 x 4
#>    abbreviation name                   president                      code 
#>    <chr>        <chr>                  <chr>                          <chr>
#>  1 MDB          MOVIMENTO DEMOCRÃ<81>… ROMERO JUCÃ<81> FILHO, no exe… 15   
#>  2 PTB          PARTIDO TRABALHISTA B… ROBERTO JEFFERSON MONTEIRO FR… 14   
#>  3 PDT          PARTIDO DEMOCRÃ<81>TI… CARLOS LUPI                    12   
#>  4 PT           PARTIDO DOS TRABALHAD… GLEISI HELENA HOFFMANN         13   
#>  5 DEM          DEMOCRATAS             ANTÃ”NIO CARLOS MAGALHÃƒES NE… 25   
#>  6 PCdoB        PARTIDO COMUNISTA DO … LUCIANA BARBOSA DE OLIVEIRA S… 65   
#>  7 PSB          PARTIDO SOCIALISTA BR… CARLOS ROBERTO SIQUEIRA DE BA… 40   
#>  8 PSDB         PARTIDO DA SOCIAL DEM… GERALDO JOSÃ‰ RODRIGUES ALCKM… 45   
#>  9 PTC          PARTIDO TRABALHISTA C… DANIEL S. TOURINHO             36   
#> 10 PSC          PARTIDO SOCIAL CRISTÃ… EVERALDO DIAS PEREIRA          20   
#> # ... with 25 more rows
```
