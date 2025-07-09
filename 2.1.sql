  --2.1
SELECT
  WorkOrderRouting.LocationID,
  COUNT (DISTINCT WorkOrderRouting.WorkOrderID) no_work_orders,
  COUNT (DISTINCT WorkOrderRouting.ProductID) no_unique_products,
  SUM (WorkOrderRouting.ActualCost) actual_cost
FROM
  `adwentureworks_db.workorderrouting` WorkOrderRouting
WHERE
  DATE_TRUNC(WorkOrderRouting.ActualStartDate, Month) = '2004-01-01' 
GROUP BY
  WorkOrderRouting.LocationID
ORDER BY
  actual_cost DESC;

