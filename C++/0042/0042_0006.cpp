#include <iostream>

int main(void){
  bool ret = false;

  int a1 = {1};
  int a2 = 2;
  int a3(3);


  if(a1 == 1 && a2 == 2 && a3 == 3){
    ret = true;
  } else {
    ret = false;
  }

#if defined __cplusplus >= 201103L
  int a4{4};

  if(a4 == 4){
    ret = true;
  } else{
    ret = false;
  }
  
#endif

  if(ret){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
