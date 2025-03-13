import matplotlib.pyplot as plt

a= (1,2,3,4,5)
b= (1,2,3,4,5)
plt.plot(a,b)
# plt.show()


plt.ylabel(u'Alguns números y')
plt.xlabel(u'Alguns números x')
plt.show()

import matplotlib.pyplot as plt

x= (0,1,2,3,4,5,6)
y= (0,1,2,3,4,5,6)
plt.ylabel('Eixo x')
plt.xlabel('Eixo y')
plt.title('Meu Gráfico')
plt.plot(x,y)
plt.show()


import matplotlib.pyplot as plt
plt.plot((1,2,3,4),(1,4,9,16), 'mD:')
plt.show()

import matplotlib.pyplot as plt
plt.plot((1,2,3,4),(1,4,9,16), 'mD:')
plt.axis((0,6,0,20))



#PLOT
##Quando você quer mostrar como os dados mudam ao longo do tempo ou de um conjunto contínuo


