from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Jogo do Betão</h1><br><a href='http://localhost:5000/jogo'>JOGAR</a>"

@app.route("/jogo")
def index(status=None):
    import random
    status = random.randint(1,2)
    nome = "Betão"
    sobrenome = "Einstein"
    idade = 42
    if status == 1:
        doido = True
    else:
        doido = False
    
    imagem_serio = "https://upload.wikimedia.org/wikipedia/commons/5/50/Albert_Einstein_%28Nobel%29.png"
    imagem_doido = "https://www.hypeness.com.br/1/2017/08/EinsteinL3.jpg"

    return render_template('index.html', nome=nome, sobrenome=sobrenome,
    idade=idade, doido=doido, imagem_serio=imagem_serio, imagem_doido=imagem_doido)

if (__name__ == "__main__"):
    app.run(debug=True)