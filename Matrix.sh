#!bin/bash
# This program performs a number of matrix operations:
#		matrix dims [MATRIX]		(for finding the dimenstions of the matrix, also pulls double duty as a verification test)
#		matrix transpose [MATRIX]	(swaps the rows for the collums and visa-versa)
#		matrix mean [MATRIX]		(adds the elements of the collums together, and then divides by the number of collumns)
#		matrix add LEFT_MATRIX RIGHT_MATRIX			(exactily what it says, adds two matricies together and returns the result)
#													(Important: The two matricies MUST have the same dimenstions)
#		matrix multiply LEFT_MATRIX RIGHT_MATRIX	(exactily what it says, multiplys two matricies together and returns the result)
#													(Important: The number of rows of the first matrix MUST equal the number of collumns of the second matrix)
