#include <iostream>
#include <initializer_list>

int main(void){

  for(auto x : { 1, 2, 3, 4, 5 } ){
    std::cout << x << std::endl;
  }

  int sum = 10;
  for(auto x : {sum, sum * 2, sum * 3} ){
    std::cout << x << std::endl;
  }

  return 0;
}
