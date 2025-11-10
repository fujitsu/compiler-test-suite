#include <iostream>

struct S{
  void g() & {
    std::cout << "g() &" << std::endl;
  }

  void g() &&{
    std::cout << "g() &&" << std::endl;
  }
};

S foo(){
  return S();
}

int main(void){
  S s;
  S& slr = s;

  s.g();
  slr.g();
  foo().g();

  return 0;
}
