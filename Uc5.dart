import 'dart:math';

class Employee {
  int fullTimeEmpWorkingHr = 8;
  int partTimeEmpWorkingHr = 4;
  int wagePerHr = 20;
  final int totalWorkingDays = 20;
  wageCalculation() {
    int dailyWage = 0;
    int working_day = 0;
    while (working_day < 20) {
      int check = Random().nextInt(2) + 1;
      if (check == 1) {
        int random = Random().nextInt(2) + 1;
        if (random == 1) {
          dailyWage = dailyWage + wagePerHr * fullTimeEmpWorkingHr;
        } else {
          dailyWage = dailyWage + wagePerHr * partTimeEmpWorkingHr;
        }
      } else {
        working_day -= 1;
      }
      working_day += 1;
    }
    print("Monthly Wage= $dailyWage");
    print("Working Days is $working_day");
  }
}

void main() {
  var emp = new Employee();
  emp.wageCalculation();
}
