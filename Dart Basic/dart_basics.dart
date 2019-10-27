class Person
{
  String name = 'flutter';
  double age = 12.12;
}


// constructor class 
class Employee
{
  String name;
  int salary;
  
  Employee(           //named constructor method
    {
      this.name,
      this.salary
    }
  );
}


void main()
{
  
  var a = ["a", "b"];
  var b = [12, 23];
  var c = ['bob' , 12 , 4.5];
  
  print(a.runtimeType);  // print type of variable
  String str = 'Dart';
  print('I love ${str}');
  // instance of class
  var p = Person();
  print((p));
  print((p.age));
  
  // dictionary
  var maps = 
  {
    "name":"henry",
    "age" : 21
  };
  
  print(maps['name']);
  print(maps);
  print(maps.keys);
  print(maps.values);
  
  // final variable
  final x = 35;
  
  //type-cast
    
  try{
  var s = "programmer";   //string to int
  int num1 = int.parse(s);
  print(num1);
  
  var f = "3.66";            // string to double
  double num2 = double.parse(f);
  print(num2);
  
  var d = 12 ;                // int to string
  String str2 = d.toString();
  print(str2);
  }
  catch(Exception e)
  {
    print("something went wrong");
    throw e;
  }
  // list 
  var arr = ['stuart', 'mark'];
  arrayFunction(arr);
  
  //null aware parameters
  var result = 12;
  print(result??"free");
  
  // string interpolation
  print("price is ${result??'free'}");  
  
  // Named parameter 
  grocery(price:255.5);

  //
    Employee e = new Employee(name:'CodingNinja', salary:2000);
  
  print("Name is ${e.name} and salary ${e.salary}");
  
  
}



void grocery({List<String> list , double price})
{
  print("price of grocery ${price??"free"}");
}

void arrayFunction(List<String> list)
{
  for(var i in list)
  {
    print(i);
  }
}

//arrow function

void result()
{
  print('result');
  
}

void main() => result();