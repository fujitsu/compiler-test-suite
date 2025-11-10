#include <iostream>
#include <string>

struct C{
  std::string s;

  C(): s() { } 
  ~C() { }     

  
  C(const C& x): s(x.s) { 
    std::cout << "ng" << std::endl;
  }

  C& operator=(const C& x) { 
    s = x.s; 
    std::cout << "ng" << std::endl;
    return *this; 
  }

  
  C(C&& x): s( static_cast<std::string&&>(x.s) ){ 
    std::cout << "ok1" << std::endl;
  } 
  
  C& operator=(C&& x){
    s = static_cast<std::string&&>(x.s);
    std::cout << "ok2" << std::endl;
    return *this; 
  }
};

int main(void){
  
  {
    C test;
    C move = static_cast<C&&>( test );
  }
  
  
  {
    C test, move;
    move = static_cast<C&&>( test ); 
  }


  return 0;
}
