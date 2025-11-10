#include <iostream>

template<class X, class Y>
auto add(X x, Y y) -> decltype(x + y){
  return x + y;
}

int main(void){
  int x = 1;
  double y = 3.14;

  auto sum = add(x, y);

  if(sum = 4.14){
    std::cout << "ok" << std::endl;
  }

  return 0;
}
