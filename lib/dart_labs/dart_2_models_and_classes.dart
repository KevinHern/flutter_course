import 'dart:math';

// STEP 1: CLASSES AND MODELS

/* 
  Flutter uses Dart as its main programming language to create applications.
  However, Dart utilizes a lot the concept of Object Oriented Programming Language; which
  essentially tries to represent and model real life objects as programmable classes.
  
  Classes are the equivalent of Models in the Flutter world. Each class is an abstraction or 
  representation of something or an existing real life 'Object' that we can later manipulate in our code
  as the application progresses.
  
  Terminology:
  - Class or Model: It is the definition of the object you try to model. You only declare what it is and
    it can do. Think of these like blueprints, they have instructions and models to help you to build objects.
    
  - Instance: It is when an object of your class is created. Think of these like the objects you end up
    having after following the blueprint. They are ready to be used for some specific purposes.
    
  - Fields or Attributes: Think of these like traits or characteristics that describe the object you try to model
            with your class.
            For example: The class 'Vehicle' can have fields like: color, number of wheels, type of
            steering, motor capacity, tank capacity, max speed, if it is either manual or automatic, etc.
            
  - Methods: The analogy is that methods are actions. Methods allows the instanced object to interact with other objects.
    These give the object capabilities to behave, interact and respond to actions.
    
    
  As you can see, every Widget you use is actually a class.
  For example, everytime when you call Card(), you instantiate an object of te class Card.
  
  Now, there is a special Method called everytime when you instantiate an object which is called the
  'Constructor'. As the name implies, it is a method that constructs the object, but the special trait
  about it is that you can set initial parameters and the constructor will instantiate an object with 
  those parameters - but you have to program it yourself!
  
  So, you recall that when you create any kind of Widget, you pass a named argument called 'child', right?
  For example:
  Container(
    child: Text("Hi!"),
  )
  
  In that excample, you instantiate a Container, but in the constructor, you pass the argument 'Text("Hi!")'
  to the named parameter 'child'.
  Effectively, when the constructor executes, it will set the field's value to 'Text("Hi!")'.
  

  As you progress in your journey with Flutter, you will notice that classes are used everywhere in every project!
*/


/*
  EXAMPLE
  
  This is our class called Shape! As we know, Shapes have sides, vertexes and other type of information.
  For the moment, lets stick to the most basic ones: sides and vertexes
  
*/

// This is our blueprint:
class Shape {
  // These are the fields!
  final int? vertexes, sides;     // This fields can be either an integer or a null value! Wait a little to see why...
  
  // This is the constructor!
  Shape({required this.sides, required this.vertexes});
  
  // Lets add a method
  void printInfo() {
    print("This shape has $sides sides and $vertexes vertexes!");
  }
}

// Congratulations! You just understood the basic concept of Object Oriented Programming Languages!

// STEP 2: CLASS INHERITANCE

/*
  As the title suggests, classes can indeed, inherit their attributes and methods so their 'children' can use them
  along with their own attributes and methods.
  
  Why is inheritance useful?
  There are some situations where you want to declare a certain amount of classes, but they share a lot in common.
  What if you have to change something but that modification has to be done in every class? (lets put a number: 10 classes)
  
  That is going to be tedius and the app's scalability and bug testing is not going to be done smoothly.
  The best practice for this scenario, is to have a common class ancestor (or the parent class). This
  ancestor will have defined all the common attributes and methods that your classes share. So, if you have
  to modify something in the parent, the changes will be reflected in every children.
  Pretty useful, right? This concept saves a lot of time while you develop your app.
  
  Also... there is something cool you can do with a Parent's methods.
  A child class can 'Override' a Parent's method - that means, the child can modify what the methods
  have to do when they are called!
  Overriding a Method is useful too. There are cases where the Parent's methods do some basic job but they are
  not sufficient for the child, so the child can modify those methods and adjust them to their needs!
  
  To override a metho, you have to type a special word: @override
  Yes, including the @ character!
  
  
  Everything discussed so far about Inheritance, you may have seen this when you create a Stateful or Stateless Widget!
  Now everything starts to make sense!
  
  BUT ONE MORE IMPORTANT THING: CLASSES CAN ONLY INHERIT FROM ONE DIRECT PARENT!!!!
*/ 

