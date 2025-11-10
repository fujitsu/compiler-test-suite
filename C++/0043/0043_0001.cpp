#include <iostream>
#include <type_traits>

union X{
  int n;
  float x;
};

int main(void){
  std::aligned_union<sizeof(X), int, float, double> x;
  
  std::cout << decltype(x)::alignment_value << std::endl;

  return 0;
}
