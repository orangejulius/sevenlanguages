List myAverage := method(
	if (self select(v, v proto != Number) size != 0,
		Exception raise("list does not contain only numbers"),
		self sum / self size
	)
)

list1 := list (1, 2, 3)

list1 myAverage println

list3 := list ("abcd", 2, 6)

list3 myAverage println
