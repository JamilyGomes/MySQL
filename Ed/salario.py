import matplotlib.pyplot as plt
# Salários mínimos de 2000 a 2025 (dados fictícios)
anos = list(range(2000, 2026))
salarios_minimos = [
    1516, 1547, 1575, 1600, 1640, 1670, 1700, 1730, 1760, 1800, 1830, 1870, 1900, 1930, 1960, 2000, 2050, 2100, 2150, 2200, 
    2250, 2300, 2350, 2400, 2450, 2500]

# # Opção 1: Gráfico de Barras
plt.bar(anos, salarios_minimos, color='blue')
plt.xlabel('Ano')
plt.ylabel('Salário Mínimo (R$)')
plt.title('Evolução do Salário Mínimo de 2000 a 2025')
plt.show()  # Exibe o gráfico de barras



# #SCARTTER
import matplotlib.pyplot as plt
# Salários mínimos de 2000 a 2025 (dados fictícios)
anos = list(range(2000, 2026))
salarios_minimos = [
    1516, 1547, 1575, 1600, 1640, 1670, 1700, 1730, 1760, 1800, 1830, 1870, 1900, 1930, 1960, 2000, 2050, 2100, 2150, 2200, 
    2250, 2300, 2350, 2400, 2450, 2500]
plt.xlabel('Ano')
plt.ylabel('Salário Mínimo (R$)')
plt.title('Evolução do Salário Mínimo de 2000 a 2025')
# Cria um gráfico de dispersão, onde cada ponto (a, b) é plotado como um ponto no gráfico
plt.scatter(anos, salarios_minimos)
plt.show()  # Exibe o gráfico de dispersão



#PLOT
import matplotlib.pyplot as plt
# Salários mínimos de 2000 a 2025 (dados fictícios)
anos = list(range(2000, 2026))
salarios_minimos = [
    1516, 1547, 1575, 1600, 1640, 1670, 1700, 1730, 1760, 1800, 1830, 1870, 1900, 1930, 1960, 2000, 2050, 2100, 2150, 2200, 
    2250, 2300, 2350, 2400, 2450, 2500]

plt.plot(anos, salarios_minimos, marker='o', linestyle='-', color='b', label='Salário Mínimo')
plt.title('Evolução do Salário Mínimo (2000-2025)')
plt.xlabel('Ano')
plt.ylabel('Salário Mínimo (R$)')
plt.show()
