--2.2
SELECT
  WorkOrderRouting.LocationID,
  Location.Name Location,
  COUNT (DISTINCT WorkOrderRouting.WorkOrderID) no_work_orders,
  COUNT (DISTINCT WorkOrderRouting.ProductID) no_unique_products,
  SUM (WorkOrderRouting.ActualCost) actual_cost,
  ROUND(AVG(TIMESTAMP_DIFF(WorkOrderRouting.ActualEndDate, WorkOrderRouting.ActualStartDate, DAY)), 2) AS avg_duration_diff
FROM
  `adwentureworks_db.workorderrouting` WorkOrderRouting
JOIN `adwentureworks_db.location` Location
ON WorkOrderRouting.LocationID = Location.LocationID
WHERE
  WorkOrderRouting.ActualStartDate BETWEEN '2004-01-01'AND '2004-01-31'
GROUP BY
  WorkOrderRouting.LocationID, Location
ORDER BY
  actual_cost DESC;
