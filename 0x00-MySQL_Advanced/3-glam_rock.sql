SELECT 
    band_name, 
    CASE 
        WHEN split IS NULL THEN 2022 - formed
        ELSE split - formed
    END AS lifespan
FROM (
    SELECT name AS band_name, formed, split, style
    FROM metal_bands
    WHERE main_style = 'Glam rock'
) AS glam_rock_bands
ORDER BY lifespan DESC;
