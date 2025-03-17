template <class T> void func(T y){
   int i=0;
   i=i+y;
   i++;
}
#include <stdio.h>
int main(){
  func(10);
  func(1.0);

  puts("ok");
}
