#include <stdio.h>
class B {
public :
   int b;
};

class C {
public :
   int c;
};


template < class T >
class A : public B,public C{
 public:
    T a;
    A();
};



template < class T > 
A<T>::A() {
  printf ( "member of A<T,x>::ctor\n");
}



template<> A<int>::A() {
  printf ( "ok\n");

}

A<int> a_int_5; 
int x=3;

int main(){

}





