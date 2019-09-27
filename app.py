from flask import Flask

app = Flask(__name__)
app.config.from_object('config')

@app.errorhandler(500)
def internal_error(error):
    return '<h2>Internal Error. Good luck!</h2>'

@app.errorhandler(404)
def not_found_error(error):
    return '<h2>Not Found. Wrong Door.</h2>'

@app.route('/')
def hello():
    return '<h1>Super NiuBi Project!!!</h1>'


if __name__=='__main__':
    app.run(port=8080)
