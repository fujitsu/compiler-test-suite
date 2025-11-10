#include <iostream>

template<class... Types>
class X{
public:
  X() {
    std::cout << "ok" << std::endl;
  }
};

template<class... Types>
using MyAliasX = X<Types...>;

int main(void){
  MyAliasX<int, float, double> X;

  return 0;
}
