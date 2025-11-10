#include <iostream>

template<class... Tyeps> class A{};
template<class T> class B{};
template<class T, class U = T> class C{};
template<class T1, class T2, class... Types> class D{};

template< template<class... Types> class T,
	  class... U>
class Y{
public:
  Y(){
    std::cout << "ok" << std::endl;
  }
};


int main(void){
  Y<A> ya;
  Y<B> yb;
  Y<C> yc;
  Y<D> yd;

  return 0;
}
