#include <stdio.h>

template < class T1, class T2>
class A{
public:
  T1 i;
  A(){  i=1 ;}
  A(T1 i){ this->i=i; }

  A<T1,T2> operator+(A<T1,T2>&ao){

      return A<T1,T2>(i+ao.i); }
  
};



int main(){


 A<int,int> aobj;
 aobj.i=9;

 A<int,int> aobj2;

 A<int,int> aobj3;

 aobj3 = aobj + aobj2;

if (aobj3.i == 10)
{ printf("ok\n");} else {printf("ng\n");};

}
