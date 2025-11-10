#include <iostream>

class ok{
public:
  ok(){
    std::cout << __func__ << std::endl;
  }
};

int main(void){  
  ok test; 
  
  
  
  

  return 0;
}
