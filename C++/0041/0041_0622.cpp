#include <iostream>
#include <cstddef>

bool test1(void){
  bool ret = false;

  try{
    throw std::nullptr_t{};
  } catch (std::nullptr_t x){
    ret = true;
  }  
  return ret;
}

bool test2(void){
  bool ret = false;

  try{
    throw std::nullptr_t{};
  } catch (std::nullptr_t& x){
    ret = true;
  }  
  return ret;
}

int main(void){

  auto ret1 = test1();
  auto ret2 = test2();

  if(ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
