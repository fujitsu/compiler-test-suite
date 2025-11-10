#include <iostream>

template<class... Args> class X{
};

template<class... Args> class Y{
  X<Args...> val;
};


int main(void){
  Y<> a;
  Y<int> b;
  Y<int, float, double> c;

  std::cout << "ok" << std::endl;

  return 0;
}
