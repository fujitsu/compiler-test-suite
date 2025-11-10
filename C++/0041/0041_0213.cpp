#include <iostream>

template<class T>
struct X{
  template<class U = int>
  void func(){
    std::cout << "ok" << std::endl;
  }

  template<class U = T>
  void numb(){
    std::cout << "ok" << std::endl;
  }  
};


int main(void){
  X<int> test;

  test.func();
  test.numb();
  
  return 0;
}
