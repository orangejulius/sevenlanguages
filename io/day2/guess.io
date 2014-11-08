max_guesses := 10
guess_num := 0

answer := Random value(100) floor
answer println

last_guess := nil

input := File standardInput()
while(guess_num < max_guesses,
	"Enter your guess: " println
	guess := input readLine() asNumber

	if (guess == answer,
		"Right!" println
		break
	)



	if (last_guess,
		guess_difference := (last_guess - answer) abs - (guess - answer) abs 
		if (guess_difference > 0,
			"Warmer!" println,
			"Colder!" println
		)
	)

	last_guess = guess

	guess_num = guess_num + 1
)

if (guess_num == max_guesses,
	"The answer was #{answer}" interpolate println
)
