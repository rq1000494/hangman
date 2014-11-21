puts "Welcome To Hangman!"

def drawman(numberbodyparts)
	
	if numberbodyparts == 0
		
puts		" ____________"
puts		"|      |"
puts		"|      @"
puts		"|"     
puts		"|"      
puts		"|"         
puts		"|"
puts		"-----------"

	elsif numberbodyparts == 1
		
puts            "____________"
puts           "|      |"
puts           "|      @"
puts           "|      |"
puts           "|"
puts           "|"
puts           "|"
puts           "------------"
	
	elsif numberbodyparts == 2
		
puts            " ____________"
puts            "|      |"
puts            "|      @"
puts            "|      |\\"
puts            "|"
puts            "|"
puts            "|"
puts            "-----------"


	
	elsif numberbodyparts == 3

puts            " ____________"
puts            "|      |"
puts            "|      @"
puts            "|     /|\\"
puts            "|"
puts            "|"
puts            "|"
puts            "-----------"
		


	
	elsif numberbodyparts == 4

puts             " ____________"
puts            "|      |"
puts            "|      @"
puts            "|     /|\\"
puts            "|      |"
puts            "|"     
puts            "|"
puts            "-----------"

	
	elsif numberbodyparts == 5

puts             " ____________"
puts            "|      |"
puts            "|      @"
puts            "|     /|\\"
puts            "|      |"
puts            "|       \\"
puts            "|"
puts            "-----------"

		
	elsif numberbodyparts == 6

puts             " ____________"
puts            "|      |"
puts            "|      @"
puts            "|     /|\\"
puts            "|      | "
puts            "|     / \\"
puts            "|"
puts            "-----------"

		
		puts "Game Over!"
	end
end

def displayresult(wordplayed, lettersguessed)
        wordplayed = wordplayed.split("")
        outputs = []
        wordplayed.each do |letter|
                if wordplayed.include?(letter) == false
                        outputs.push "_"
                elsif wordplayed.include?(letter) == true
                        outputs.push letter
                end
        end
        puts outputs.join(" ")
end




def check_letter(wordplayed, letterguessed)
	wordplayed = wordplayed.split("")
	if wordplayed.include?(letterguessed) == false
		puts "Your letter guessed is incorrect!"
	end
	if wordplayed.include?(letterguessed) == true
		position = []
		wordplayed.each_with_index do |i, check|
			if check == letterguessed
				index = wordplayed.index(check)
				position.push i
				puts "Your letter guessed is correct!"
			end
		end
	puts position
	end	 
end

f = File.new("HangmanWords.txt", "r")
wordplayed = f.readlines.sample
f.close

puts "Please guess a letter: _ _ _ _ _ _ _ _ _ _ _ _"
letterguess = gets.to_s
lettersguessed = []
lettersguessed.push letterguess

displayresult(wordplayed, lettersguessed)

numberbodyparts = 0

while numberbodyparts < 6
	puts numberbodyparts
	puts numberbodyparts += 1
	puts "Please guess a letter: _ _ _ _ _ _ _ _ _ _ _ _"
	letterguessed = gets.to_s
	letterguessed = []
	lettersguessed.push letterguessed
	displayresult(wordplayed, lettersguessed)
	drawman(numberbodyparts)
	if numberbodyparts >= 6
		drawman(numberbodyparts)
	end
end
