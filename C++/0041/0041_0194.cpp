#include <iostream>

enum class A : long;

enum class A : long{
  FUNC, NUMB, TEMP
};


int main(void){

  A test = A::TEMP;

  if(test == A::TEMP){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
