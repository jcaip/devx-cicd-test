from flask import Flask

app = Flask(__name__)

@app.route('/')
def test():
    return "Hello World!"

@app.route('/two')
def test_two():
    return "Working, just pushed this, now I have more text, with even more text, and this is the last edit!!"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
