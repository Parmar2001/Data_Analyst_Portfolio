CREATE TABLE machine_downtime (
    Date DATE,
    Machine_ID varchar(50),
    Assembly_Line_No varchar(50),
    Hydraulic_Pressure DECIMAL(10,2),
    Coolant_Pressure DECIMAL(10,2),
    Air_System_Pressure DECIMAL(10,2),
    Coolant_Temperature DECIMAL(10,2),
    Hydraulic_Oil_Temperature DECIMAL(10,2),
    Spindle_Bearing_Temperature DECIMAL(10,2),
    Spindle_Vibration DECIMAL(10,2),
    Tool_Vibration DECIMAL(10,3),
    Spindle_Speed INT,
    Voltage INT,
    Torque DECIMAL(10,8),
    Cutting DECIMAL(10,2),
    Downtime varchar(50)
);
select * from machine_downtime

-- Calculate mean for all columns
SELECT 
    AVG(Hydraulic_Pressure) AS mean_hydraulic_pressure,
    AVG(Coolant_Pressure) AS mean_coolant_pressure,
    AVG(Air_System_Pressure) AS mean_air_system_pressure,
    AVG(Coolant_Temperature) AS mean_coolant_temperature,
    AVG(Hydraulic_Oil_Temperature) AS mean_hydraulic_oil_temperature,
    AVG(Spindle_Bearing_Temperature) AS mean_spindle_bearing_temperature,
    AVG(Spindle_Vibration) AS mean_spindle_vibration,
    AVG(Tool_Vibration) AS mean_tool_vibration,
    AVG(Spindle_Speed) AS mean_spindle_speed,
    AVG(Voltage) AS mean_voltage,
    AVG(Torque) AS mean_torque,
    AVG(Cutting) AS mean_cutting
FROM 
    machine_downtime;

-- Calculate mode for all columns
SELECT 
    MODE() WITHIN GROUP (ORDER BY Hydraulic_Pressure) AS mode_hydraulic_pressure,
    MODE() WITHIN GROUP (ORDER BY Coolant_Pressure) AS mode_coolant_pressure,
    MODE() WITHIN GROUP (ORDER BY Air_System_Pressure) AS mode_air_system_pressure,
    MODE() WITHIN GROUP (ORDER BY Coolant_Temperature) AS mode_coolant_temperature,
    MODE() WITHIN GROUP (ORDER BY Hydraulic_Oil_Temperature) AS mode_hydraulic_oil_temperature,
    MODE() WITHIN GROUP (ORDER BY Spindle_Bearing_Temperature) AS mode_spindle_bearing_temperature,
    MODE() WITHIN GROUP (ORDER BY Spindle_Vibration) AS mode_spindle_vibration,
    MODE() WITHIN GROUP (ORDER BY Tool_Vibration) AS mode_tool_vibration,
    MODE() WITHIN GROUP (ORDER BY Spindle_Speed) AS mode_spindle_speed,
    MODE() WITHIN GROUP (ORDER BY Voltage) AS mode_voltage,
    MODE() WITHIN GROUP (ORDER BY Torque) AS mode_torque,
    MODE() WITHIN GROUP (ORDER BY Cutting) AS mode_cutting
FROM 
    machine_downtime;

-- Calculate median for all columns
SELECT 
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Hydraulic_Pressure) AS median_hydraulic_pressure,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Coolant_Pressure) AS median_coolant_pressure,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Air_System_Pressure) AS median_air_system_pressure,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Coolant_Temperature) AS median_coolant_temperature,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Hydraulic_Oil_Temperature) AS median_hydraulic_oil_temperature,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Spindle_Bearing_Temperature) AS median_spindle_bearing_temperature,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Spindle_Vibration) AS median_spindle_vibration,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Tool_Vibration) AS median_tool_vibration,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Spindle_Speed) AS median_spindle_speed,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Voltage) AS median_voltage,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Torque) AS median_torque,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Cutting) AS median_cutting
FROM 
    machine_downtime;
