import sqlite3

# Connect to SQLite DB (or create it if it doesn’t exist)
conn = sqlite3.connect("patient_database.db")
cursor = conn.cursor()

# Create tables
with open("schema.sql", "r") as f:
    cursor.executescript(f.read())

# Insert mock data
with open("insert_data.sql", "r") as f:
    cursor.executescript(f.read())

# Run a sample query: patients needing follow-up
print("Patients needing follow-up:")
for row in cursor.execute("""
    SELECT p.first_name, p.last_name, a.appointment_date
    FROM Patients p
    JOIN Appointments a ON p.patient_id = a.patient_id
    WHERE a.follow_up_needed = 1;
"""):
    print(row)

conn.commit()
conn.close()
