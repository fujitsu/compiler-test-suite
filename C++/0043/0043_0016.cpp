#include <iostream>
#include <type_traits>

struct SL{
  int i;
  int j;
  ~SL();
};

int main(void){

  auto t = std::is_trivial<SL>::value;
  auto s = std::is_standard_layout<SL>::value;
  auto p = std::is_pod<SL>::value;
  
  if(t == false && s == true && p == false){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
