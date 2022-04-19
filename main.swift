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
  if playerNumber != 1 && turnNumber != 1 {
    print("Memorize these for this turn: \(targetString).")
  }
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
print("The vowels by the end were: \(targetString). Game!"
//var input1 = readLine()
//var input2 = readLine()
//var input3 = readLine()
//var input4 = readLine()
//var input5 = readLine()
//var input6 = readLine()
//var input7 = readLine()
//var input8 = readLine()
//var input9 = readLine()
//var input10 = readLine()
//var input11 = readLine()
//var input12 = readLine()
//var input13 = readLine()
//var input14 = readLine()
//var input15 = readLine()
//var input16 = readLine()
//var input17 = readLine()
//var input18 = readLine()
//var input19 = readLine()
//var input20 = readLine()
//var input21 = readLine()
//var input22 = readLine()
//var input23 = readLine()
//var input24 = readLine()
//var input25 = readLine()
//var input26 = readLine()
//var input27 = readLine()
//var input28 = readLine()
//var input29 = readLine()
//var input30 = readLine()
//var input31 = readLine()
//var input32 = readLine()
//var input33 = readLine()
//var input34 = readLine()
//var input35 = readLine()
//var input36 = readLine()
//var input37 = readLine()
//var input38 = readLine()
//var input39 = readLine()
//var input40 = readLine()
//var input41 = readLine()
//var input42 = readLine()
//var input43 = readLine()
//var input44 = readLine()
//var input45 = readLine()
//var input46 = readLine()
