#include <iostream>

template<class... Tyeps> class A{};
template<class T> class B{};
template<class T, class U = T> class C{};
template<class T1, class T2, class... Types> class D{};

template< template<class... Types> class T>
class X{
public:
  X(){
    std::cout << "ok" << std::endl;
  }
};


int main(void){
  X<A> xa;
  X<B> xb;
  X<C> xc;
  X<D> xd;

  return 0;
}
