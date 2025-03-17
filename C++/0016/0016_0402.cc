#include <stdlib.h>
#include <new>
class A {
 public:
 void * operator new(size_t i){ 
  if (i==10)
  return 0;
  else
  return 0;
 }
}obj;
#include <stdio.h>
int main(){
  obj.operator new(10);

  puts("ok");
}
