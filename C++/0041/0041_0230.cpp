#include <iostream>

template <class... Types>
struct Myobj{ };

int main(void){

  Myobj<> a;
  Myobj<int> b;
  Myobj<int, double> c;

  std::cout << "ok" << std::endl;

  return 0;
}
