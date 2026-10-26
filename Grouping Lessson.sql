Select 
ps.hospital,
ps.ward,
COUNT(*) as numberofpatients, 
SUM(ps.tariff) as totaltariff
from PatientStay ps
GROUP BY ps.Hospital, ps.Ward