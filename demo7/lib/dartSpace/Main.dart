import 'Student.dart';

void main(){
  Student Lilei = new Student();
  Lilei.age = "1";
  Lilei.name = "Lilei";
  Lilei.gender = "1";

  Student ruilin = new Student();
  ruilin.age = "1";
  ruilin.name = "ruilin";
  ruilin.gender = "1";


  Student xiaoming = new Student();
  xiaoming.age = "1";
  xiaoming.name = "xiaoming";
  xiaoming.gender = "1";


  Lilei.friends..add(xiaoming)..add(ruilin);
  for (var student in Lilei.friends) {
    print(student.name);
  }
}