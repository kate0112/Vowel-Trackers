var playerNumber = 1
var printNewLine = 60
var turnNumber = 0
var GameOver = 0
var TieGame = 0
var numberOfVowels = 0
var nextTurn = 0
var insertVowels = 0
var vowelIndex = 0
var Index = 0
var validVowel = 0
var possibleVowels = ["A", "E", "I", "O", "U", "Y"]
var GameVowels = [String]()

func turnPlay() {
     //Let insert first 5 vowels
     while insertVowels < 5 {
         GameVowels.append(possibleVowels.randomElement()!)
         insertVowels += 1
         //Current Number of game vowels
         numberOfVowels += 1
     }
     
     while GameOver == 0 {
     if playerNumber == 1 {
         turnNumber += 1
         }
          
         if playerNumber == 1 && turnNumber == 1 {
         print("The vowels you're gonna start with this time are: \(GameVowels)")
         print("Each time it's your turn, memorize and type those vowels on separate lines and in capital letters.")
         } else {
              
         print("It's now Turn \(turnNumber), Player \(playerNumber).")
         print("Memorize these for this turn: \(GameVowels).")
         }
          
         print("Press Enter to begin:")
         readLine()
          
         //Hide the vowel string
         printNewLine = 60
         while printNewLine > 0 {
             print("")
             printNewLine -= 1
         }
          
         print("Start!")
         nextTurn = 0
         Index = 0
         while nextTurn == 0 {
             let currentVowel = GameVowels[Index]
             if let str = readLine() {
                 if str == currentVowel {
                     if Index == (numberOfVowels - 1) {
                         
                          //All vowels are correct
                         print("Correct, Player \(playerNumber)!")
                         
                          //Toggle player turn
                         if playerNumber == 1 {
                             playerNumber = 2
                         } else {
                              
                             playerNumber = 1
                         }
                          
                         //Add one more vowel to the game
                         validVowel = 0
                         while validVowel == 0 {
                             print("Enter a new vowel to add to the string.")
                             if let newVowel = readLine() {
                                 vowelIndex = 0
                                 while vowelIndex < 6 {
                                     if newVowel == possibleVowels[vowelIndex] {
                                         GameVowels.append(newVowel)
                                         validVowel = 1
                                         vowelIndex = 6
                                          
                                     }
                                     vowelIndex += 1
                                 
                                 }
                                 if validVowel == 0 {
                                     print("Please input a vowel")
                                 }
                             }
                         }
                         numberOfVowels += 1
                         nextTurn = 1
                     } else {
                         
                          //Player guess correctly, go to next turn
                         Index += 1
                     }
                 } else {
                     GameOver = 1
                     nextTurn = 1
                     //Toggle player turn
                     if playerNumber == 1 {
                         playerNumber = 2
                     } else { 
                         playerNumber = 1
                     }
                 }
             }
         }
         if turnNumber > 10 {
             GameOver = 1
             TieGame  = 1
         }
     }  
     
     //While still playing
     if TieGame == 1 {
         print("Turn 10 has ended! It's a Draw!")
     } else {
         print("Game! Player \(playerNumber) Wins!")
     if playerNumber == 1 {
         playerNumber = 2
         turnNumber += 1
     } else {
         playerNumber = 1
     }
     print("Player \(playerNumber) was eliminated on Turn \(turnNumber).")
     }
     print("The \(numberOfVowels) vowels in the target string by the end were: \(GameVowels).")
}
turnPlay()
