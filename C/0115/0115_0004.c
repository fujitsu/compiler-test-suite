#include <stdio.h>
void foo(void );

int a[10];
int main()
{
  foo();
  if(a[1] == 1 && a[5] == 5 ) {
    printf("OK");
  } else {
    printf("NG");
  }
}

#pragma optimize off
void foo()
{
   int i;
   for(i=0;i<10;i++) {
     a[i] = i;
   }
}
  
