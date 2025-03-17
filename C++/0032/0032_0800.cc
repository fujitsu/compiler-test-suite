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
    ~A();
};



template < class T > 
A<T>::~A() {
  printf ( "member of A<T>::dtor\n");
}


template<> A<int>::~A() {
  printf ( "ok\n");

}

int main(){
A<int> a_int_5; 
}







