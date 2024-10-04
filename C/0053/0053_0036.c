#include<stdio.h>
int main()
{
  int a;
  int *p;
  int arry[5] = { 1, 2, 3, 4, 5 };
  int func();

  p = &a;

  printf("***  ** MK3 TEST FOR X_CHGTRE ** START *** \n");


  a = func && p;
  if( a != 0 )
    printf("*** -01 *** O   K *** \n");
  else
    printf("*** -01 *** ERROR *** \n");


  a = func && arry;
  if( a != 0 )
    printf("*** -02 *** O   K *** \n");
  else
    printf("*** -02 *** ERROR *** \n");

  printf("***  ** MK3 TEST FOR X_CHGTRE ** ENDED *** \n");
}
int func()
{ }
