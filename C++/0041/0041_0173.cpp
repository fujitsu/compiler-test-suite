#include <iostream>


int main(void){
  [[  ]] int test = 1;

  int [[ ]] func = 2;

  int numb [[ ]] = 3;

  if(test == 1 && func == 2 && numb == 3){
    std::cout << "ok" << std::endl;
  }

  return 0;
}
