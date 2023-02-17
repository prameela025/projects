import numpy as np
from matplotlib import pyplot as plt
x = np.arange(5)        #Assume there are 5 students
y = (20, 35, 30, 35, 27)#Their test scores
plt.bar(x,y)            #Bar plot
plt.show() 
plt.scatter(x,y)        #Scatter plot
plt.show()