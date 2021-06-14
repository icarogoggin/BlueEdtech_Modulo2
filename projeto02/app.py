from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    nome = "Ícaro"
    idade = 27
    if idade >= 18:
        maiordeidade=True
    else:
        maiordeidade=False
    cidade = "Pombos"
    imagem = "https://file5s.ratemyserver.net/mobs/1251.gif"
    return render_template('index.html', nome=nome, idade=idade, cidade=cidade, imagem=imagem)

if (__name__ == "__main__"):
    app.run(debug=True)