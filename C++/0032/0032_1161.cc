#include <stdio.h>
int count =0;

template < class T,int s>
class A{
public:
   T a;
   A(){}
   A(T);
   ~A();
};


template < class T, int s>
A<T,s>::A(T i){
   count = count+s; }

template < class T, int s>
A<T,s>::~A(){
   if ( s == 1) return;
   if (s == 2 ) { if (count == 3) { printf("ok\n");} else{ printf("ng\n");}
   }
  }





int main(){
A<int,1> aobj(1);  
A<int,2> aobj2(2);  
}
