#include <iostream>

template<class T>
void test(T t){
  std::cout << "ok" << std::endl;
}

int main(void){
  struct local {} a;

  test(a);

  return 0;
}
