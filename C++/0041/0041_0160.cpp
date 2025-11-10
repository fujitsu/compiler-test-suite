#include <iostream>
#include <initializer_list>

struct X{
  X(std::initializer_list<int> v): sum(0) {
    for(auto x: v){
      sum += x;
    }
  }
  
  int sum;
};


int main(void){

  X sum{1, 2, 3, 4, 5};

  if(sum.sum == 15){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
