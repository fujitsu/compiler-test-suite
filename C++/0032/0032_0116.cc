#include <stdio.h>
class X {
public:
 int a[3];
 typedef double N1;
};

class A0 {
public:
 class X {
 };
};

template <class T>
class A1 {
public:
 typedef X N2;

};



template <class T>
class A {
 public:

  
  
  
  
#if defined (__cplusplus) && (__cplusplus >= 201103L || __GNUC__)
 typedef X::N1 AA1;
#else 
 typedef T::N1 AA1;
#endif

  

  
  
  
  
#if defined (__cplusplus) && (__cplusplus >= 201103L || __GNUC__)
  typedef A1<X>::N2 AA3;
#else
  typedef A1<T>::N2 AA3;
#endif

  
  
  
  
  
  
#if defined (__cplusplus) && __cplusplus >= 201103L
  typedef A1<X>::N2::N1 AA5;  
#else
  typedef A1<X>::N2::N1 AA5;
#endif

 int fAA1(){ return sizeof (AA1);} 

 int fAA3(){ return sizeof (AA3);} 
 int fAA5(){ return sizeof (AA5);} 

};


A<X> obj;

int main(){
  if ( obj.fAA1() == 8 
    && obj.fAA3() == 12
    && obj.fAA5() ==8){ printf("ok\n");} else {printf("ng\n");}
  return 0;
}
