#include <iostream>

template <class T>
void test(T t){ 
  std::cout << "ok" << std::endl; 
}

int main(void){

  struct local1{
  } a;

  class local2{
  } b;

  test(a); 
  test(b); 
  
  return 0;
}
