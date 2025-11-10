#include <iostream>

template <class... Types>
struct X{
  static const int count_ = sizeof...(Types);
};

int main(void){
  X<> a;
  X<int> b;
  X<int, float, double, char, long> c;

  if(a.count_ == 0 && b.count_ == 1 && c.count_ == 5){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
