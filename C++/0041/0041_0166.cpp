#include <iostream>
#include <initializer_list>

struct X
{
  X& operator=(std::initializer_list<int>){
    std::cout << "ok" << std::endl;
    
    return *this;
  }
};


int main(void){
  X x;
  x = { 1, 2, 3 };


  return 0;
}
