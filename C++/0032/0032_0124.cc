#include <stdio.h>
struct X { 
     int i;
           int operator +(){i=5; return i; }
           operator int *(){if(i==5)printf("ok\n"); return 0; }
};

template <class T>
class A :private T {

 public:
   using T::operator +;
   using T::operator int*;
};

A<X> aobj;
int main(){
 aobj.operator+();
 aobj.operator int*();

}

