#include <stdio.h>

class B {
 public:
 void f(){printf("ok\n");}
}bobj;

template <class T> 
class C{
public:
  void (T::*mp)();
  C():mp(&B::f){}     
};

template <class T> 
class C1{
public:
  void (T::*mp)();
  C1();
};







#if defined (__cplusplus) && __cplusplus >= 201103L
template <class T> C1<T>::C1():mp(&B::f) {}
#else
template <class T> C1<T>::C1():mp(B::f) {}
#endif


C<B> obj;
int main(){
  (bobj.*(obj.mp))();

}
