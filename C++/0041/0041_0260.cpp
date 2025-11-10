#include <iostream>

int x = 2;

int& left(){
#ifdef __clang__
  std::cout << "2" << std::endl;
#else
  std::cout << "1" << std::endl;
#endif
  return ++x;
}

int right(){
#ifdef __clang__
  std::cout << "1" << std::endl;
#else
  std::cout << "2" << std::endl;
#endif
  return x*2;
}

int main(void){

  bool ret = (left() = right());

  if(ret){
    std::cout << "ok" << std::endl;    
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
