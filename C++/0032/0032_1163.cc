#include <stdio.h>

int count = 0;
template < class T,int s>
class A{
public:
   T a;
   ~A();
   A(T);

};

template < class T, int s>
A<T,s>::~A(){printf("template Dtor\n");}

template < class T, int s>
A<T,s>::A(T i){printf("template Ctor\n");}

template<> A<int,1>::A(int i){count++;}

template<> A<int,1>::~A(){ 
if (count ==1 ){ printf("ok\n");} else{ printf("ng\n");}}

int main(){
A<int,1> aobj(1);  

}
