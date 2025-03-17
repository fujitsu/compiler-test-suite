#include <stdio.h>

class B { public: int a[10];}bobj; 


template <class T>
class A {
 public:
 typedef B xx;
 int  f(T);

};
template <class T>
int A<T>::f(T){ xx obj; return sizeof(xx);}

A<int> ac,*acp=&ac;;

int main(){
 
 if( (acp->f(1))==40){printf("ok\n");}else {printf("ok\n");}

}




