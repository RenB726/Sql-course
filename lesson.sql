/*
Example lesson stub
*/
SELECT		ps.PatientId,
			ps.Hospital,
			ps.Ward,
			DATEADD(WEEK, -2, ps.AdmittedDate) AS Reminderdate,
			DATEADD(month, 3, ps.DischargeDate) AS Apptdate,
			ps.AdmittedDate,
			ps.DischargeDate,
			DATEDIFF(day, ps.AdmittedDate, ps.DischargeDate) AS lenghtofstay
FROM		PatientStay AS ps
WHERE		ps.Hospital IN ('kingston', 'Pruh')
			AND ps.Ward LIKE '%surgery'
			AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	ps.AdmittedDate, ps.DischargeDate;


--	SELECT DATEADD(WEEK,-2,'2026-10-26') as Testvalue