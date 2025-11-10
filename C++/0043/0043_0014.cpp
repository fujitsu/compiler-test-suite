#include <iostream>
#include <type_traits>

struct T{
  int i;
private:
  int j;
};

int main(void){

  auto t = std::is_trivial<T>::value;
  auto s = std::is_standard_layout<T>::value;
  auto p = std::is_pod<T>::value;
  
  if(t == true && s == false && p == false){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
