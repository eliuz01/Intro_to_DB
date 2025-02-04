import mysql.connector
from mysql.connector import Error
def create_database():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="E#koyi@2025",
            )
        if connection.is_connected():
            print("Successfully connected to MySQL server.")
            
            # Create a cursor object
            cursor = connection.cursor()
            
            #SQL query to create the database if it doesn't already exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            # Commit the transaction
            connection.commit()
    except Error as e:
        print(f"Error:{e}")
    finally:
        # Close the cursor and connection
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()