class A {}obj;
template <class T>
int operator +(A &a , T i){
 return 0;
}
#include <stdio.h>
int main(){
  int j=0;
  operator +(obj,j);

  puts("ok");
}
