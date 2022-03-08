import config
import pandas as pd
from flask_sqlalchemy import SQLAlchemy
import pymysql
from sqlalchemy import create_engine

conn= "mysql+pymysql://{0}:{1}@{2}/{3}".format(config.username, config.password, config.host, config.schema)
engine = create_engine(conn, echo=False)

data= pd.read_csv('csvs\employees.csv')

x = pd.DataFrame(data)

dbConn = engine.connect()
tableName = "employees"
y = pd.DataFrame(data=x)
try:
    frame = y.to_sql(tableName, dbConn, if_exists='replace');
except ValueError as vx:
    print(vx)
except Exception as ex:
    print(ex)
else:
    print("Table %s created successfully."%tableName);
finally:
    dbConn.close()


data= pd.read_csv('csvs\historicsales.csv')

x = pd.DataFrame(data)

dbConn = engine.connect()
tableName = "historic_sales"
y = pd.DataFrame(data=x)
try:
    frame = y.to_sql(tableName, dbConn, if_exists='replace');
except ValueError as vx:
    print(vx)
except Exception as ex:
    print(ex)
else:
    print("Table %s created successfully."%tableName);
finally:
    dbConn.close()


data= pd.read_csv('csvs\historicsalesperiods.csv')

x = pd.DataFrame(data)

dbConn = engine.connect()
tableName = "sales_periods"
y = pd.DataFrame(data=x)
try:
    frame = y.to_sql(tableName, dbConn, if_exists='replace');
except ValueError as vx:
    print(vx)
except Exception as ex:
    print(ex)
else:
    print("Table %s created successfully."%tableName);
finally:
    dbConn.close()



data= pd.read_csv('csvs\productinfo.csv')

x = pd.DataFrame(data)

dbConn = engine.connect()
tableName = "product_info"
y = pd.DataFrame(data=x)
try:
    frame = y.to_sql(tableName, dbConn, if_exists='replace');
except ValueError as vx:
    print(vx)
except Exception as ex:
    print(ex)
else:
    print("Table %s created successfully."%tableName);
finally:
    dbConn.close()

data= pd.read_csv('csvs\OLAPdenorm.csv')

x = pd.DataFrame(data)

dbConn = engine.connect()
tableName = "big_ugly"
y = pd.DataFrame(data=x)
try:
    frame = y.to_sql(tableName, dbConn, if_exists='replace');
except ValueError as vx:
    print(vx)
except Exception as ex:
    print(ex)
else:
    print("Table %s created successfully."%tableName);
finally:
    dbConn.close()
