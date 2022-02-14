//Hub-Like Dependency for SHE
MATCH (:Feature)-[r:Requires]->(f1:Feature) 
WITH f1, count(r) As Rtotal, size((:Feature)<-[:Requires]-(f1)) As t
WHERE Rtotal >=5 AND size((:Feature)<-[:Requires]-(f1)) < Rtotal
RETURN f1, Rtotal, t, Rtotal+t As TotalDependencies
UNION
MATCH (:Feature)<-[r:Requires]-(f1:Feature) 
WITH f1, count(r) As Rtotal, size((:Feature)-[:Requires]->(f1)) as t 
WHERE Rtotal >=5 AND size((:Feature)-[:Requires]->(f1)) < Rtotal
RETURN f1, Rtotal, t, Rtotal+t As TotalDependencies