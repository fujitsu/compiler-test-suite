#include <iostream>

struct base{
  base(int) { std::cout << "base(int)" << std::endl;  } 
  base(double){ std::cout << "base(double)" << std::endl; }
};

struct derived : base {
  using base::base;

  derived(int val) :base(val) { 
    std::cout << "derived(int)" << std::endl; 
  }
};

int main(void){
  derived d_int(0); 
  derived d_double(0.0); 

  return 0;
}
