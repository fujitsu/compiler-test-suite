#include <iostream>

template<class A = int, class B = float, class C = double> 
void func(){
  std::cout << "ok" << std::endl;
}

template<class A, class B = float, class C = double> 
void numb(){
  std::cout << "ok" << std::endl;
}

template<class A, class B, class C = double> 
void temp(){
  std::cout << "ok" << std::endl;
}


int main(void){

  func();
  numb<int>();
  temp<int, float>();

  return 0;
}
