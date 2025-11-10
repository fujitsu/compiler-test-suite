#include <iostream>
#include <ratio>

int main(void){
  using std::ratio;

  
  static_assert(ratio<1, 2>::num == 1, "Error!");
  static_assert(ratio<1, 2>::den == 2, "Error!");

  if(ratio<1, 2>::num == 1 && ratio<1, 2>::den == 2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

