#include <iostream>

struct trivial{
  trivial() = default;
  trivial(trivial&&) = default;
  trivial& operator=(trivial&&) = default;
};

int main(void){
  trivial test;
  trivial move = static_cast<trivial&&>( test );
  
  std::cout << "ok" << std::endl;

  return 0;
}
