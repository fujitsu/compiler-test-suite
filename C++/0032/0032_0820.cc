#include <stdio.h>
class B {
 public:
  typedef double B_i;
  class N{int a; int b; int c; };
};

template < class Y>
class J {
public :
  class NN { int jj;};
};

template < class T>
class A {
 public:
  T a;
  
  
  
  
  
#if defined (__cplusplus) && (__cplusplus >= 201103L || __GNUC__)
  B::B_i b;
#else
  T::B_i b;
#endif

  B::N c;

  
  
  
  
#if defined (__cplusplus) && (__cplusplus >= 201103L || __GNUC__)
  J<B>::NN d;
#else
  J<T>::NN d;
#endif
};

int main(){
  A<B> aobj;
  if ( (sizeof(aobj.b) == 8)
    && (sizeof(aobj.c) == 12)
    && (sizeof(aobj.d) == 4)){ printf("ok\n");}
   else { printf("ok\n");}

  return 0;
}
