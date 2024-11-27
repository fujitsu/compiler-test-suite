#include <stdlib.h>
#include <stdio.h>
#include <math.h>

char ary[7]="abcdef";
char *ptr;
int main()
{
  char *local="TEST";
 
  printf("********** 12 TEST START **********\n");
 
  ptr="ABCDEF";
 
  printf("***** 12 - 01 < PRINT  \
abcdef ---> OK > *****\n");
  printf("***** RESULT: %s \n",ary);
 
  printf("***** 12 - 02 < PRINT ABCDEF ---> OK > *****\n");
  printf("***** RESULT: %s \n",ptr);
 
  printf("***** 12 - 03 < PRINT TEST   ---> OK > *****\n");
  printf("***** RESULT: %s \n",local);
 
  printf("********** 12 TEST  END  **********\n");
exit (0);
}
