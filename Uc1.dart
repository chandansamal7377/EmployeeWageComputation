import 'dart:math';

class Employee {
  attendance() {
    var random = new Random();
    var checker = random.nextInt(2);
    if (checker == 1) {
      print("Employee is present");
    } else {
      print("Employee is absent");
    }
  }
}

void main() {
  var emp = new Employee();
  print("------Welcome To employee wage Computation program--------");
  emp.attendance();
}
