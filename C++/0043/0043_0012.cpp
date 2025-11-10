#include <iostream>
#include <type_traits>

struct N{
  int i;
  int j;
  virtual ~N();
};

int main(void){

  auto t = std::is_trivial<N>::value;
  auto s = std::is_standard_layout<N>::value;
  auto p = std::is_pod<N>::value;
  
  if(t == false && s == false && p == false){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
