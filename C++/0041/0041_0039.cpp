#include <iostream>

int main(void){
  auto tmp = u"a";

  if(tmp == u"a"){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
