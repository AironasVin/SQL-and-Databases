  --2.3
SELECT
  WorkOrderID,
  SUM(ActualCost) actual_cost
FROM
  `adwentureworks_db.workorderrouting` WorkOrderRouting
WHERE
  ActualStartDate BETWEEN '2004-01-01' AND '2004-01-31'
GROUP BY
  WorkOrderID
HAVING
  actual_cost > 300;
