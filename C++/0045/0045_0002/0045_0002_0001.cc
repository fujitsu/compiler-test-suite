

int st=0;
void func(){
 st++;
}
void func2(){
 st++;
}
#include <stdio.h>
int main(){
 func();
 func2();
 if (st==2)
  printf("OK\n");
}
