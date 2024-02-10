# datafun-05-sql-project
Module 5

## Create a virtual environment
```
python -m venv .venv
.\.venv\Scripts\activate
```

## Install dependencies 
```
py -m pip install pandas pyarrow
```

## Configure logging to write to a file, appending new logs to the existing file
```
logging.basicConfig(filename='log.txt', level=logging.DEBUG, filemode='a', format='%(asctime)s - %(levelname)s - %(message)s')

logging.info("Program started")
logging.info("Program ended")
```

## Function to connect to database and execute sql commands
```
def execute_sql_from_file(db_filepath, sql_file):
    sql_folder = "sql"
    sql_file_path = os.path.join(sql_folder, sql_file)
    with sqlite3.connect(db_filepath) as conn:
        with open(sql_file_path, 'r') as file:
            sql_script = file.read()
        conn.executescript(sql_script)
        print(f"Executed SQL from {sql_file}")
```

## Create Main Function and call your SQL functions
```
def main():

    db_filepath = 'module05.db'

    # Create database schema and populate with data
    execute_sql_from_file(db_filepath, 'create_tables.sql')
    execute_sql_from_file(db_filepath, 'insert_records.sql')
    execute_sql_from_file(db_filepath, 'update_records.sql')
    execute_sql_from_file(db_filepath, 'delete_records.sql')
    execute_sql_from_file(db_filepath, 'query_aggregation.sql')
    execute_sql_from_file(db_filepath, 'query_filter.sql')
    execute_sql_from_file(db_filepath, 'query_sorting.sql')
    execute_sql_from_file(db_filepath, 'query_group_by.sql')
    execute_sql_from_file(db_filepath, 'query_join.sql')

    logging.info("All SQL operations completed successfully")

```
