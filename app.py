from flask import Flask, jsonify

app = Flask(__name__)

# Exposing JSON document when visited with an HTTP client
@app.route('/', methods=['GET'])
def hello_world():
    return jsonify({"id": "1", "message": "Hello world"})

# Creating a second application that utilizes the first and displays a fully reversed message text rendered dynamically.
@app.route('/reverse', methods=['GET'])
def reverse_message():
    response = app.test_client().get('/')
    message = response.get_json()['message']
    reversed_message = message[::-1]
    return f"The reversed message is: {reversed_message}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
