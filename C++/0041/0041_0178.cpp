#include <iostream>

template<class T>
struct S{
  static T sx;
  T x;
};


int main(void){

  
  std::cout << sizeof(S<int>::sx) << std::endl;

  
  std::cout << sizeof(S<int>::x) << std::endl;

  return 0;
}
