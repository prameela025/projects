import numpy as np
a = np.array([1, 2, 5, 3])                      
print ("Adding 1 to every element:", a+1)           #Add 1 to every element
print ("Subtracting 3 from each element:", a-3)     #Subtract 3 from each element
print ("Multiplying each element by 10:", a*10)     #Multiply each element by 10
print ("Squaring each element:", a**2)              #Square each element
a *= 2                                              #Modify existing array
print ("Doubled each element of original array:", a)
a = np.array([[1, 2, 3], [3, 4, 5], [9, 6, 0]])     
print ("\nOriginal array:\n", a)
print ("Transpose of array:\n", a.T)                #Transpose of array