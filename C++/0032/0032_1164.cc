#include <stdio.h>

template < class T,int s>
class A{
public:
   T a;
   A(){a =5;}
};


int A<int,1>::*mp = & A<int,1>::a;
int main(){
A<int,1> aobj;

if ( aobj.*mp == 5){ printf("ok\n");} else{ printf("ng\n");}

}
