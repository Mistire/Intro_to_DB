import mysql.connector


try:

  connection = mysql.connector.connect(
    host='localhost',
    user='root',
    password='remi3721',
  )

  cursor = connection.cursor()
  cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
  cursor.commit()
  
  print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
  print(err)
finally:
  if connection.is_connected():
    cursor.close()

