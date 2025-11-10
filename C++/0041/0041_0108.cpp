#include <iostream>

struct X;
X func(void);

void test1( decltype( func() ) x);
decltype( func() ) test2(void);

int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
