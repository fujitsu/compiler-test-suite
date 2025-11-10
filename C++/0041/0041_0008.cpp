#include <iostream>

template<class T>
class A{
};

template<class T, class U = T>
class B{
};

template<class... Types>
class C{
};

template< template<class> class P>
class X{
};

template< template<class...> class Q>
class Y{
};

int main(void){
  X<A> xa;
  
  

  Y<A> ya;
  Y<B> yb;
  Y<C> yc;

  std::cout << "ok" << std::endl;

  return 0;
}
