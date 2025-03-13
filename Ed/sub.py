import matplotlib.pyplot as plt
#usar: Quando você precisa comparar diferentes tipos de gráficos lado a lado ou mostrar múltiplos gráficos em uma única figura.
a = (1, 2, 3, 4, 5)
b = (1, 2, 3, 4, 5)
d = (2, 2, 5, 4, 5)
e = (2, 4, 3, 4, 5)
# Cria uma figura com 1 linha e 2 colunas de subgráficos
plt.subplot(1, 2, 1)  # Primeiro subgráfico (1 linha, 2 colunas, 1º gráfico)
plt.plot(a, b)  # Plota o gráfico com os dados a e b
plt.subplot(1, 2, 2)  # Segundo subgráfico (1 linha, 2 colunas, 2º gráfico)
plt.plot(d, e)  # Plota o gráfico com os dados d e e
plt.show()  # Exibe a janela com os dois gráficos lado a lado