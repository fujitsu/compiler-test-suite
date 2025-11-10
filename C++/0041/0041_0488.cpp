#include <iostream>
#include <initializer_list>

int main(void){
  std::initializer_list<int> vec { 1, 2, 3};

  auto beg = vec.begin();
  auto end = vec.end();

  auto ret1 = std::is_same<decltype(beg), std::initializer_list<int>::iterator>::value;
  auto ret2 = std::is_same<decltype(end), std::initializer_list<int>::iterator>::value;
  
  if(ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
