import 'dart:math';

class Employee {
  int empWorkingHr = 0;
  int wagePerHr = 20;
  int dailyWage = 0;
  int empWorkingType() {
    int random = Random().nextInt(3);
    switch (random) {
      case 1:
        print("Employee is doing part time job");
        empWorkingHr = 4;
        break;

      case 2:
        print("Employee is doing full time job");
        empWorkingHr = 8;
        break;

      default:
        print("Employee is absent");
        empWorkingHr = 0;
        break;
    }
    return empWorkingHr;
  }

  wageCalculation() {
    if (empWorkingHr == 4) {
      dailyWage = wagePerHr * empWorkingHr;
      print("Employee eage is $dailyWage");
    } else {
      dailyWage = wagePerHr * empWorkingHr;
      print("Employee wage is $dailyWage");
    }
  }
}

void main() {
  var emp = new Employee();
  emp.empWorkingType();
  emp.wageCalculation();
}
