void func(){
int i=0;
 i++;
 i--; 
 i=0;
 i-=0;
}
#include <stdio.h>
int main(){
  func();

  puts("ok");
}
