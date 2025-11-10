#include <iostream>

struct A{
};

struct B : public A { 
  B(){
    std::cout << "ok" << std::endl;
  }

  B(const B&){
    std::cout << "ng" << std::endl;
  }
};

B func(void){  
  return B{};
}


int main(void){  
  const A& rcs = func();
  
  return 0;
}
