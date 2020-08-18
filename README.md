# Lead-NYC

Data Source- Source: https://data.cityofnewyork.us/Environment/Lead-At-The-Tap-Results/kdqv-
qs7p

#Dataset- 'Lead_At_The_Tap_Results.csv'

#SQL script- 'lead_script.sql'

This dataset contains records on concentrations of lead and copper found in tap water in several locations across New York City.
The quantities of lead and copper are measured in mg/L of water. These measurements are taken 3 different times: once upon opening the tap, again after 1-2 minutes of letting the water run, and finally after the water has run for 5 minutes.
In the description, it is noted that the water is lead-free when it enters the distribution system, so the lead that is present in the sample comes from the internal plumbing of the building.

I encountered a few issues with this dataset. There were a significant amount of missing values, but I ended up changing them to 0.0 because that’s what seemed to make the most sense.
I expected there to only be five distinct values in the “borough” column, but there were way more.
When I looked at the distinct values, I noticed that the ones that were not an actual borough were all neighborhoods in Queens.

The concentration of lead or copper in the water generally decreased after letting the water run for a few minutes.

If I were to do further research with this data I would want to focus more on the zip codes.
It’s possible that some areas have more buildings that are old or have older pipes, so that could explain higher concentrations of lead.
I’d also want to look closer at the concentrations of metal that actually increased after the second and third measurements. 
I’d also like to find out what concentrations of lead and copper are considered harmless and compare the two.

The results of my analysis are not what I anticipated.
I thought that drinking water in NY contained no lead, which it technically does not, but by the time it reaches our taps it does.
I was surprised to discover that there were only 17 records of 0.0 mg/L initial concentration of copper in tap water.
I also assumed that letting the water run would decrease the concentration of lead, but that is not always the case!
