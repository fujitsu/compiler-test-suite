#include <stdio.h>

template < class T, int x >   
class A {                     
 public:
    T a;
    T b[x];
    T f(T*p); 
};



template < class T, int x > 
T A<T,x>::f(T*p) {
   T a;

  return 1;
}



A<int,10> a_int_10; 
A<int,5> a_int_5; 
int x=3;

template<> int A<int,5>::f(int*p) {
   int a;

  return 2;
}

int main(){
   
   if ( ((a_int_5.f(&x))==2)&& ((a_int_10.f(&x)) == 1)){
    printf("ok\n");
  }
}




