#include <iostream>

int operator "" _test(const wchar_t*, std::size_t){
  return 0;
}


int main(void){

  if(L"abc"_test == 0){
    std::cout << "ok" << std::endl;
  }

  return 0;
}
