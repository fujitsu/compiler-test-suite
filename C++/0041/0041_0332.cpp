#include <iostream>
#include <iterator>
#include <iterator>
#include <vector>
#include <utility>

int main(void){
  std::vector<int> vec;

  auto beg = std::begin(vec);
  auto end = std::end(vec);

  auto ret1 = std::is_same< decltype(beg), decltype(vec)::iterator>::value;
  auto ret2 = std::is_same< decltype(end), decltype(vec)::iterator>::value;

  if(ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
