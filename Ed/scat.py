import matplotlib.pyplot as plt
# Utilização: Ideal para mostrar a relação entre duas variáveis e identificar padrões, tendências ou outliers.
# Exemplo: Um gráfico que relaciona a altura e o peso de um grupo de pessoas
a = (1, 2, 3, 4, 5, 6)
b = (2, 4, 6, 8, 10, 12)
# Cria um gráfico de dispersão, onde cada ponto (a, b) é plotado como um ponto no gráfico
plt.scatter(a, b)
plt.show()  # Exibe o gráfico de dispersão