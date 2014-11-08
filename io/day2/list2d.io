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

List2d y_size := method(
	self size
)

List2d x_size := method(
	self at(0) size
)

List2d transpose := method(
	new_list := List2d dim(self y_size, self x_size)
	for (y, 0, x_size - 1,
		for (x, 0, y_size - 1,
			new_list set(x, y, get(y, x))
		)
	)
	return new_list
)

List2d save := method(filename,
	"saving" println
	f := File with(filename)
	f remove
	f openForUpdating

	for(y, 0, y_size -1,
		for(x, 0, x_size -1,
			get(x,y) println
			f write(get(x,y) asString)

			if (x < x_size -1,
				f write(" ")
			)
		)
		f write("\n")
	)

	f close
)

l1 := List2d dim(3, 4)

l1 set(2,2,2)
l1 println
"" println

l2 := l1 transpose
l2 println

l2 save("out.txt")
