
#include<stdio.h>
static int (*foo) (const char* fmt, ...) =  0 ;

int main(){
  foo = printf;
  foo("OK\n");
  printf("OK\n");

  return 0;
}
