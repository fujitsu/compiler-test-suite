#include <iostream>

enum Color : int;
void func(Color x){
  std::cout << "ok" << std::endl;
}

enum Color : int {
  FOO
};

int main(void){

  func(Color::FOO);

  return 0;
}
