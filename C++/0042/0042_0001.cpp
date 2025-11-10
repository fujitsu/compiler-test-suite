#include <iostream>


int main(void){
  [[  ]] int test = 1;

  int [[ ]] num1 = 2;

  int num2 [[ ]] = 3;

  if(test == 1 && num1 == 2 && num2 == 3){
    std::cout << "ok" << std::endl;
  }

  return 0;
}
