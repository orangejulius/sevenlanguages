# overriding division operator

(4 / 0) println

oldDivision := Number getSlot("/")

4 oldDivision(0)

Number / := method(denom,
	if(denom != 0, self oldDivision(denom), 0)
)

(4 / 2) println
(4 / 0) println
