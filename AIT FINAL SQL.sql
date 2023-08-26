SELECT * FROM ait_final_project.ait_final_project;

#SELECTING THE GRID

SELECT degrees_from_mean FROM ait_final_project.ait_final_project;

#FILTER THE VALUES WHICH IS ABOVE 10.00 IN degrees_from_mean

SELECT * FROM ait_final_project.ait_final_project
WHERE degrees_from_mean>10
ORDER BY degrees_from_mean DESC

#FOR THE STATION I WANT

SELECT * FROM ait_final_project.ait_final_project
WHERE station_name='BLACK RIVER PUMPS' OR station_name='ICE HARBOR DAM' ;


#SELECTING STATION NAME WHICH IS HAVING B IN STARTING

SELECT * FROM ait_final_project.ait_final_project
WHERE station_name like'B%';

#SELECTING STATION NAME WHICH IS HAVING K ANYWHERE

SELECT * FROM ait_final_project.ait_final_project
WHERE station_name like'%K%';


SELECT * FROM ait_final_project.ait_final_project
GROUP BY type;

# MAX TEMP MAXIMUM

SELECT * FROM ait_final_project.ait_final_project
ORDER BY max_temp   DESC;


#MIN TEMP MAXIMUM

SELECT * FROM ait_final_project.ait_final_project
ORDER BY min_temp  ASC;

  
           
            
