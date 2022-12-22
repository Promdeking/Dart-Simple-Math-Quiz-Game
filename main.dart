import "dart:math";
import "dart:io";
import "dart:core";

class MathQuiz{
  late String quest;
  late double ans;

  MathQuiz(String aQuest, double aAns){
    quest = aQuest;
    ans = aAns;
  }
  
}

double prompt(String quiz){
  print(quiz);
  double userAnswer = double.parse(stdin.readLineSync()!);
  return userAnswer;
}

void main() {
    List<MathQuiz>questions = [
      MathQuiz("10 + 2 =", 12),
      MathQuiz("50 / 2 =", 25),
      MathQuiz("20 * 4 =", 80),
      MathQuiz("33 - 6 =", 27),
      MathQuiz("10 % 3 =", 1),
    ];
int score = 0;
  for(MathQuiz questioning in questions){
    
    double checkAnswer = prompt(questioning.quest);
    
    if(checkAnswer == questioning.ans){
      // print("Correct");
      score++;
    }
      // else{
      //   print("Wrong, the Answer to ${questioning.quest} is     ${questioning.ans}");
    // }
    }
    print("you scored $score out of ${questions.length}");    
  }
  

