#include <iostream>

int main(void){
  double pi = 3.0;
  double area = [pi](double r){ return r * r * pi; } (3.0);

  []{ std::cout << "ok" << std::endl; }();

  return 0;
}
