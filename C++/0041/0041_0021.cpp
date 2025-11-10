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
  X<double> a;

  a.func();
  a.numb();

  return 0;
}
