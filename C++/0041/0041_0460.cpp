#include <iostream>

template<class... Tyeps>
class A{};

template< template<class... Types> class T>
class X{
public:
  X(){
    std::cout << "ok" << std::endl;
  }
};


int main(void){
  X<A> xa;

  return 0;
}
