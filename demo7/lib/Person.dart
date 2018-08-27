class Person{
  String name;
  String gender;
  int age;

  Person(String name,int age,String  gender){

  }

  eat(){
    print("i am eat");
  }
  sleep(){
    print("i am sleep");
  }
  study(){
    print("i am study");
  }
}

// int main(List<String> args) {
//   
// }
main(){
  new Person()..eat()..sleep()..study();
}