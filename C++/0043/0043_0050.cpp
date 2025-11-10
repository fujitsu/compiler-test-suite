#include <iostream>
#include <exception>

void problem() throw() {
  throw 1;
}

void func(){
  std::cout << "ok" << std::endl;
  exit(0);
}

int main(void){
  std::set_unexpected( func );

  auto func = std::get_unexpected();
  func();

  return 0;
}
