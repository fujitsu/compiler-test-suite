#include <iostream>

template<class T, class... Args>
void func(Args... args){
  T array[] = { args... };

  if(array[0] == 1 && array[1] == 2 && array[2] == 3){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
}

int main(void){
  
  func<int>(1, 2, 3);
 
  return 0;
}
