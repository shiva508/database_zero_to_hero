# AS is used to give alias name to colun or table

## Syntax

## SELECT column_name AS aliasname FROM table_name

## SELECT atn.column_name AS aliasname FROM table_name AS atn

### SELECT geoid, pid, SUM(amount) AS totalamount FROM public.sales GROUP BY geoid,pid HAVING SUM(amount) >291599 ORDER BY geoid,pid,SUM(amount) ASC

## Alias name can not be used in WHERE or GROUP BY as alias name is available at the end of execution of query

{"type":"excalidraw/clipboard","elements":[{"type":"rectangle","version":512,"versionNonce":1411667433,"isDeleted":false,"id":"7U9OrTbmxHnZ5Ol5vcZL0","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"x":466,"y":284,"strokeColor":"#000000","backgroundColor":"#868e96","width":322,"height":284,"seed":1431759921,"groupIds":[],"roundness":{"type":1},"boundElements":[],"updated":1665452515052,"link":null,"locked":false}],"files":{}}
