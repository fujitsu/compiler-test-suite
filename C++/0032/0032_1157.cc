#include <stdio.h>
template < class T>
class A{
  public:
   static T a;
  class B {
  public:
   static T b;
 };

};

template<> int A<int>::B::b =5;

int main(){
  if ( A<int>::B::b==5){ printf("ok\n");} else {printf("ng\n");}
}
