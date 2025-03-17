#include <stdio.h>
int main()
{
  const int ci=10;
  volatile int vi=10;
  int i;


  i = ++((int&)ci);             
  if (ci == 11 && i == 11) {    
    i = ++((int&)vi);           
    if (vi == 11 && i == 11) {
      printf("ok\n");
    }
    else
      printf("ng2  vi=%d i=%d \n", vi, i);
  }
  else
    printf("ng1 ci=%d i=%d \n", ci, i);
}
