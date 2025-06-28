import mysql.connector
def create_database():
    try:
        # Establish a connection to the MySQL server
        cnx = mysql.connector.connect(
            user='system',
            password='Judith@01',
            host='localhost',
            port= '3306'
        )

        # Create a cursor object
        cursor = cnx.cursor()

        # Create the database if it doesn't exist
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

        # Print a success message
        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        # Print an error message if there's a connection issue
        print(f"Error: {err}")
    finally:
        # Close the cursor and connection
        if 'cursor' in locals():
            cursor.close()
        if 'cnx' in locals():
            cnx.close()

if __name__ == "__main__":
    create_database()



