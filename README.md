# FTI University Database (SQL Server)

Relational database designed and implemented as my **Bachelor's thesis** at [*Universiteti "Aleksandër Moisiu" Durrës* (UAMD)](https://uamd.edu.al/), June 2025.

The system replaces the manual, paper- and Excel-based data collection process of the **Faculty of Information Technology (FTI)** with a normalized SQL Server database — covering students, faculty, courses, curricula, departments, schedules, classrooms, and international Erasmus+ mobility.

Thesis title: *"Krijimi i një Baze të Dhënash për Fakultetin e Teknologjisë së Informacionit"* — *"Creating a Database for the Faculty of Information Technology."*
Supervisor: **Prof. Dr. Eris Zeqo**.

---

## What's in this repo

```
university-database/
├── schema/
│   └── full_schema.sql        # Portable SQL Server schema (26 tables + 8 views + FKs + CHECKs)
├── queries/
│   └── example_queries.sql    # Analytical queries demonstrating the views
├── docs/
│   └── ERD.png                # Entity-Relationship Diagram (from SSMS Diagram Designer)
└── README.md
```

---

## The schema at a glance

| Component | Count | Notes |
|---|---|---|
| Tables | 26 | Students, Pedagog (faculty), Kurs, Kurrikula, Departament, Fakultet, Salle, Mobilitete, etc. |
| Analytical views | 8 | Pre-built queries for grade averages, graduation rates, time-to-graduate, etc. |
| Foreign keys | 34 | Full referential integrity across the schema |
| CHECK constraints | 23 | Validates email format (`%_@uamd.edu.al`), phone format (`06[7-9]...`), gender (M/F), student ID pattern, valid status values, etc. |

The schema was modeled with an Entity-Relationship Diagram, transformed into a logical relational model, normalized to **3NF**, and then implemented as the physical schema below.

![ERD](docs/ERD.png)

---

## Analytical views

The database ships with 8 pre-built views that answer concrete questions from the Registrar's Office. They were built from real student data (Mathematics & Informatics department, 2018–2024 cohorts):

| View | Question it answers |
|---|---|
| `MESATARE_GJINIA` | Average grade and student count by gender |
| `MESATARE_LENDA` | Average grade and student count per subject |
| `MESATARE_STUDENT` | Individual average grade per student |
| `DIFERENCA_DIPLOMA` | Final diploma grade vs. that student's subject average |
| `KOHEZGJATJA` | Time-to-graduation for each student |
| `PADIPLOMUAR` | Students not yet graduated, by enrolment year |
| `DIPLOMUAR` | Students who graduated, by enrolment year |
| `MESATARE_VITE` | Average grade by enrolment year (cohort trend) |

See [`queries/example_queries.sql`](queries/example_queries.sql) for usage examples and three additional ad-hoc analyses (average time-to-graduate, side-by-side graduated/non-graduated comparison, diploma exam average).

---

## How to deploy

You need [SQL Server](https://www.microsoft.com/en-us/sql-server) (Express edition is fine) and either `sqlcmd` or SQL Server Management Studio (SSMS).

**Using SSMS**

1. Open `schema/full_schema.sql` in SSMS.
2. Press **F5**. The script will create the `FTI` database with all tables, views, FKs, and CHECKs.
3. Open `queries/example_queries.sql` to explore the analytical views.

**Using the command line**

```bash
sqlcmd -S <your-server> -i schema/full_schema.sql
sqlcmd -S <your-server> -d FTI -i queries/example_queries.sql
```

Note: no student records are committed to this repository (privacy). The schema deploys with empty tables; you can populate them with your own data via `INSERT` statements or `SQL Server Import/Export Wizard`.

---

## A real-world problem this database solved

While analysing the existing data-storage practices in the FTI Mobility office (Erasmus+ incoming/outgoing students and staff), I found:

- **Duplication of personal data** — name, gender, email, phone repeated across five separate spreadsheet categories (OSAK, OSAD, OST, IST, IS) for the *same* individuals.
- **Stored fields that don't belong to us** — monthly stipends and transport expenses for incoming students were kept in Excel even though those amounts are paid and tracked by the partner university, not by UAMD.
- **Manually computed totals** — total expense fields recalculated by hand instead of derived from per-diem and transport columns.

The proposed schema fixes this by storing each individual once (`Personel`/`Student`) and linking through foreign keys, deriving totals at query time, and dropping the irrelevant columns altogether.

---

## Skills demonstrated

- Requirements analysis (functional + non-functional) for an institutional data-management system
- Entity-Relationship modeling (25+ entities, including many-to-many relationships)
- Normalization (1NF → 2NF → 3NF)
- Physical schema design in **SQL Server** — primary/foreign keys, indexes, CHECK constraints with regex-style patterns, UNIQUE constraints
- Analytical SQL — joins, `GROUP BY`, `HAVING`, aggregate functions, subqueries, views
- Identifying and fixing data-quality problems in an existing manual process
- Technical writing in Albanian + English (full thesis, 57 pages)

---

## Author

**Sindi Borici** — Mathematics & Technology BSc (2025), MSc Software Engineering in progress.
Durrës, Albania · [LinkedIn](www.linkedin.com/in/sindi-borici-5a884b2b7) · sindiborici12@gmail.com
