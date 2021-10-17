import 'package:tuple/tuple.dart';

class Student{
  int? age;
  String? name;

  Tuple2<String?, int?> getNameAndAge(){
    var values = Tuple2<String?, int?>(name, age);
    return values;
  }
}