SELECT Count(*) as Count, Method, 
  (SELECT Count(Method) 
  FROM `bjj-dataset.2022_fight_data.2022_fight_data` 
  WHERE W_L = 'W' 
  AND Decided_by_Points = 1.0) as Total
FROM `bjj-dataset.2022_fight_data.2022_fight_data` 
WHERE W_L = 'W' AND Decided_by_Points = 1.0
GROUP BY Method
ORDER BY Count DESC