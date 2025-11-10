#include <iostream>
#include <initializer_list>
#include <algorithm>

int main(void){
  std::initializer_list<int> vec { 3, 2, 1 };

  auto beg = vec.begin();
  auto end = vec.end();

  if( *beg == *(end-3) &&
      *(beg+1) == *(end-2) &&
      *(beg+2) == *(end-1) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
