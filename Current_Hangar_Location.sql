SELECT p.plane_no, p.hangar_no
FROM Parking p
WHERE p.out_time IS NULL;