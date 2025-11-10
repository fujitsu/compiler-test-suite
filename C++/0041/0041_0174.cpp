
#include <iostream>

namespace cfe{
  int x;
}

int main(void){

  cfe::x = 10;

  if(cfe::x == 10){
    using namespace cfe;
    
    x = 20;
    if(x == 20){
      std::cout << "ok" << std::endl;
    }
  }
  
  return 0;
}
