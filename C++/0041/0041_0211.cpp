#include <iostream>

struct Base final{
  int func = 10;
};

int main(void){
  Base a;

  if(a.func == 10){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
