import numpy as np
a = np.array([0, 1, 2])         #creating a single row array
print(type(a))                  #print type of a(array)
print(a.shape)                  #print dimension of array
print(a[0])
print(a[1])
print(a[2])
a[0] = 5                        #change element of array
print(a)
b = np.array([[0,1,2],[3,4,5]]) #creating 2 rows array
print(b.shape)                  #print dimension of b
print(b)
print(b[0, 0], b[0, 1], b[1, 0])