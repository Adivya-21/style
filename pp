$$$ 18.dbo.CommandLog

db_name = "my_database"
table_name = "my_table"

"spark.sql(f"""
CREATE TABLE IF NOT EXISTS {db_name}.{table_name} (
    ID INT NOT NULL PRIMARY KEY,
    DatabaseName STRING,
    SchemaName STRING,
    ObjectName STRING,
    ObjectType STRING,
    IndexName STRING,
    IndexType INT,
    StatisticsName STRING,
    PartitionNumber INT,
    ExtendedInfo STRING,
    Command STRING NOT NULL,
    CommandType STRING NOT NULL,
    StartTime TIMESTAMP NOT NULL,
    EndTime TIMESTAMP,
    ErrorNumber INT,
    ErrorMessage STRING,
CONSTRAINT pk_ID PRIMARY KEY (ID)
)
""")
