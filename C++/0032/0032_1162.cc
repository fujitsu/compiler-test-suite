#include <stdio.h>

int count = 0;

template < class T,int s>
class A{
public:
   T a;
   void f(T);

};


template < class T, int s>
void A<T,s>::f(T i){ count += 2;}

template<> void A<int,1>::f(int i){  count +=3;}

A<int,1> aobj;  
A<int,2> aobj2;  

int main(){
 aobj.f(1);
 aobj2.f(1);

 if ( count == 5){ printf("ok\n");} else{ printf("ng\n");}
}




