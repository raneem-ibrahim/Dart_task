class Employee {
  void work() {
    print('Employee is working');
  }
}

class Manager extends Employee {
  void manageTeam() {
    print('Manager is managing the team');
  }
}

void main() {
  Manager manager = Manager();
  manager.work();
  manager.manageTeam();
}


