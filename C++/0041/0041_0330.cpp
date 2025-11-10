#include <iostream>

int main(void){
  double pi = 3.14;

  auto array = new auto( pi );

  *array = 3.14;

  if(*array == pi){
    std::cout << "ok" << std::endl;
  }

  delete array;

  return 0;
}
