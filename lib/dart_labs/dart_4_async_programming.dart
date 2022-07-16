// STEP 1: INTRODUCTION TO PARALELISM

/*
  Paralelism is a concept in program where you can create multiple processes or threads where each one focuses
  on a specific task. We won't go into technical details on what is the core difference between processes and threads.
  
  What is needed is that you have the idea that its possible to create multiple 'programs' that can
  focus on certain tasks, functions or executions.
  
  For example, lets say you want to retreive some information from a distant server. This task can take
  some time and it isn't in your control how long it will take to complete.
  Your program will make the petition but then it has to wait for an answer. During this dead time, you could
  do something else to speed up things, right?
  
  How about creating 2 programs? The main program that does your stuff but when it has to make the petition, it creates
  a mini program that handles the petition while the main program dispatches the leftover stuff?
  This small optimization can be achieved with Paralelism.
*/ 

// STEP 2: SYNCHRONOUS PROGRAMMING

/*
  Synchronous Programming is te normal programming you have been doing so far.
  It basically means, there are a bunch of instructions that will execute in order and each instruction
  will wait for the completion of the previous instruction.
*/ 

void synchronousBlock() {
  int i = 2;
  i = i + 1;
  print("Adding +1");
  i += 2;
  print("Adding +2");
  i += 3;
  print("Adding +3");
}

/*
  Synchronous Programming is very straight forward and it is the simplest forms of programming.
  The result from executing a synchronous block of instructions can be determined beforehand.
*/ 

// STEP 2: ASYNCHRONOUS PROGRAMMING

/*
  However, as you saw with the server example described above, you can infere that paralelism can offer significant advantages
  in performance.
  
  Dart can offer some level of paralelism called Asynchronous Programming. This is a type of programming that allows you
  to create 'extra units' that can perform certain tasks and later notify when they have finished.
  
  Think of this like a project. You are the project manager and you have many tasks to finish. You also have a team
  and you have the power to delegate tasks.
  You instruct your teammates to focus on certain tasks but you don't know when they are going to finish (lets assume this for now).
  When you have finished giving instructions, everyone starts to work.
  
  You return to your desk and there are 2 type of scenarios:
  - You can resume your tasks because they don't depend on your teammates' work
  - You can't continue because you have to wait until your coworkers finish their part and give you their result
  
  Asynchronous programming is basically the same concept. However, the tricky part of Async Programming is identifying those 2 types of scenarios.
  There will be situations that you need the result before continuing or you can simply continue with no problems.
  You have to be very careful with the order. A rule of thumb in programming is that, when you work with paralelism, the order of execution and
  the order of results can be fractured if you aren't careful with what you are doing.
  
  When you create an extra unit to work on something, you will receive a promise that it WILL FINISH its task, but you don't
  have any idea of WHEN it is going to complete it.
  
  Dart has the same concepts but expressed in its own datatypes and keywords
  
  Dart offers 2 keywords that deal with Asynchronous Programming: async and await. And it also provides a Datatype
  that is the analogy of the 'Promise' that the extra units do when they are delegated with tasks, which is called 'Future'.
  
  As you can tell, the last keyword seems to indicate some level of similarities to the project manager example and the Future
  datatype is faithful to the concept of promise.
  
  Lets practice in the following codelab to understand more about Asynchronous programming:
  https://dart.dev/codelabs/async-await
*/ 

void main() {
  print("Lets learn!");
}
