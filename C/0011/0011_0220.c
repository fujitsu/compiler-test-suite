#include  <stdio.h>
 int func1(int x, int y);

int 
main (void)
{
          int   num1,num2,num3;

  printf("********** TEST START **********\n");
          num1=25000;
         num2=-3000;
         num3=func1(num1,num2);

  if ( num3 == 22000)
      printf("***** 01 ***** O   K *****\n");
  else
      printf("***** 01 ***** N   G *****\n");

  printf("********** TEST  END **********\n");
}
  int 
func1 (int x, int y)
{
     int   z;
     z=x+y;
 return(z);
}
