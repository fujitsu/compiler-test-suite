#include <iostream>

class Car {
private:
  int number;
  double gas;
public:
  Car();

  Car(int, double);

  void setNumber(int n)
  {
    number = n;
  }

  int getNumber()
  {
    return number;
  }
};

Car::Car() {}

Car::Car(int num , double gas) {}

int main()
{
  Car unknowncar;
  Car mycar(2, 60);

  mycar.setNumber(5);

  if (mycar.getNumber() == 5) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}
