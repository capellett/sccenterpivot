# AGRICULTURE WITHDRAWALS
The agwithdrawals shapefile is based on the most recent data I have from DHEC, recieved March 2018 and updated May 2018. I may have edited it slightly (?)

# IRRIGATION ZONES
The irrigation_zones shapefile contains polygon features mapped using Google Earth Engine (GEE) as part of an academic research study. The year of the GEE imagery in which these features were identified is not noted in this data, but is presumably recent (2017-2019). The zones were delineated manually after identification of irrigation infrastructure (typically a visible truss system represented by a thin, light gray, line; often with towers, pivot point, and tracks clearly visible) or evidence of irrigation infrastructure (evenly spaced concentric circular tracks adjacent to canopy which could mask a truss system). The polygons correspond to a sample of cultivated areas directly overlaying the maximum extent of irrigation infrastructure, including ditches traversable by the irrigation infrastructure. Forested areas, paved roads, and wetlands were generally excluded.  Areas irrigated by traveling gun or by end guns would be left out of the sample.

There are several different types of irrigation zones. Most are center pivots, and some other types have not been identified. Some other types of irrigation zones (for example, linear move) may have been mis-classified as center pivot type. 

The delineation process implemented in GEE resulted in some overlapping center pivot areas which were merged following initial transfer of the polygon data to shapefile format. In these cases, the resulting polygons were divided manually in ArcMap 10.6 - land was generally allocated to the closest center pivot point. The zones should not overlap (?)

Installation date observations were taken in ArcMap 10.6 using the USDA NRCS National Agricultural Imagery Project (NAIP) geodatabase and the 'Time Slider' interface over years 2011-2017 in two-year increments. In some areas it seemed the image quality (due to resolution or contrast or timing) improved incrementally over the years. Smaller pivots were harder to identify in the imagery. In the raw coded Install_date data, some increase in the evidence of irrigation zones over time could be attributed to higher quality images and not necessarily an increased installation rate. In some cases, the observation of an apparent pivot point was taken as sufficient evidence of irrigation at this stage; in other cases, the presence of indistinct marks or specs was deemed insufficient evidence. 

As the original sampling was done using more recent imagery, irrigation was assumed not to have been discontinued after installation in any of the sampled zones over the 2011-2017 period. For a small minority of the sampled zones (presumably with irrigation infrastructure installed after 2017), no evidence of irrigation infrastructure was found in the NAIP imagery. 

There were some cases where the pivot points and arrangement of irrigation infrastructure changed over time. If there was evidence of irrigation across most of the GEE-based delineation, then it was coded as existing irrigation for that year (despite changes in the setup of one or more center pivots or other kinds of irrigation within the delineated area).

This method should result in a relatively higher probability of false negatives (un-identified irrigated areas) and a relatively lower probability of false positives (irrigation zone polygons which do not actually correspond with irrigation) in the sampled zones.

False positives could result from irrigation infrastructure which was not actually operable, or indistinct marks in the NAIP imagery mis-identified as irrigation infrastructure later installed in the same location. False positives could be decreased further by: throwing out the first NAIP image year with evidence of each pivot; using only more recent years of NAIP imagery. Alternatively, false negatives could be reduced by: spatial buffer of the center pivot zones by a distance equal to typical end gun range; interpolating install date as 1 year prior to the observed NAIP image year.


# CENTER PIVOT POINTS
The pivot_points shapefile contains point features associated with the central pivot point of irrigation zones of the center pivot type. 


# LINEAR JOINS
The irrigation_pipes shapefile contains line features created in ArcMap to join agwithdrawals to pivot_points. There is significant uncertainty in the accuracy of these joins. The "Snap Features" option was used, so spatial precision should be equal to the point data used. 


# IRRIGATION ZONE SAMPLING GUIDELINES 
 - Lack of evidence is not evidence of absence. Trees, ditches without cross tracks, buildings, utility poles, ... are evidence of absence of center pivot irrigation.

 - Evidence of center pivot irrigation includes: 
	Gray or white 'pivot arm' truss system.
	With a noticeable feature at the pivot point.
	Concentric circle tracks imprinted into irrigated soil and crops and across ditches/wetlands/or roads.
	
 - Cues used to direct the search for evidence include (used to guide the search, but not sufficient to justify delineation):
	Proximity to other irrigated areas.
	Fields with curved circular edges.
	Fields that appear greener or darker than surrounding fields.
	Fields with apparent pivot points.
	Discolored linear traces of soil disturbance (indicating buring pipes) extending from known ag withdrawal locations or pivot points.

To do: test for duplicated features.
To do: test that each irrigation pipe starts at an agwithdrawal and ends at a pivot point.
