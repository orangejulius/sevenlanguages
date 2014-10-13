List2d := List clone

List2d dim := method(x, y,
	l := List2d clone
	y repeat(
		l2 := List clone
			x repeat(
				l2 append(1)
			)
		l append(l2)
	)
	return l
)

List2d set := method(x, y, value,
	self at(y) atPut(x, value)
)

List2d get := method(x, y,
	self at(y) at(x)
)

l1 := List2d dim(3, 4)
l1 println

l1 set(2,2,2)
l1 println

l1 get(2,2) println
l1 get(1,2) println
