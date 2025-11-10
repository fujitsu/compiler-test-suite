#include <iostream>

struct Obj{
  int n = 100;
};

struct Test{
  int val_;
  
  explicit operator Obj() const {
    return Obj{};
  }
};

int main(void){
  auto val = static_cast<Obj>( Test{} );

  if(val.n == 100){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }  

  return 0;
}
