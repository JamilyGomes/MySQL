 
import matplotlib.pyplot as plt
#Quando usar: Quando você quer entender a distribuição de uma variável contínua e ver onde a maior parte dos dados está concentrada
a = (1, 2, 3, 4, 5, 6)
b = (2, 4, 6, 8, 10, 12)
# Cria um histograma, onde 'a' representa os dados e 'b' define os intervalos das barras
plt.hist(a, b)
plt.show()  # Exibe o histograma