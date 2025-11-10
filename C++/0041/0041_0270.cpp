#include <iostream>
#include <vector>

thread_local std::vector<int> x;

void func(void){
  thread_local std::vector<int> y;
}

struct X{
  static thread_local std::vector<int> z;
};


int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
