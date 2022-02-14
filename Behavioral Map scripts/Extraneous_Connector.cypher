// Extraneous Connector 
MATCH (f:Feature)-[r:Requires]->(f2:Feature) 
WHERE exists((f)-[:Reads|Controls]->(f2))
RETURN f, r, f2