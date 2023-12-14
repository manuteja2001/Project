import sqlite3

class Database:
    def __init__(self, db_file='cars.db'):
        self.conn = sqlite3.connect(db_file)
        self.cursor = self.conn.cursor()

        # Create tables if they don't exist
        self.create_cars_table()
        self.create_manufacturers_table()

    def create_cars_table(self):
        self.cursor.execute('''
            CREATE TABLE IF NOT EXISTS cars (
                car_id INTEGER PRIMARY KEY AUTOINCREMENT,
                car_name TEXT NOT NULL,
                car_model TEXT NOT NULL
            )
        ''')
        self.conn.commit()

    def create_manufacturers_table(self):
        self.cursor.execute('''
            CREATE TABLE IF NOT EXISTS manufacturers (
                manufacturer_id INTEGER PRIMARY KEY AUTOINCREMENT,
                manufacturer_name TEXT NOT NULL
            )
        ''')
        self.conn.commit()

    def execute_query(self, query, params=()):
        self.cursor.execute(query, params)
        self.conn.commit()

    def fetch_all(self, query, params=()):
        self.cursor.execute(query, params)
        return self.cursor.fetchall()

    def fetch_one(self, query, params=()):
        self.cursor.execute(query, params)
        return self.cursor.fetchone()

# Example usage in your main file
from bottle import Bottle, template, request, redirect, run
from database import Database

app = Bottle()
db = Database()

# ... (rest of your code)

if __name__ == '__main__':
    run(app, host='localhost', port=8084, debug=True)
