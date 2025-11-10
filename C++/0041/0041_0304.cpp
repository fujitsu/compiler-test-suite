#include <iostream>
#include <array>

int main(void){
  bool ret = false;
  std::array<int, 3> vec{ 1, 2, 3 };

  try{
    auto tmp = vec.at(-1);
  } catch(std::out_of_range& e){
    ret = true;
  }

  if(ret){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
 
  return 0;
}
