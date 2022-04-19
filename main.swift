var turnNumber = 1
var playerNumber = 1
var gameStillGoing = 1
let possibleVowels = ["A", "E", "I", "O", "U", "Y"]
let randomVowel1 = possibleVowels.randomElement()!
let randomVowel2 = possibleVowels.randomElement()!
let randomVowel3 = possibleVowels.randomElement()!
let randomVowel4 = possibleVowels.randomElement()!
let randomVowel5 = possibleVowels.randomElement()!
let randomVowel6 = possibleVowels.randomElement()!
var targetString = [randomVowel1, randomVowel2, randomVowel3, randomVowel4, randomVowel5, randomVowel6]
print("The vowels you're gonna start with this time are: \(targetString).")
func turnPlay() {
  print("It's now Turn \(turnNumber), Player \(playerNumber).")
  print("Memorize these for this turn: \(targetString).")
  if playerNumber == 1 {
    playerNumber += 1
  } else {
    playerNumber -= 1
    turnNumber += 1
  }
}
while gameStillGoing == 1 {
  turnPlay() 
}
print("Player \(playerNumber) Wins!")
if playerNumber == 1 {
  playerNumber += 1
  turnNumber -= 1
  } else {
  playerNumber -= 1
  }
print("Player \(playerNumber) was eliminated on Turn \(turnNumber).")
