#include <stdio.h>
template < class T, int s>
class A{
  public:
   class B {
   public:
     static T b;
     int f(int);
   }bobj; 
};


template < class T, int s>
int A<T,s>::B::f(int i){T iii=s; iii=iii+i; return iii;}

 A<int,4> aobj;

template<> int A<int,4>::B::b =5;

int main(){
  if (aobj.bobj.f(6) == 10){ printf("ok\n");} else {printf("ng\n");}
}
