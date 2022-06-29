import 'dart:math';

class Employee {
  int attendance() {
    int wagePerHour = 20;
    int fullTimeWorkingHour = 4;
    int partTimeWorkingHour = 8;
    int dailyWage = 0;
    var checker = Random().nextInt(2);
    if (checker == 1) {
      print("Employee is present");
      int random = Random().nextInt(2);
      if (random == 1) {
        print("Employee is Full Time Present");
        dailyWage = wagePerHour * fullTimeWorkingHour;
      } else {
        print("Employee is Part Time Present");
        dailyWage = wagePerHour * partTimeWorkingHour;
      }
    } else {
      print("Employee is absent");
    }
    return dailyWage;
  }
}

void main() {
  var employee = new Employee();
  print("Employee wage is ${employee.attendance()}");
}
