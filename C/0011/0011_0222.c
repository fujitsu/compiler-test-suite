#include  <stdio.h>

   static void staticfunction1();
int main()
{
          int   a,b,c;

  printf("********** TEST START **********\n");
                a=5;
                b=7;
                c=a*b;

  if ( c == 35)
      printf("***** 01 ***** O   K *****\n");
  else
      printf("***** 01 ***** N   G *****\n");
  staticfunction1();
}
  static void staticfunction1()
{
          int   x,y,z;
                x=35;
                y=7;
                z=x/y;
  if (z == 5)
      printf("***** 02 ***** O   K *****\n");
  else
      printf("***** 02 ***** N   G *****\n");

  printf("********** TEST  END **********\n");

}
