#include <iostream>
#include <initializer_list>

struct X
{
  void operator[] (std::initializer_list<int> vec){
    std::cout << "ok" << std::endl;
  }
};


int main(void){
  X test;
  
  test[ {1, 2, 3} ];

  return 0;
}
