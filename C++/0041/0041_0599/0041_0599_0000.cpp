#include <utility>
#include <type_traits>

bool func(void){
  auto ret = std::move(10);
  
  return std::is_same< decltype(ret), int>::value;
}
