
import matplotlib.pyplot as plt
#usar: Quando você quer mostrar proporções ou percentagens relativas a um total, como a distribuição de votos ou a participação de mercado
a = (10, 20, 30)  # Tamanhos das fatias
explode = (0.1, 0, 0)  # "Explodir" a primeira fatia para destacá-la
labels = ["HB20", "Gol", "Fusca"]  # Rótulos das fatias
# Cria o gráfico de pizza, destacando a primeira fatia com 'explode'
plt.pie(a, explode=explode, labels=labels, autopct='%.2f%%', shadow=True)
plt.title('Meu Grafico')  # Título do gráfico
plt.grid(True)  # Ativa a grade no fundo do gráfico
plt.show()  # Exibe o gráfico de pizza