-- Calculate variance for each column
SELECT 
    VARIANCE(Hydraulic_Pressure) AS variance_hydraulic_pressure,
    VARIANCE(Coolant_Pressure) AS variance_coolant_pressure,
    VARIANCE(Air_System_Pressure) AS variance_air_system_pressure,
    VARIANCE(Coolant_Temperature) AS variance_coolant_temperature,
    VARIANCE(Hydraulic_Oil_Temperature) AS variance_hydraulic_oil_temperature,
    VARIANCE(Spindle_Bearing_Temperature) AS variance_spindle_bearing_temperature,
    VARIANCE(Spindle_Vibration) AS variance_spindle_vibration,
    VARIANCE(Tool_Vibration) AS variance_tool_vibration,
    VARIANCE(Spindle_Speed) AS variance_spindle_speed,
    VARIANCE(Voltage) AS variance_voltage,
    VARIANCE(Torque) AS variance_torque,
    VARIANCE(Cutting) AS variance_cutting
FROM 
    machine_downtime;

-- Calculate standard deviation for each column
SELECT 
    STDDEV(Hydraulic_Pressure) AS stddev_hydraulic_pressure,
    STDDEV(Coolant_Pressure) AS stddev_coolant_pressure,
    STDDEV(Air_System_Pressure) AS stddev_air_system_pressure,
    STDDEV(Coolant_Temperature) AS stddev_coolant_temperature,
    STDDEV(Hydraulic_Oil_Temperature) AS stddev_hydraulic_oil_temperature,
    STDDEV(Spindle_Bearing_Temperature) AS stddev_spindle_bearing_temperature,
    STDDEV(Spindle_Vibration) AS stddev_spindle_vibration,
    STDDEV(Tool_Vibration) AS stddev_tool_vibration,
    STDDEV(Spindle_Speed) AS stddev_spindle_speed,
    STDDEV(Voltage) AS stddev_voltage,
    STDDEV(Torque) AS stddev_torque,
    STDDEV(Cutting) AS stddev_cutting
FROM 
    machine_downtime;

-- Calculate range for each column
SELECT 
    MAX(Hydraulic_Pressure) - MIN(Hydraulic_Pressure) AS range_hydraulic_pressure,
    MAX(Coolant_Pressure) - MIN(Coolant_Pressure) AS range_coolant_pressure,
    MAX(Air_System_Pressure) - MIN(Air_System_Pressure) AS range_air_system_pressure,
    MAX(Coolant_Temperature) - MIN(Coolant_Temperature) AS range_coolant_temperature,
    MAX(Hydraulic_Oil_Temperature) - MIN(Hydraulic_Oil_Temperature) AS range_hydraulic_oil_temperature,
    MAX(Spindle_Bearing_Temperature) - MIN(Spindle_Bearing_Temperature) AS range_spindle_bearing_temperature,
    MAX(Spindle_Vibration) - MIN(Spindle_Vibration) AS range_spindle_vibration,
    MAX(Tool_Vibration) - MIN(Tool_Vibration) AS range_tool_vibration,
    MAX(Spindle_Speed) - MIN(Spindle_Speed) AS range_spindle_speed,
    MAX(Voltage) - MIN(Voltage) AS range_voltage,
    MAX(Torque) - MIN(Torque) AS range_torque,
    MAX(Cutting) - MIN(Cutting) AS range_cutting
FROM 
    machine_downtime;

select MAX(Hydraulic_Pressure) - MIN(Hydraulic_Pressure) AS range_hydraulic_pressure FROM machine_downtime;

select MAX(Hydraulic_Pressure) from machine_downtime;

select MIN(Hydraulic_Pressure) AS range_hydraulic_pressure FROM machine_downtime;




SELECT

Round((SUM(POWER(Cutting - (SELECT AVG(Cutting) FROM machine_downtime), 3)) / (COUNT(*) * POWER(STDDEV(Cutting), 3))), 4) AS skewness_cutting,
    Round(((SUM(POWER(Cutting - (SELECT AVG(Cutting) FROM machine_downtime), 4)) / (COUNT(*) * POWER(STDDEV(Cutting), 4)))-3), 4) AS kurtosis_cutting
FROM machine_downtime