$$$ BCL_Info

db_name = "my_database"
table_name = "bcl_info"

spark.sql(f"""
CREATE TABLE IF NOT EXISTS {db_name}.{table_name} (
    BCL_InfoId INT NOT NULL,
    BCL_PriorityId INT,
    FlightSeq STRING NOT NULL,
    ULD STRING NOT NULL,
    Lcode STRING,
    BreakDown CHAR(1) NOT NULL,
    Manager STRING,
    BDAgent STRING,
    WHAgent STRING,
    StartDate STRING,
    StartTime STRING,
    EndDate STRING,
    EndTime STRING,
    CreatedBy STRING NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    Status TINYINT,
    CompletedTime TIMESTAMP,
    CompletedBy STRING,
    CONSTRAINT pk_BCL_InfoId PRIMARY KEY (BCL_InfoId)
)
""")
