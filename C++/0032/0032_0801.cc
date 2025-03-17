#include <stdio.h>
class A { public: int a;}aa;

template < class T > 
A f(T a)
{
  
  printf("ok\n");
  return aa;
}

char c;
int main(){
  f(c);
}

A f(char a){
  
 printf("ok\n");
 return aa;
}


