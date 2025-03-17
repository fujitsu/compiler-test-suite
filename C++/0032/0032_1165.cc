#include <stdio.h>

template < class T,int s>
class A{
public:
   T a;
   A(){ a =5;}
   int f();
};


template < class T, int s>
int A<T,s>::f(){ return a;}


int ( A<int,1>::*fp)() = & A<int,1>::f;

int main(){
A<int,1> aobj;
  if ( (aobj.*fp)() == 5){ printf("ok\n");} else{ 
     printf("ng (aobj.*fp)() =%d\n",(aobj.*fp)());}

}
