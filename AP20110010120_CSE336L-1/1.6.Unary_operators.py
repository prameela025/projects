import numpy as np
arr = np.array([[1, 5, 6], [4, 7, 2], [3, 1, 9]])
print("Largest element is:", arr.max())                        #maximum element of array
print("Row-wise maximum elements:",arr.max(axis = 1))
print("Column-wise minimum elements:",arr.min(axis = 0))       #minimum element of array
print("Sum of all array elements:",arr.sum())                  #sum of array elements
print("Cumulative sum along each row:\n",arr.cumsum(axis = 1)) #cumulative sum along each row