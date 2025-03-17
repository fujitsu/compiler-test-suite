#include <stdio.h>
class B {
public:
 int f(){ return 10;}
 double d;
 B():d(3.0){}
}bobj;

template <class T>
class A{
 public:
 T f(int (T::*fp)());
};

A<B> aobj;
template <class T>
T A<T>::f(int (T::*fp)()){ if ( (bobj.*fp)() == 10) {printf("ok\n"); }
                           else {printf("ng\n"); }
			   return bobj;
			 }
int (B::*xp)();

int main(){
 xp = &B::f;
 aobj.f(xp);

}
