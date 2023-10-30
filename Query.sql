/*exploratory analysis*/
SELECT *
FROM [earthquake].[dbo].[earthquake_1995-2023]

SELECT COUNT(*) data_count
FROM [earthquake].[dbo].[earthquake_1995-2023]

/*magintude outliers*/

/*profiling magnitudes*/
SELECT magnitude
FROM [earthquake].[dbo].[earthquake_1995-2023]
ORDER BY 1

/*WHAT is the count and freq of each magnitude value?*/
SELECT magnitude, COUNT(magnitude) as earthquakes, ROUND(COUNT(magnitude)*100.0/1000.0,2) as pct
FROM [earthquake].[dbo].[earthquake_1995-2023]
GROUP BY magnitude
ORDER BY magnitude

/*What is the most common location?*/
SELECT location, COUNT(location) as freq
FROM [earthquake].[dbo].[earthquake_1995-2023]
GROUP BY location
ORDER BY freq DESC

/*WHAT is the count and freq of each magnitude value in the most common location?*/
SELECT magnitude, COUNT(magnitude) as earthquakes, ROUND(COUNT(magnitude)*100.0/29,2) as pct
FROM [earthquake].[dbo].[earthquake_1995-2023]
WHERE location = '"Kokopo, Papua New Guinea"'
GROUP BY magnitude
ORDER BY magnitude

/*what is the percentile?*/
SELECT magnitude, PERCENT_RANK() OVER(ORDER BY magnitude) as percentile
FROM [earthquake].[dbo].[earthquake_1995-2023]

/*divding the dataset into buckets and finding the lower and upper ends*/
SELECT percentile, MIN(magnitude) as lower_end, MAX(magnitude) as upper_end
FROM(
SELECT magnitude, ntile(5) OVER(ORDER BY magnitude) as percentile
FROM [earthquake].[dbo].[earthquake_1995-2023]) sub
GROUP BY percentile
ORDER BY percentile

/*calcualting z_score*/
SELECT location, average, stdv, (CAST (magnitude AS NUMERIC) -average)/stdv as Z_score
FROM [earthquake].[dbo].[earthquake_1995-2023]
JOIN(
SELECT AVG(CAST (magnitude AS NUMERIC)) as average, STDEV(CAST (magnitude AS NUMERIC)) as stdv
FROM [earthquake].[dbo].[earthquake_1995-2023]) sub
ON 1 = 1

