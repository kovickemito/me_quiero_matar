from flask import Flask, render_template
app = Flask(__name__)
@app.route('/')
def index():
 return render_template('index.html')

@app.route('/ayuda')
def ayuda():
 return 'Esta es la página de ayuda del curso de Telemática'

if __name__ == "__main__":
	app.run (host="0.0.0.0", port=8090)
