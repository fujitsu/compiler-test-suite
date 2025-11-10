#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> x;

  auto beg = x.begin();
  auto end = x.end();

  if(std::is_same<decltype(beg), decltype(x)::iterator>::value &&
     std::is_same<decltype(end), decltype(x)::iterator>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
