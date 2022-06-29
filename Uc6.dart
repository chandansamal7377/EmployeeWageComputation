import 'dart:math';

class Employee {
  int fullTimeEmpWorkingHr = 8;
  int partTimeEmpWorkingHr = 4;
  int wage_Per_Hr = 20;
  final int totalWorkingDays = 20;

  wageCalculation() {
    int daily_Wage = 0;
    int working_day = 0;
    int working_Hour = 0;
    while (working_day < 20 && working_Hour < 100) {
      int check = Random().nextInt(2) + 1;
      if (check == 1) {
        int random = Random().nextInt(2) + 1;
        if (random == 1) {
          daily_Wage = daily_Wage + wage_Per_Hr * fullTimeEmpWorkingHr;
          working_Hour += fullTimeEmpWorkingHr;
        } else {
          daily_Wage = daily_Wage + wage_Per_Hr * partTimeEmpWorkingHr;
          working_Hour += partTimeEmpWorkingHr;
        }
      } else {
        working_day -= 1;
      }
      working_day += 1;
    }
    print("Monthly Wage= $daily_Wage");
    print("Working Days is $working_day");
    print("WorkingHour= $working_Hour");
  }
}

void main() {
  var emp = new Employee();
  emp.wageCalculation();
}
