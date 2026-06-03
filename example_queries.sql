-- =====================================================================
-- Example Analytical Queries
-- =====================================================================
-- Demonstrates the eight analytical views shipped with the database
-- and a few additional ad-hoc queries used during the thesis work.
-- All queries operate on real student data from the Mathematics &
-- Informatics department (Bachelor program, 2018-2024 cohorts).
--
-- Run after deploying schema/full_schema.sql.
-- =====================================================================

USE [FTI]
GO

-- ---------------------------------------------------------------------
-- 1. Average grade across all subjects, broken down by gender.
--    View: MESATARE_GJINIA
-- ---------------------------------------------------------------------
SELECT * FROM MESATARE_GJINIA;

-- ---------------------------------------------------------------------
-- 2. Average grade and number of students per subject.
--    View: MESATARE_LENDA   (ordered weakest -> strongest)
-- ---------------------------------------------------------------------
SELECT * FROM MESATARE_LENDA ORDER BY MESATARE ASC;

-- ---------------------------------------------------------------------
-- 3. Individual average grade for every student.
--    View: MESATARE_STUDENT   (top scorers first)
-- ---------------------------------------------------------------------
SELECT * FROM MESATARE_STUDENT ORDER BY MESATARE DESC;

-- ---------------------------------------------------------------------
-- 4. Final diploma grade vs. the student's subject-average.
--    Shows over-performers and under-performers on the diploma exam.
--    View: DIFERENCA_DIPLOMA
-- ---------------------------------------------------------------------
SELECT * FROM DIFERENCA_DIPLOMA ORDER BY DIFERENCE DESC;

-- ---------------------------------------------------------------------
-- 5. Time-to-graduation per student (registration date -> diploma date).
--    View: KOHEZGJATJA
-- ---------------------------------------------------------------------
SELECT * FROM KOHEZGJATJA ORDER BY DIF;

-- ---------------------------------------------------------------------
-- 6. Average time-to-graduation across the whole cohort.
--    (Ad-hoc: not a view, computed on top of KOHEZGJATJA.)
-- ---------------------------------------------------------------------
SELECT ROUND(AVG(CAST(DIF AS FLOAT)), 2) AS AvgYearsToGraduate
FROM KOHEZGJATJA;

-- ---------------------------------------------------------------------
-- 7. Students who have NOT yet graduated, grouped by enrolment year.
--    View: PADIPLOMUAR
-- ---------------------------------------------------------------------
SELECT * FROM PADIPLOMUAR;

-- ---------------------------------------------------------------------
-- 8. Students who HAVE graduated, grouped by enrolment year.
--    View: DIPLOMUAR
-- ---------------------------------------------------------------------
SELECT * FROM DIPLOMUAR;

-- ---------------------------------------------------------------------
-- 9. Side-by-side comparison: graduated vs. non-graduated by year.
--    (Ad-hoc: joins two views to produce a single retention table.)
-- ---------------------------------------------------------------------
SELECT  P.REGJISTRIM,
        TE_DIPLOMUAR + PADIPLOMUAR AS Enrolled,
        TE_DIPLOMUAR              AS Graduated,
        PADIPLOMUAR               AS NotYetGraduated
FROM    PADIPLOMUAR P
JOIN    DIPLOMUAR   D ON P.REGJISTRIM = D.REGJISTRIM
ORDER BY P.REGJISTRIM;

-- ---------------------------------------------------------------------
-- 10. Average grade on the diploma exam itself (Bachelor program).
--     (Ad-hoc: aggregates the NOTA table directly.)
-- ---------------------------------------------------------------------
SELECT ROUND(AVG(CAST(NOTA AS FLOAT)), 2) AS AvgDiplomaGrade
FROM   NOTA
WHERE  LENDA = N'Provim. Tezë Diplome';

-- ---------------------------------------------------------------------
-- 11. Average grade by enrolment year (cohort performance trend).
--     View: MESATARE_VITE
-- ---------------------------------------------------------------------
SELECT * FROM MESATARE_VITE ORDER BY REGJSITRIM;
