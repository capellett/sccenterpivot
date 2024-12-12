#' @title Irrigation Zones
#' @description Irrigation zones are spatial polygons overlaying irrigated areas.
#' @format an sf dataframe with the following columns:
#' \describe{
#'   \item{id_a}{A unique ID for each polygon, integer.}
#'   \item{Type}{Center Pivot, not center pivot, and sprinklers}
#'   \item{year2009 - year2021}{Columns for years when observations were made (2009, 2011, 2013, 2015, 2017, 2018, 2019, and 2021). 1=irrigation observed, 0=irrigation not observed.}
#'   \item{Acres}{Polygon acreage}
#'   \item{County}{The county of South Carolina where the polygon is located}
#'   \item{geometry}{A list-column of geometries (polygons)}
#' }
#' @source Pellett 2020, Sekaran and Payero 2023, Pellett 2024
"zones"

#' @title Opportunities for New Center Pivot Installations
#' @description Opportunities for new center pivot installations were identified based on the absence of constraints such as slopes>5%, wetlands, conservation areas, projected future impervious surfaces, and open water. Available "unconstrained" areas of sufficient size and shape were ranked according to the distance to existing irrigated areas and the area of cultivated land overlaid by each irrigation opportunity polygon.
#' @format an sf dataframe.
#' @source Pellett 2024 Appendix I
"opportunities"
