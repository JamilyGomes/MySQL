import matplotlib.pyplot as plt
# Utilização: Nós
# Exemplo: Um gráfico de barras comparando as vendas de diferentes produtos em uma loja
a = (1, 2, 3, 4, 5, 6)
b = (2, 4, 6, 8, 10, 12)
# Cria um gráfico de barras onde os valores de 'a' são as posições no eixo x
# e os valores de 'b' são as alturas das barras
plt.bar(a, b)
plt.show()  # Exibe o gráfico de barras