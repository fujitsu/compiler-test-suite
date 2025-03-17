




#include <stdio.h>
int i10=10;
int i20=20;
int main()
{
           int  i=i10;
  volatile int  iv=i20; 
  volatile int *piv=&i;
	   int *pi;

  pi = (int*)piv;
  *pi += 5;
  if (*pi == 15 && i == 15)
    ; 
  else
    printf("ng %d\n",i);

  pi = (int*)&iv;
  *pi += 5;
 
  if (*pi == 25 && iv == 25 && pi == (int*)&iv)
    ; 
  else {
    printf("ng %d %d\n", *pi, iv);
    printf("pi=%x &iv=%x \n", pi, &iv);
  }

   printf("ok\n");

}
