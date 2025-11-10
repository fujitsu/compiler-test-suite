#include <iostream>
#include <initializer_list>

int main(void){

  for(auto elem : {1, 2, 3, 4, 5}){
    std::cout << elem << std::endl;
  }

  return 0;
}
