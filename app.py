from flask import Flask, render_template, request, jsonify
import mysql.connector
import random

app = Flask(__name__)

# Database Connection
DB_CONFIG = {
    'host': 'your-rds-endpoint.rds.amazonaws.com',
    'user': 'your-db-user',
    'password': 'your-db-password',
    'database': 'restaurant'
}


def get_restaurants(cuisine, price_range):
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor(dictionary=True)
    query = """
    SELECT name, address, cuisine, price_range
    FROM restaurants
    WHERE cuisine = %s AND price_range = %s
    """
    cursor.execute(query, (cuisine, price_range))
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    return results

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/quiz', methods=['POST'])
def quiz():
    data = request.json
    cuisine = data.get('cuisine')
    price_range = data.get('price_range')
    results = get_restaurants(cuisine, price_range)
    return jsonify(results)

@app.route('/random-restaurant')
def random_restaurant():
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT name, address, cuisine, price_range FROM restaurants ORDER BY RAND() LIMIT 1")
    result = cursor.fetchone()
    cursor.close()
    conn.close()
    return jsonify(result or {})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

# Frontend - index.html
html_code = ""