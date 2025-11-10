#include <iostream>


struct test{
  int value;
};

int main(void){

  test func;
  std::cout << sizeof( decltype(func)::value ) << std::endl;

  return 0;
}
