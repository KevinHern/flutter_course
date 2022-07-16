// For the Sound Null Colab: https://dart.dev/codelabs/null-safety

// STEP 1: UNDERSTANDING PRIMITIVES VS OBJECTS

/*
  There is a big diference between primitive datatypes and objects.
  
  As you recall, primitive datatypes are the most basic variable types that you can use in flutter.
  These include:
  - String
  - Bool
  - Int
  - Double
  
  Objects or Models are not considered primitive datatypes, but rather 'References'. These include:
  - Your defined Classes
  - Flutter Classes
  - Lists, Maps, etc.
  
  So what is the deal between Models and Primitives?
  The key difference between Primitive Datatype Variables and Model Variables, is that when you
  have 2 variables and you select one to assign the other's value, Primitives COPY THE VALUES and both
  variables have INDEPENDENT values while Models COPY THE OBJECT'S REFERENCE and both variables
  modify THE SAME instantiated object.
  
  I believe an example will clarify all your doubts.
*/ 

// Primitive Datatype Demo
void primitiveValueDemo() {
  print("PRIMITIVE VARIABLES DEMO\n");
  int primitive1 = 5, primitive2 = 6;
  
  print("First variable (primitive1) has a value of $primitive1 while the second variable (primitive2) has a value of $primitive2\n");
  
  primitive2 = primitive1;
  
  print("When assigning primitive1's value to primitive2, a copy is created and then it is assigned to primitive2. We can effectively confirm both have the same value:\n"
       "primitive1's value: $primitive1\nprimitive2's value: $primitive2\n");
  
  primitive1 = 10;
  
  print("After modifying primitive1's value, we can observe that primitive2 conserves primitive1's original (or copied) value\n"
       "primitive1's value: $primitive1\nprimitive2's value: $primitive2\n");
}

// Model Datatype Demo
class Model{
  int id;
  
  Model({required this.id});
  
  void printInfo() => print("This Model's ID is: $id\n");
}

void modelValueDemo() {
  print("MODEL VARIABLES DEMO\n");
  Model model1 = Model(id: 10), model2 = Model(id: 97);
  
  print("First model (model1) has an ID of ${model1.id} while the second model (model2) has an ID of ${model2.id}\n");
  
  model2 = model1;
  
  print("When assigning model1's value to model2, the reference of model1 is copied and then assigned to model2. After this modification, we have lost model2's reference and therefore we can no longer access the Model wit ID 97\n"
       "model1's id: ${model1.id}\nmodel2's id: ${model2.id}\n");
  
  model1.id = 51;
  
  print("After modifying model1's id, we can observe that this modification is also reflected when we access model2's id.\n"
       "model1's id: ${model1.id}\nmodel2's id: ${model2.id}\n");
}

/*
  So what is the deal with this?
  As you saw, when you manipulate Model Variables, you DON'T CREATE a copy of the object when you assign a variable's object to anoter variable.
  But rather, you make the asignable variable just another 'way' to access the same object. Both variables point to the same Object and therefore, if you 
  modify something using either variable, the changes will reflect no matter what variable you consult.
*/

// STEP 2: ARGUMENT PASSING

/*
  Now that you have understood the key difference when assigning primitives and models datatypes, we need to understand
  a similar scenario but with functions.
  
  As you know, there are some functions that need arguments when you call them. However, there are 2 types of argument passing:
  - By Value
  - By Reference
  
  It is almost the same as before, don't worry!
  So, here is the explanation: when a function needs an argument whose datatype is a primitive value, then
  the variable that you give as an argument will get its value copied and said value is going to be used throughout the whole function.
  The copied value is totally independent to the variable's original value.
  
  And as you guessed, with Models, it is different. When a function needs an argument whose datatype is a Model, then the object's reference
  is copied and it will be used throughout all the function.
  Any changes that you perform on the copied reference, will be reflected anytime you use any variable that has the reference of said object.
  
  As always, an example will help to understand things better.
*/

// Dummy Functions
void changeInt({required int numberToChange, required int newNumber}) {
  print("INSIDE OF 'changeInt' FUNCTION: {\n");
  print("numberToChange's value before assign: $numberToChange");
  numberToChange = newNumber;
  print("numberToChange's value after assign: $numberToChange\n");
  print("} END OF 'changeInt' FUNCTION\n");
}

void changeModelID({required Model model, required int newId}) {
  print("INSIDE OF 'changeModelID' FUNCTION: {\n");
  print("model's id before assign: ${model.id}");
  model.id = newId;
  print("model's id after assign: ${model.id}\n");
  print("} END OF 'changeModelID' FUNCTION\n");
}

// Demos
void argumentByValue() {
  print("ARGUMENT PASSING BY VALUE\n");
  int outsider = 10;
  print("outsider's value before calling 'changeToInt': $outsider");
  changeInt(numberToChange: outsider, newNumber: 50);
  print("outsider's value after calling 'changeToInt': $outsider");
}

void argumentByReference() {
  print("ARGUMENT PASSING BY REFERENCE\n");
  Model outsider = Model(id: 7);
  
  print("outsider's ID before calling 'changeModelID': ${outsider.id}");
  changeModelID(model: outsider, newId: 113);
  print("outsider's ID after calling 'changeModelID': ${outsider.id}");
}

/*
  As you will see when you run the code, you will notice the importance of knowing this key difference on how
  Models and Primitives work.
  
  Argument passing by value and by reference have their uses. Normally, you use By Value when you want to work
  with only the value and execute certain operations that will return a result. Keep in mind that all temporal results
  and changes made inside the functions will be lost.
  And you use By Reference when you want to execute some operations over a Model and you want those changes to
  stay.
  
  In Flutter, you will use a lot both of these type of Argument Passing
*/

void main() {
  primitiveValueDemo();
  print("\n-----------\n");
  modelValueDemo();
  print("\n-----------\n");
  argumentByValue();
  print("\n-----------\n");
  argumentByReference();
}