/*
  EXAMPLE
  
  Lets create some children classes! Lets use Shape as our common ancestor or 'parent' class
*/

// This is our blueprint:
class Triangle extends Shape {
  
  /* 
    Because Triangle is Shape's child, it inherited both vertexes and sides attributes!
    
    But... we can also create Triangle's own fields! 
  */
  final double base, height;
  
  /*
    This is the constructor!
    As you can tell, we need to define a constructor for the 'Triangle' class but... what about
    Shape's own constructor?
    
    If a class inherits from another class, you have to initialize the parent's class too!
  */
  Triangle({required this.base, required this.height}) :
    super(vertexes: 3, sides: 3);
  
  // Lets override the 'printInfo' method and adjust it to our needs!
  @override
  void printInfo() {
    print("This shape is a Triangle. It has $sides sides, $vertexes vertexes, a base of $base and a height of $height!");
  }
}

class Circle extends Shape {
  
  /* 
    Same stuff but with a circle!
  */
  final double radius;
  
  /*
    Do you remember the null values?
    Exactly, a Circle doesn't have a finite amount of vertexes and sides - but rather infinite!
    Lets use 'null' value to express infinite!
  */
  Circle({required this.radius}) :
    super(vertexes: null, sides: null);
  
  // Lets override the 'printInfo' method and adjust it to our needs!
  @override
  void printInfo() {
    print("This shape is a Circle. It has an infinite amount of sides and vertexes, with a radius of $radius!");
  }
}

// Congratulations! You are one step deeper understanding Dart and Flutter!

// STEP 3: INTERFACES

/*
  Another common thing you will see in Flutter are things called 'Interfaces'.
  With your knowledge about classes, you will have an easier time with Interfaces.
  
  Now, an Interface is NOT a class per se, but rather a definition of a group of methods that classes can implement or have available to use.
  Think of this like another blueprint. It only contains the definition of additional methods that your class can use.
  
  Keep in mind: it isn't inheritance!
  Interfaces are only groups of methods and those does not include attributes!
  
  Now, the syntax in Flutter is quite tricky. There isn't explicit keywords to define interfaces, but rather, Dart has another workaround.
  Everytime you define a class, indirectly, you are creating its own interface!
  Yes, every class has an associated Interface. Classes contain the methods and attributes while the interfaces only contain the methods - the definition of the class!
  
  Quite the difference, eh?
  Lets take as an example the class 'Shape' we declared before. When we defined the class 'Shape', we wrote a method called
  'printInfo'. In this situation, we simoultaneously declared an interface also called 'Shape'. When a class implements this interface,
  that class will have available the 'printInfo' method but NOT the attributes!
  
  Rule of thumb: remember when a class implements an interface, all the interface's methods will be available to use for
  any of the instantiated objects!
  
  
  Now let me introduce you a new type of class before we move onto the example.
  The new class type is called 'abstract'. Abstract classes only contain the DEFINITION of attributes and methods, but the key difference
  is that the methods DO NOT DO ANY KIND OF ACTION, or in other words, THE METHODS ARE ONLY DEFINED, BUT NOT IMPLEMENTED.
  
  When you explicitly tell a class that it inherits from an abstract class or implements its associated interface, that class will be FORCED to implement the methods defined in
  said abstract class.
  
  You will see in advanced Flutter courses that interfaces are usually implemented with abstract classes and its a good
  moment to see their uses. You might think 'abstract classes don't have too many uses', but as you progress, you will see
  the importance of abstract classes!
  
  Another good thing to know: as class can implement as many interfaces as you like!
*/ 

/*
  EXAMPLE
  
  Lets create an interface using an abstract class!
*/

abstract class ShapeOperations {
  /*
    As you can see, the abstract class only has the definition of the methods; no method is explicitly told
    what is its purpose. When a class inherits from this class or implements its associated interface, it will be
    forced to create an implementation of the methods.
    
    In this case, if a class inherits 'ShapeOperations' or implements its interface, it will be forced to implement
    both the area() and perimeter() methods; in other words, tell them to explicitly do something.
  */
  double area();
  double perimeter();
}

