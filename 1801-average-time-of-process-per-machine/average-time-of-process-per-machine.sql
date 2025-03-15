# Write your MySQL query statement below
select machine_id,round(avg(end_time-start_time),3) as processing_time from (
    select machine_id,process_id,max(timestamp) as end_time,
    min(timestamp) as start_time from Activity
    group by machine_id,process_id
) as processTimes
group by machine_id;
