//Search for its details, and create it as CLI app  Tic-Tac-Toe

import 'dart:io';
void main()
{
  List<List<String>> gameScreen = 
  [
    ["1", "2", "3"],
    ["4", "5", "6"],
    ["7", "8", "9"],
  ];
  String player = "X";
  int steps =0;
  
  while(true)
  {
    showGame(gameScreen);
    print("Player $player enter your step (1->9): ");
    String? step = stdin.readLineSync();

    if(step == null || !validationStep(step, gameScreen))
    {
      print("Invalid step, please try again");
      continue;
    }
    //updateGame(step, gameScreen, player);
  
  updateGame(step , gameScreen, player);
  steps++;

  if(winner(gameScreen, player))
  {
    showGame(gameScreen);
    print("Player $player wins");
    break;
  }
  else if(steps == 9)
  {
    showGame(gameScreen);
    print("It's a draw");
    break;
  }
  //changing players
  player = player == "X" ? "O" : "X";
} 
}

void showGame(List<List<String>> gameScreen)
{
  print("\n current Game:");
  for(var i in gameScreen)
  {
    print(" ${i[0]} | ${i[1]} | ${i[2]} ");
    
  }
  print("");
}
bool validationStep(String position , List<List<String>> gameScreen)
{
  for(var i in gameScreen)
  {
    if(i.contains(position))
      return true;
  } return false;
}
void updateGame(String position, List<List<String>> gameScreen, String player )
{
  for(int i =0 ; i< gameScreen.length ; i++)
  {
    for(int j =0 ; j< gameScreen[i].length ; j++)
    {
      if(gameScreen[i][j] == position)
      {
        gameScreen[i][j] = player;
        return;
      }
    }
  }
}


bool winner(List<List<String>> gameScreen, String playerSymbol)
{
  // check rows and columns
  for(int i =0 ; i< 3; i++)
  {
    if((gameScreen[i][0] == playerSymbol && gameScreen[i][1] == playerSymbol && gameScreen[i][2] == playerSymbol) ||
    (gameScreen[0][i] == playerSymbol && gameScreen[1][i] == playerSymbol && gameScreen[2][i] == playerSymbol) )
    {
      return true;
    }
  }

 // check diagonals
 if((gameScreen[0][0] == playerSymbol && gameScreen[1][1] == playerSymbol && gameScreen[2][2] == playerSymbol) ||
 (gameScreen[0][2] == playerSymbol && gameScreen[1][1] == playerSymbol && gameScreen[2][0] == playerSymbol))
 {
  return true;
 }
 return false;
 

}