// Lets create 2 other shapes!

// This is our Rectangle blueprint:
class Rectangle extends Shape implements ShapeOperations {
  
  final double base, height;
  
  Rectangle({required this.base, required this.height}) :
    super(vertexes: 4, sides: 4);
  
  /*
    This class implements the 'ShapeOperations' Interface!
    We have to override the methods and give them an explicit implementation!
  */
  @override
  double area() => base * height;
  
  @override
  double perimeter() => (2*base) + (2*height);
  
  // Lets override the 'printInfo' method and adjust it to our needs!
  @override
  void printInfo() {
    print("This shape is a Rectangle. It has $sides sides, $vertexes vertexes, a base of $base and a height of $height!\n"
          "It has an area of ${area()} and a perimeter of ${perimeter()}.");
  }
}

// This is our blueprint:
class RegularHexagon extends Shape implements ShapeOperations {
  
  final double sideLength;
  
  RegularHexagon({required this.sideLength}) :
    super(vertexes: 6, sides: 6);
  
  /*
    This class also implements the 'ShapeOperations' Interface!
    The calculations of its perimeter and its area are totally different from a square!
    Can you see how 'abstract' interfaces can be used?
  */
  @override
  double area() => (3*sqrt(3)/2) * (pow(sideLength, 2));
  
  @override
  double perimeter() => 6*sideLength;
  
  // Lets override the 'printInfo' method and adjust it to our needs!
  @override
  void printInfo() {
    print("This shape is a Regular Hexagon. It has $sides sides, $vertexes vertexes, and each of its sides has a length of $sideLength.\n"
     "It has an area of ${area()} and a perimeter of ${perimeter()}.");
  }
}

/*
  You may asking yourself right now: "Why bother creating and implementing an abstract inferface when I can directly implement both methods in both classes?"
  
  It is a great question. Yoy may not see the direct answer right now but you will comprehend it slowly as you keep developing more complex apps.
  
  Right now, I'll tell you this:
  When a change happens in the abstract interface, it FORCES every class that implements it to adjust to the new changes.
  For example, if I define a new method, Dart will notify me that in every class that implements the interface, it needs to implement the newly defined metehod.
  
  Or another common case: if a shared method between classes changes its name, it will be hard to keep track of changes if you directly implement said method
  in every class you need it. But if you use an interface, the name change has to be reflected in every class and Dart will notify you that the name has to change
  in every class you implemented the interface.
  
  Do you see the difference?
  If you directly implement the methods in the classes, it will be hard to keep track of on-the-fly changes while with interfaces,
  Dart will notify you to fix the methods in every class that uses the interface.
  
  It is a great programming practice you can develop. The app's scalability can be immensily enhanced with this practice! 
*/

// STEP 4: CLASS MIXINS

/*
  Class Mixins are VERY but VERY SIMILAR to interfaces.
  Mixins are still like blueprints of a class that contain methods - just like an interface.
  And everytime you create a class, you also implicitly create its own Mixin - just like an interface!
  
  The key difference is that mixins 'tell how a class does it' while interfaces 'define the signature or definition of a class'.
  A mixin is also a sort of class that can be “associated” to another class in order to reuse pieces of code without using inheritance.
  
  The mixins contain the class' IMPLEMENTED methods. That means, you can use them as how the class implemented them - that is where the
  'reuse code without inheritance' comes from!
*/

void main() {
  // STEP 1: Base class
  final basicShape = Shape(vertexes: 2, sides: 2);
  basicShape.printInfo();
  
  print("\n");
  
  // STEP 2: Inheritance
  final traingle = Triangle(height: 5, base: 2);
  traingle.printInfo();
  
  final circle = Circle(radius: 10);
  circle.printInfo();
  
  print("\n");
  
  // STEP 3: Interface
  final rectangle = Rectangle(height: 7, base: 7);
  rectangle.printInfo();
  
  final hexagon = RegularHexagon(sideLength: 6);
  hexagon.printInfo();
  
  print("\n");
}
