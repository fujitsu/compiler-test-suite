




#include <stdio.h>
int i10=10;
int i20=20;
int main()
{
        int  i=i10;
  const int  ic=i20; 
  const int *pic=&i;
	int *pi;

  pi = (int*)pic;
  *pi += 5;
  if (*pi == 15 && i == 15)
    ; 
  else
    printf("ng %d\n",i);

  pi = (int*)&ic;
  *pi += 5;
 
  if (*pi == 25 && ic == 25)
    ; 
  else
    printf("ng %d %d\n", *pi, ic);

  

   printf("ok\n");

}
