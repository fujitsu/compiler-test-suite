#include <iostream>

template<class... Types>
struct MyObj{ 
};

MyObj<> a;
MyObj<int> b;
MyObj<int, double> c;

int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
