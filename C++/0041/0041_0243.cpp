#include <iostream>
#include <string>

struct C{
  std::string s;
};

int main(void){
  C test;
  C move = static_cast<C&&>(test);

  std::cout << "ok" << std::endl;

  return 0;
}
