#include <iostream>
#include <functional>

int main(void){

  
  std::function<int(int)> fact = [&fact](int x){
    return x == 0 ? 1 : x * fact(x - 1); 
  };
  
  std::cout << fact(3) << std::endl;

  return 0;
}
