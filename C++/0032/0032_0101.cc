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
 static int (T::*p)();
 static double T::*pp;
};


A<B> aobj;

template<> int (B::*(A<B>::p))() {};
template<> double B::*(A<B>::pp)= &B::d;

int main(){
 aobj.p = &B::f;
 if ( (bobj.*(aobj.p))() ==10
     && bobj.*(aobj.pp) ==3.0 ) { printf("ok\n");}else {printf("ng\n");}
}
