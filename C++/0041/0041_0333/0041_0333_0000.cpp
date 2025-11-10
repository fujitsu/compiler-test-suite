#include <iostream>

#include <vector>
#include <iterator>
#include <type_traits>

extern auto beg(void) -> std::vector<int>::iterator;
extern auto end(void) -> std::vector<int>::iterator;

int main(void){

  auto a = beg();
  auto b = end();

  auto ret1 = std::is_same<decltype(a), std::vector<int>::iterator>::value;
  auto ret2 = std::is_same<decltype(b), std::vector<int>::iterator>::value;

  if(ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
