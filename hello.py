from flask import Flask, render_template
app = Flask(__name__)

# create a route

@app.route('/')
def hello():

    return render_template('template/hello.html')
