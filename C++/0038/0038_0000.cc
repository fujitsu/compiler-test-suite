#include <iostream>

class Car {
private:
  int number;
  double gas;
public:
  void setNumber(int n)
  {
    number = n;
  }
  
  int getNumber()
  {
    return number;
  }

  void showNumber();
};

int main()
{
  Car mycar;

  mycar.setNumber(5);

  if (mycar.getNumber() == 5) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}
