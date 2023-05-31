import xml.etree.ElementTree as ET
import mysql.connector

# Parse the XML document
classListFile = "/opt/l2j/git/l2j-server-datapack/src/main/resources/data/stats/chars/classList.xml"
tree = ET.parse(classListFile)
root = tree.getroot()

# connect to MySQL DB
db = mysql.connector.connect(
    host='localhost',
    user='l2j',
    password='mypasswd',
    database='l2jgs'
)
cursor = db.cursor()

# Create the classes table if it doesn't exist
create_table_query = """
CREATE TABLE IF NOT EXISTS classes (
    classId INT PRIMARY KEY,
    name VARCHAR(255),
     parentClassId INT
)
"""
cursor.execute(create_table_query)

# Insert data into the table
insert_query = """
INSERT INTO classes (classId, name, parentClassId) VALUES (%s, %s, %s)
 """
for element in root.findall('class'):
    classId = element.get('classId')
    name = element.get('name')
    parentClassId = element.get('parentClassId') if element.get('parentClassId') != "0" else None
    data = (classId, name, parentClassId)
    cursor.execute(insert_query, data)
# Commit the changes and close the connection
db.commit()
cursor.close()
db.close()
