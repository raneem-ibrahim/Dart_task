void main(){

//task1
print("hello,world");

//task2
 Map<String, dynamic> person = {
    "name": "yaqoot",
    "age": 26
    };
    print(person);


//task3

var age=30;
if (age>18){
    print('is allowed');
}
else{
    print('allowed');
}

//task4
List <dynamic> favoritelang=['html','css','js'];
print (favoritelang);

for(var lang in favoritelang){
    print('$lang');
}

//task5

  Map<String, String> user = {
    "name": "yaqoot",
    "email": "yaqoot@gmail.com",
    "city":"aqaba",
  };
  print(user);

  //task6

  var x=4;
  var b=5;
  var total=x+b;
  print (total);

  //task7

  for (int i=1;i<=10;i++){
  print ('5*$i=${5*i}');
  }

  //task8

  var d=8;
  if( d%2==0){
print ('$d is even');
  }
else{
    print ('$d is odd');
}

//task9
List <int>num=[10,20,30,40,50,60,70,80];
print ("numlength:${num.length}");
print("numlast:${num.last}");


//task10
Map<String,dynamic>course= { 
    "id":3,
    'title':'dartcourse',
    'price':50,
};
print(course);

//task11
List <int>n=[1,2,3,3,2];
print("originallist:$n");
Set<int> numbers = {1, 2, 3, 3, 2};
print("uniqe:$numbers");

//task12
  List<int> numb = [1, 2, 3, 4, 5, 6];

  var evenNumbers = numb.where((n) => n % 2 == 0);

  print("Even numbers: $evenNumbers");


  //task13
    int numberofbooks=6;
    print('numberofbooks:$numberofbooks');

    double piceofbooks= 3.5;
    print('piceofbooks:$piceofbooks');

    var totalcost= numberofbooks*piceofbooks;
    print('totalcost:$totalcost');
    
    if(numberofbooks%2==0){
        print('numberofbooks:$numberofbooks is even');
    }
    else{
        print('numberofbooks:$numberofbooks is odd');
    };

    //task14

    double num1= 1.7;
    double num2= 3.4;
    double num3= 5.8;
    double average =(num1+num2+num3)/3;
    print ('average:$average');


    //task15

double hiegh=5.5;
double width=2.5;
double area=(hiegh*width);
print('area:$area');
double perimeter=2*(hiegh+width);
print('perimeter:$perimeter');


//task16


  double celsius = 38.0;

  double fahrenheit = (celsius * 9 / 5) + 32;

  print("Temperature in Fahrenheit: $fahrenheit");

//task17

int value=24;
print ('${value%2==0?'even':'odd'}');


}


