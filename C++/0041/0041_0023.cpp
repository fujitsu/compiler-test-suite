#include <iostream>
#include <vector>

template<class T>
using MyVector = std::vector<T>;

int main(void){
  MyVector<int> a;
  MyVector<double> b(0);

  std::cout << "ok" << std::endl;

  return 0;
}
