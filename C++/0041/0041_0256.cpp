#include <iostream>

int main(void){
  bool ret = false;

  int n = 0;

  int x = n++;
 
  if(x == 0 && n == 1){
    int y = n--;
    if(y == 1 && n == 0){
      ret = true;
    }
  }
  
  if(ret){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
