#include <iostream>

int main(void){
  int n = 2;

  bool b1 = (n-- == 2 ? n-- == 1 : false);
  bool b2 = (n++ == 1 ? false : n++ == 1);


  if(b1 && b2){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
