#include <iostream>

class base {
public:
  int x_;

  base(int x): x_(x) { }
};

class derived : public base {
public:
  using base::base;
};


int main(void){
  derived a(10);
  

  if(a.x_ == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
