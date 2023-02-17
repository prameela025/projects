import numpy as np
x = np.array([0, 1])                #numpy chooses the datatype
y = np.array([2.0, 3.0])
z = np.array([5, 6], dtype=np.int64)#Forcing particular datatype on array
print(x.dtype, y.dtype, z.dtype)