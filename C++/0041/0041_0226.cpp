#include <iostream>

template <class T>
void test(T t){ 
  std::cout << "ok" << std::endl; 
}

struct { } noname1;

class { } noname2;

int main(void){

  test(noname1);
  test(noname2);

  return 0;
}
