#include <stdio.h>
class B { public: int bb;}bobj;

template < class T, int x >   
class A {                     
 public:
    T a;
    T b[x];
    B f(T*p); 
};



template < class T, int x > 
B A<T,x>::f(T*p) {
   T a;

   bobj.bb+=6;
  return bobj;
}



A<int,10> a_int_10; 
A<int,5> a_int_5; 
int x=3;

template<> B A<int,5>::f(int*p) {
   int a;

   bobj.bb=5;
  return bobj;
}

int main(){
   a_int_5.f(&x);
   a_int_10.f(&x);
   if (bobj.bb == 11) { printf("ok\n");}
}




