C A Pellett
2024-12-13

<!-- README.md is generated from README.Rmd. Please edit that file -->

# sccenterpivot

<!-- badges: start -->

<!-- badges: end -->

## A repository of spatial data for center pivot sprinklers across South Carolina

`sccenterpivot` is an open-source R-package published as a repository on
GitHub. The package stores spatial data representing all (or, nearly
all) of the center pivot sprinklers in South Carolina from 2009 to 2022.
This data is the result of multiple research studies (Pellett 2020,
Sekaran and Payero 2023, Pellett 2024), and has been applied in several
other studies (Zurqani et al 2021, Pellett 2024 Appendix I), including
water availability planning in the coastal plain of South Carolina (as
documented in the Pee Dee River Basin Plan, published by SC Department
of Environmental Services). This website documents the sccenterpivot
R-package and provides access to the data for the general public without
requiring the use of R software.

This package was developed by Dr. Charles Alex Pellett, while studying
at Clemson University and working at the South Carolina Department of
Natural Resources (SC DNR). This information is intended for research
and long-term water planning. None of the above guarantees the accuracy,
reliability, or completeness of this information. The SC DNR and
Dr. Pellett are NOT liable for any loss or damage arising from the use
of this information.

### How to access the data without using R

For more information and to download the data (shapefile format), check
out the Introduction article on GitHub pages:
<https://capellett.github.io/sccenterpivot/articles/01-intro.html>

### Use in R

`scpopulation` can be installed as an R-package by entering the
following code into an R terminal:

``` r
# install.packages("devtools")
devtools::install_github("capellett/sccenterpivot")
```

## References

Pellett, C. Alex (2020) “Mapping Center Pivot Irrigation Fields in South
Carolina with Google Earth Engine and the National Agricultural Imagery
Program,” Journal of South Carolina Water Resources: Vol. 7 : Iss. 1 ,
Article 4. DOI: <https://doi.org/10.34068/JSCWR.07.02> Available at:
<https://tigerprints.clemson.edu/jscwr/vol7/iss1/4>

Pellett, CA 2024. “Agricultural Water Use in South Carolina: A Series of
Investigations to Support Long-Term Planning.” Clemson University
Dissertation, December 2024.

Sekaran U, Payero JO. 2023. Mapping and Characterization of Center Pivot
and Lateral Move Irrigation Systems in South Carolina Using Quantum
Geographic Information System. Journal of South Carolina Water
Resources: 9(1), Article 5. Available at:
<https://tigerprints.clemson.edu/jscwr/vol9/iss1/5>

Zurqani, H. A., Allen, J. S., Post, C. J., Pellett, C. A., & Walker, T.
C. (2021). Mapping and quantifying agricultural irrigation in
heterogeneous landscapes using Google Earth Engine. Remote Sensing
Applications: Society and Environment, 23, 100590.
