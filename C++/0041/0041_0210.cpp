#include <iostream>

template<class T, class U = double>
class X{
  T x;
  U y;
};


template<class T, class U = double>
void func(T x, U y){
  std::cout << "ok" << std::endl;
}

int main(void){

  func(10, 20);

  return 0;
}
