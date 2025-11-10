#include <iostream>

struct test{
  test(){
    std::cout << __func__ << std::endl;
  }

  void ok(void){
    std::cout << __func__ << std::endl;
  } 
};

int main(void){  
  test x; 

  
  
  

  x.ok();
  
  
  
  

  return 0;
}
