

#include <iostream>
#include <vector>
#include <initializer_list>

int main(void){

  auto a = {1, 2, 3, 4, 5};
  
  for(auto x : a){ }

  std::cout << "ok" << std::endl;

  return 0;
}
