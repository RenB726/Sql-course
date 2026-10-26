SELECT ps.PatientId,
       ps.Ward,
       h.hospital,
       H.Hospitaltype
FROM   PatientStay AS ps
       INNER JOIN
       DimHospital AS h
       ON ps.Hospital = h.Hospital
WHERE  h.HospitalType = 'teaching';

SELECT   H.Reach,
         count(*) AS numberofpatients
FROM     PatientStay AS ps
         INNER JOIN
         DimHospital AS h
         ON ps.Hospital = h.Hospital
GROUP BY h.Reach;

SELECT
    Ward,
    COUNT(DISTINCT PatientId) AS NumberOfPatients,
    SUM(Tariff) AS TotalTariff,
    AVG(Tariff) AS AverageTariff
FROM PatientStay
GROUP BY Ward;