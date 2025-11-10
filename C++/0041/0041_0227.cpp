#include <iostream>

template <class T>
void test(T t){ 
  std::cout << "ok" << std::endl; 
}

enum { noname };

int main(void){

  test(noname);

  return 0;
}
