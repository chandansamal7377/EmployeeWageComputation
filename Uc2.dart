import 'dart:math';

class Employee {
  
  int attendance() {
    int wagePerHour = 20;
    int workingHour = 8;
    int dailyWage = 0;
    var random = new Random();
    var checker = random.nextInt(2);
    if (checker == 1) {
      print("Employee is present");
      dailyWage = wagePerHour * workingHour;
    } else {
      print("Employee is absent");
    }
    return dailyWage;
  }
}

void main() {
  var emp = new Employee();
  print("Employee wage is ${emp.attendance()}");
}
