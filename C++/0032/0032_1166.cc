#include <stdio.h>
int count  =0;
template < class T,int s>
class A{
public:
   T a;
   A(){  a =5;}
   void f();
   void f(int);
};


template < class T, int s>
void A<T,s>::f(){printf("A<?,%d>'s f()\n",s);}

template < class T, int s>
void A<T,s>::f(int i){ count = a;}

void ( A<int,1>::*fp)(int) = & A<int,1>::f;

int main(){
A<int,1> aobj;
  (aobj.*fp)(1);

  if ( count ==5){ printf("ok\n");} else {printf("ng\n");}
}
