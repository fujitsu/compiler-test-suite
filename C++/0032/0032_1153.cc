#include <stdio.h>

template < class T, int s>
class A{
  public:
  T a;
  int f(int i, T ii);
};

template < class T,int s>
int  A<T,s>::f(int i, T ii){ T iii; iii = ii+s; return iii;}

A<int,10> aobj;

int main(){
if ( aobj.f(10,12)==22) { printf("ok\n");} else {printf("ng\n");}
}
