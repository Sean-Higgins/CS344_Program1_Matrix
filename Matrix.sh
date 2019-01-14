#!bin/bash
# This program performs a number of matrix operations:
#		matrix dims [MATRIX]		(for finding the dimenstions of the matrix, also pulls double duty as a verification test)
#		matrix transpose [MATRIX]	(swaps the rows for the collums and visa-versa)
#		matrix mean [MATRIX]		(adds the elements of the collums together, and then divides by the number of collumns)
#		matrix add LEFT_MATRIX RIGHT_MATRIX			(exactily what it says, adds two matricies together and returns the result)
#													(Important: The two matricies MUST have the same dimenstions)
#		matrix multiply LEFT_MATRIX RIGHT_MATRIX	(exactily what it says, multiplys two matricies together and returns the result)
#													(Important: The number of rows of the first matrix MUST equal the number of collumns of the second matrix)

# matrix dims [MATRIX]
# Checks to see if the values in the matrix are all signed integers. (Error Code 1)
# Checks to see if the number of elements in each row is consistant throughout the matrix (i.e. each collumn is filled out) (Error Code 2)



# matrix transpose [MATRIX]
# Call the dims function to find the number of rows and collumns of the matrix



# matrix mean [MATRIX]
# Call the dims function to find the number of rows and collumns of the matrix
# Use the obtained values to add together the elements of each collumn.



# matrix add LEFT_MATRIX RIGHT_MATRIX
# Call the dims function to find the number of rows and collumns of each matrix
# Compare the values, and make sure each matrix has the same dimensions.
# If the matricies are different in size, return an error. (Error Code 3)


# matrix multiply LEFT_MATRIX RIGHT_MATRIX
# Call the dims function to find the number of rows and collumns of each matrix.
# Compare the number of rows of the LEFT_MATRIX to the number of collumns of the RIGHT_MATRIX.
# They absolutely MUST be equal. The resulting matrix will have the same number of rows the LEFT_MATRIX has as collumns,
# and the same number of collumns as the RIGHT_MATRIX has as rows.
# If these conditions are not met, return an error code. (Error Code 4)