#include <iostream>


struct X{
  void f() &{
    std::cout << "f() &" << std::endl;
  }

  void f() &&{
    std::cout << "f() &&" << std::endl;
  }
};

X foo(){
  return X();
}

int main(void){
  X a;

  a.f();
  foo().f();

  return 0;
}
