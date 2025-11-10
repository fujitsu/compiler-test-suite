#include <iostream>
#include <vector>

template<class T>
using MyVector = std::vector<T>;

int main(void){
  MyVector<int> test;

  std::cout << "ok" << std::endl;

  return 0;
}
