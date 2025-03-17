#include <stdio.h>
template < class T, int s>
class A{
  public:
   class B {
   public:
     static T b;
   }; 
};

 A<int,1> aobj;

template<> int A<int,1>::B::b =5;

int main(){
  if ( A<int,1>::B::b  ==5 ){ printf("ok\n");} else {printf("ng\n");} 
}
