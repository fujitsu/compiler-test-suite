#include <iostream>
#include <vector>

int main(void){
  
  int array[] = {0, 0, 0, 0, 0};
  for(int& x : array){
    x = 1;
  }

  if(array[0] == 1){
    std::cout << "ok" << std::endl;
  }

  return 0;
}
