#include <iostream>

struct S{
  void f(){
    std::cout << "f()" << std::endl;
  }
  void f() const {
    std::cout << "f() const" << std::endl;
  }
  void f() volatile{
    std::cout << "f() volatile" << std::endl;
  }
  void f() const volatile{
    std::cout << "f() const volatile" << std::endl;
  }
};

int main(void){
  S s;
  const S sc = s;
  volatile S sv;
  const volatile S scv = s;

  s.f();
  sc.f();
  sv.f();
  scv.f();

  return 0;
}
