# truthiness tests
"\"\" and true" println
("" and true) println

"nil and true" println
(nil and true) println

"0 and true" println
(0 and true) println

# slots
"" println

Car := Object clone
Car println

Car description := "go from A to B"
Car println

Mazda := Car clone
Mazda println

my_mazda := Mazda clone
my_mazda println

my_mazda description println

Mazda slogan ::= "zoom zoom"
Mazda println

my_mazda slogan println
