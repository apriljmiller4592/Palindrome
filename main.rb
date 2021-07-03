#Prompt user for input
puts "Enter a word to check if it is a palindrome: "
word = gets

#Split word in half
halfLength = (word.length - 1) / 2
half1 = word[0..halfLength-1].strip()
half2 = word[halfLength, word.length - 2].strip()

#Reverse the second half
rev = half2.reverse

#Even number of characters: Check if half1 and reversed half2 are the same.
if (word.length-1)%2 == 0
  result = half1 <=> rev
  if result == 0
    puts word + " IS A PALINDROME!"
  else
    puts word + "IS NOT A PALINDROME!"
  end
end

#If odd number of characters, remove the middle character,
#compare halves
if (word.length-1)%2 != 0
  half1 = word[0..halfLength-1].strip()
  half2 = word[halfLength+1..word.length-1].strip()
  rev = half2.reverse
  result = half1 <=> rev
  if result == 0
    puts word + " IS A PALINDROME"
  else
    puts word + " IS NOT A PALINDROME"
  end
end