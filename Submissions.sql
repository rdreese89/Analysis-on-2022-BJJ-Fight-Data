SELECT COUNT(Method) as Count, Method, 
  Count(Method) / 
  (SELECT COUNT(Method) 
  FROM `bjj-dataset.2022_fight_data.2022_fight_data` 
  WHERE W_L = 'W'  
  AND Decided_by_Points = 0.0 
  AND Method NOT IN ('Referee Decision', 'Adv','DQ','EBI/OT','Injury')) as Percent
FROM `bjj-dataset.2022_fight_data.2022_fight_data` 
WHERE W_L = 'W' AND Decided_by_Points = 0.0 
  AND Method NOT IN ('Referee Decision', 'Adv','DQ','EBI/OT','Injury')
Group by Method
ORDER BY Count DESC