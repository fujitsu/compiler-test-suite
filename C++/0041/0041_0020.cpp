#include <iostream>

template<class T, class U = double>
void func(T x, U y = 0){
  std::cout << "ok" << std::endl;
}

int main(void){
  func(1, 'c');
  func(1);

  return 0;
}
