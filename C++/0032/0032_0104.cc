#include <stdio.h>
int j=0;

template <class T>
class A {
 public:
  T i;
  T f(T j){ T x; x=j; return j;}
 virtual T ff(T j){ T x; x=j; return j;}
 virtual T fff(T j) =0;
 static  T ffff(T j){ T x; x=j; return j;}
 virtual ~A()=0;
};

A<int> *p;


template <class T>
class B : A<T> {
T xx,jj; 
T fff(T j){ return j; }
 public:
 B(){jj =100;}
~B(){j=jj;}
};

template <class T>
A<T>::~A(){}

int main(){
  {
  B<int> obj;
  }
  if (j==100) { printf("ok\n");} else { printf("ng\n");}
}
