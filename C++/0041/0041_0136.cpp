#include <iostream>

template<int Size>
class func{
  static_assert( Size > 0, "not enough");
double x[Size];

};

int main(void){
  func<10> a;

  std::cout << "ok" << std::endl;

  return 0;
}
