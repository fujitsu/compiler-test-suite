#include <iostream>
#include <type_traits>

struct POD{
  int i;
  int j;
};

int main(void){

  auto t = std::is_trivial<POD>::value;
  auto s = std::is_standard_layout<POD>::value;
  auto p = std::is_pod<POD>::value;
  
  if(t == true && s == true && p == true){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
