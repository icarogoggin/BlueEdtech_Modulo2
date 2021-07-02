from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    return render_template('/index.html')

registros = [
    {
        "id":1
        "nome":1
        "imagem_url":
    }
]

@app.route("/read")
def read_all():
    return render_template('/readAll.html')

if(__name__ == "__main__"):
    app.run(debug=True)

