#include <iostream>

auto func1(int x, int y, int z) -> int{
  return x + y + z;
}

template<class X>
auto func2(X x) -> decltype(x){
  std::cout << "ok" << std::endl;
  return x;
}

int main(void){
  func1(1, 2, 3);
  
  func2(1);

  return 0;
}
