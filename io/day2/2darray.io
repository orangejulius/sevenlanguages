array2d := list(
	list(5, 6, 7),
	list(8, 9, 10),
	list(1, 2, 3)
)

array2d println

array2d foreach(array, 
	array foreach(println)
	)

sum := 0

array2d foreach(array,
	array foreach(value,
		sum = sum + value
	)
)

sum println
