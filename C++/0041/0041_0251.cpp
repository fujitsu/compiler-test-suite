#include <iostream>

namespace cfe 
{
  inline namespace v1
  {
    inline void foo(){    
      std::cout << "v1::foo()" << std::endl;
    }

    inline void bar(){
      std::cout << "v1::bar()" << std::endl;
      foo();
      cfe::foo();
      cfe::v1::foo();
    }
  } 
} 

int main(void){

  std::cout << "cfe::bar()" << std::endl;
  cfe::bar();

  std::cout << "cfe::v1::bar()" << std::endl;
  cfe::v1::bar();

  return 0;
}
