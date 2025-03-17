

#include <stdio.h>
struct X {
 typedef int Y;
};

template <class T>
struct X1 {
 int ii; 
 typedef int Y;
};

template <class T>
struct A {
  union {
    T a;
    X1<T> b;

    
    
    
    
#if defined (__cplusplus) && __cplusplus >= 201103L
    X::Y c;
#else
    T::Y c;
#endif

  }obj;
  A(){ obj.b.ii =10;
       obj.c =20;}
};



A<X> aobj;



int main(){
 if ( aobj.obj.b.ii ==20 
   && aobj.obj.c ==20 ) { printf("ok\n");}else {printf("ng\n");}
 return 0;
}

