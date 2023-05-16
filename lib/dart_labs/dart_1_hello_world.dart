/*
 If you are familiar with an Object Oriented Programming Language (such as Java or C#), Python or
 Javascript, you will find out that Dart is very similar to each one of those.
 
 If you don't have experience, then don't worry! Dart is like any other programming language but
 it is incredibly friendly to us developers!
 
 ...Also, this is a multiline comment! (Use /* and */ to denote them)
*/

// The main() function is the fundamental function. It is the starting point of
// every Dart Program... And this is a single line comment! (use // to denote it)
void main() {
  
  // FIRST SECTION: VARIABLES
  
  /* 
   * FIRST STEP: Get familiar with Variables and Primitive Datatypes
   
   Like every programming language, the variables are the fundamental block to any program.
   TL;DR: A variable is a reference in memory that allows us to store values.
   
   The primite Datatypes are the following:
   - Numeric variables: int (accepts integer values) and double (accepts decimal values)
   - Character variables: String (accepts a chain of characters)
   - Boolean variables: bool (accepts either true or false)
   
   * SECOND STEP: Know that nothing is also a thing, aka, null value!
   
   Like any other robust programming language, there is a special value called "null",
   which basically denotes that a value in a variable doesn't exist. Dart gives the Null value
   a special treatment. We will take a deeper look in UNIT III in the dart section.
    
  */
  
  // Numeric Variables
  print("Numeric Variables");
  
  int happyVariable = 1;
  double anotherHappyVariable = 232.015734684;
  
  print(happyVariable);
  print(anotherHappyVariable);
  
  print("\n");
  
  // String Variable
  print("String Variable");
  
  String joyfulVariable = "I'm a happy String!";
  
  print(joyfulVariable);
  
  print("\n");
  
  // Boolean Variables
  print("Boolean Variables");
  
  bool theAcceptedVariable = true;
  bool theRejectedVariable = false;
  
  print(theAcceptedVariable);
  print(theRejectedVariable);
  
  print("\n");
  
  /*
   * THIRD STEP: Exposing ourselves to some common keywords used in variables!
   
   Dart has 3 special keywords: final, var and dynamic.
   - final: Once a value is given, you can't change the value or datatype.
   - var: The value can be changed anytime, but it is impossible to change the datatype.
   - dynamic: The value and datatype can be changed at anytime and anywhere in the code.
   
  */
  
  print("'Final' Keyword Demonstration:");
  
  final int unchangableVariable = 5;
  unchangableVariable = 6;            // Error: You can't change the already set value
  unchangableVariable = true;         // Error: You can't change the already set value and datatype
  
  print("\n");
  
  print("'Var' Keyword Demonstration:");
  
  var changableValueVariable = 5;
  changableValueVariable = 6;            
  changableValueVariable = true;      // Error: You can't change the already set value and datatype
  
  print("\n");
  
  print("'Dynamic' Keyword Demonstration:");
  
  dynamic mutableVariable = 5;
  mutableVariable = 6;            
  mutableVariable = true;         
  
  print("\n");
  
  // ----------------------------------------------------------------
  
  // SECOND SECTION: FLOW CONTROL
  
  /* Conditionals */
  
  var condition = true;
  
  print("If control block");
  if(condition) {
    print("Entered Consequence");
  } else {
    print("Entered Alternative");
  }
  print("\n");
  
  print("Switch control block");
  switch(condition) {
    case true:
      print("Simple True Case");
      break;
    case false:
      print("Simple False Case");
      break;
    default:
      throw Exception("Default option in case none of the above were accomplished");
  }
  print("\n");
  
  // Cycles
  
  print("For Cycle");
  for(int i = 0; i < 10; i++) {
    print(i);
  }
  print("\n");
  
  print("While Cycle");
  int i = 0;
  while(i < 10) {
    print(i);
    i++;
  }
  print("\n");
  
  print("For Each Cycle");
  var values = [1, 2, 3, 4, 5, 6, 7];
  for(int number in values) {
    print(number);
  }
}
