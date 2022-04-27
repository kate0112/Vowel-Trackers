var turnNumber = 1
var playerNumber = 1
var gameStillGoing = 1
var currentVowelAmount = 6
let possibleVowels = ["A", "E", "I", "O", "U", "Y"]
let randomVowel1 = possibleVowels.randomElement()!
let randomVowel2 = possibleVowels.randomElement()!
let randomVowel3 = possibleVowels.randomElement()!
let randomVowel4 = possibleVowels.randomElement()!
let randomVowel5 = possibleVowels.randomElement()!
let randomVowel6 = possibleVowels.randomElement()!
var targetString = [randomVowel1, randomVowel2, randomVowel3, randomVowel4, randomVowel5, randomVowel6]
print("The vowels you're gonna start with this time are: \(targetString).")
print("Each time it's your turn, memorize and type those vowels on separate lines and in capital letters.")
func turnPlay() {
  print("It's now Turn \(turnNumber), Player \(playerNumber).")
  if playerNumber == 2 || turnNumber > 1 {
    print("Memorize these for this turn: \(targetString).")
  }
  print("Press Enter to begin:")
  readLine()
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("")
  print("Start!")
  var input0 = readLine()
  var input1 = readLine()
  var input2 = readLine()
  var input3 = readLine()
  var input4 = readLine()
  var input5 = readLine()
  if playerNumber == 1 {
    playerNumber += 1
  } else {
    playerNumber -= 1
    turnNumber += 1
    gameStillGoing -= 1
  }
  currentVowelAmount += 2
}
while gameStillGoing == 1 {
  turnPlay()
}
print("Game! Player \(playerNumber) Wins!")
if playerNumber == 1 {
    playerNumber += 1
    turnNumber -= 1
  } else {
    playerNumber -= 1
  }
print("Player \(playerNumber) was eliminated on Turn \(turnNumber).")
currentVowelAmount -= 2
print("The \(currentVowelAmount) vowels in the target string by the end were: \(targetString).")
