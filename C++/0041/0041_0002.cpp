#include <iostream>

struct A{};
struct B : public A{
  B(){
    std::cout << "ok" << std::endl;
  }
  B(const B&){
    std::cout << "ng" << std::endl;
  }
};

B f(void){
  return B{};
}

int main(void){
  const A& rcs = f();
  
  return 0;
}
