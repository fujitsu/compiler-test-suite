#include <type_traits>
#include <array>

extern bool func(void);

bool func(void){
  bool ret = false;

  std::array<int, 3> x;

  if(std::is_same<decltype(x), std::array<int,3>>::value){
    ret = true;
  }
  
  return ret;
}
