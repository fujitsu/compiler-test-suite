#include  <stdio.h>

int main()
{
  static int   a       ;
  static int  *p=&a+1  ;
  static char *q="abc" ;


  printf("********** TEST START **********\n");

  if (p == &a+1 && *q == 'a')
      printf("***** O   K *****\n");
  else
      {
      printf("***** N   G *****\n");
      printf("  p=%p,&a+1=%p,q=%s,*q=%c \n",p,&a+1,q,*q) ;
      }

  printf("********** TEST  END **********\n");

}
