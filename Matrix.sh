#!/bin/bash -e
# This program performs a number of matrix operations:
#		matrix dims [MATRIX]		(for finding the dimenstions of the matrix, also pulls double duty as a verification test)
#		matrix transpose [MATRIX]	(swaps the rows for the collums and visa-versa)
#		matrix mean [MATRIX]		(adds the elements of the collums together, and then divides by the number of collumns)
#		matrix add LEFT_MATRIX RIGHT_MATRIX			(exactily what it says, adds two matricies together and returns the result)
#													(Important: The two matricies MUST have the same dimenstions)
#		matrix multiply LEFT_MATRIX RIGHT_MATRIX	(exactily what it says, multiplys two matricies together and returns the result)
#													(Important: The number of rows of the first matrix MUST equal the number of collumns of the second matrix)
# Note: The -e flag by the shabang (i.e. the #!/bin/bash line) makes sure the program stops on an error, an exit code of anything other than 0.
# Note: The -x flag by the shabang prints the program line by line as it exicutes, useful for debugging purposes.



# matrix dims [MATRIX]
# Checks to see if the values in the matrix are all signed integers. (Error Code 1)
# Checks to see if the number of elements in each row is consistant throughout the matrix (i.e. each collumn is filled out) (Error Code 2)

function dims () {

	numOfRows=0
	numOfCols=0
	oldNumCols=0

	rowData=""
	elemData=""

	errCode=0

	result=""

	matrixFile=$1	# Since the matrix file name is the given argument, and the function arguments are given by $1, $2, etc,
			# the filename will be stored in the $1 area when referenced by the function.


	echo "Beginning to read the matrix file."
	echo "numOfRows: $numOfRows"
	echo "numOfCols: $numOfCols"
	echo "rowData: $rowData"
	echo "elemData: $elemData"


	while read rowData < $matrixFile
	do
		oldNumCols=$numOfCols
	
		echo "Reading Rows"
		echo "numOfRows: $numOfRows"
		echo "numOfCols: $numOfCols"
		echo "rowData: $rowData"
		echo "elemData: $elemData"

		for elem in $rowData
		do
			echo "In Element Processing Loop"
			echo "i.e. Collumn Counting and Verifying Loop"
			echo "numOfRows: $numOfRows"
			echo "numOfCols: $numOfCols"
			echo "rowData: $rowData"
			echo "elemData: $elemData"
		
			echo "elem: $elem"
			numOfCols=$(expr $numOfCols + 1 )
			echo "collumns: $numOfCols"
			echo -e "End of Collumn Counting Loop"
		done
	
		if [ "$numOfCols" -eq 0 ]
		then
			errCode=1
			echo "Error Code $errCode: Matrix empty." 1>&2
			exit $errCode
		#elif [ "$numOfCols" -ne "$oldNumCols" ]
		#then
		#	errCode=2
		#	echo "Error Code $errCode: Matrix incorrectly constructed." 1>&2
		#	exit $errCode
		else
		
			numOfRows=$(expr $numOfRows + 1)
		fi
		done
	
		echo "$numOfRows $numOfCols" > dimsResults
	
	done < $dimsResults

}

# matrix transpose [MATRIX]
# Call the dims function to find the number of rows and collumns of the matrix

function transpose () {
	rows=0
	collumns=0

	dims $1
}


# matrix mean [MATRIX]
# Call the dims function to find the number of rows and collumns of the matrix
# Use the obtained values to add together the elements of each collumn.

function mean () {
	rows=0
	collumns=0

	dims $1
}

# matrix add LEFT_MATRIX RIGHT_MATRIX
# Call the dims function to find the number of rows and collumns of each matrix
# Compare the values, and make sure each matrix has the same dimensions.
# If the matricies are different in size, return an error. (Error Code 3)

function add () {
	leftRows=0
	leftCollumns=0

	dims $1

	rightRows=0
	rightCollumns=0

	dims $2


	errCode=0

	if [ $leftRows -ne $rightRows ]
	then
		errCode=3
	elif [ $leftCollumns -ne $rightCollumns ]
		errCode=3
	fi

	if [ $errCode -eq 3 ]
	then
		echo "Error Code $errCode: The matrix dimensions are unequal. The addition operation is impossible." 1>&2
		exit $errCode
	fi

}


# matrix multiply LEFT_MATRIX RIGHT_MATRIX
# Call the dims function to find the number of rows and collumns of each matrix.
# Compare the number of rows of the LEFT_MATRIX to the number of collumns of the RIGHT_MATRIX.
# They absolutely MUST be equal. The resulting matrix will have the same number of rows the LEFT_MATRIX has as collumns,
# and the same number of collumns as the RIGHT_MATRIX has as rows.
# If these conditions are not met, return an error code. (Error Code 4)

function multiply () {
	leftRows=0
	leftCollumns=0

	dims $1

	rightRows=0
	rightCollumns=0

	dims $2

	errCode=0

	if [ $leftRows -ne $rightCollumns ]
	then
		errCode=4
		echo "Error Code $errCode: The matricies do not meet the criteria for matrix multiplication." 1>&2
		exit $errCode
	fi



}
