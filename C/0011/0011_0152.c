#include  <stdio.h>

int   a       ;
int  *p=&a+1  ;
char *q="abc" ;
int main()
{
  printf("********** TEST START **********\n");

  if (p == &a+1 && *q == 'a')
      printf("***** O   K *****\n");
  else
      {
      printf("***** N   G *****\n");
      printf("  p=%p,&a+1=%p,q=%s,*q=%c \n",p,&a+1,q,*q) ;
      }

  printf("**********  TEST  END  **********\n");

}
