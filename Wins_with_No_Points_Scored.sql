SELECT Count(*) as Count, Method, 
  (SELECT Count(Method) 
  FROM `bjj-dataset.2022_fight_data.2022_fight_data` 
  WHERE W_L = 'W') as Total
FROM `bjj-dataset.2022_fight_data.2022_fight_data` 
WHERE W_L = 'W'  
  AND Method IN ('Referee Decision','Adv','0x0')
GROUP BY Method
ORDER BY Count DESC