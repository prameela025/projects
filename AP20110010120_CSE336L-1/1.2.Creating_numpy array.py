import numpy as np
a = np.zeros((3,3))         #Creating 3*3 array of 0s
print(a)                    
b = np.ones((2,2))          #Creating 2*2 array of 1s
print(b)
c = np.full((3,3), 7)       #Creating 3*3 constant array
print(c)
d = np.random.random((3,3)) #Creating 3*3 array with random values
print(d)
e = np.eye(3)               #Creating 3*3 identity matrix
print(e)
f = np.array([2, 3, 1, 0])  #Converting list to array
print(f)
g = np.arange(20)           #Creating arrays with regularly incrementing values
print(g)                    
h = np.array([[0, 1,2.0],[0,0,0],(1+1j,3.,2.)]) #Note mix of tuple and lists
print(h)
i = np.arange(1, 8, dtype=np.float)     #Creating array of given range with float data type
print(i)
j = np.linspace(2, 4, 5)#Creating array with a specified number of items which are equally distant between specified beginning & end values 
print(j)