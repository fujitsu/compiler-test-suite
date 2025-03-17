#include <stdio.h>
int count =0;
template < class T,int s>
class A{
public:
   T a;
   ~A();
   A();
};


template < class T, int s>
A<T,s>::A(){ count++; }


template < class T, int s>
A<T,s>::~A(){ if (count==1) { printf("ok\n");} else { printf("ng\n");}}





int main(){
A<int,2> aobj2;   

}
