#include <stdio.h>
int count =0;

template < class T,int s>
class A{
public:
   T a;
   A();
};


template < class T, int s>
A<T,s>::A(){ count = count +s; }



A<int,1> aobj;  
A<int,2> aobj2;  
A<char,3> aobj3;  
A<double,4> aobj4;  

int main(){

 if (count == 10){ printf("ok\n");} else {printf("ng\n");}
}
