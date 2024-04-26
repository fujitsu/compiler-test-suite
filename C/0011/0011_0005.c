#include <stdio.h>

int main()
{
  int          x,flag = 0 ;
  unsigned int a,b,c,d,e,f,g,h ;

  printf("********** TEST START **********\n");

  a = 1 ;
  b = 4 ;
  c = a | 0x10 ;
  d = a | b    ;
  e = a & 0xff ;
  f = a & b    ;
  g = a ^ 0xff ;
  h = a ^ b    ;

  if (c != 0x11)
      {
      flag = 1 ;
      printf("***** 02 ***** N   G ***** %x\n",c );
      }
  if (d != 5)
      {
      flag = 1 ;
      printf("***** 03 ***** N   G ***** %x\n",d );
      }
  if (e != 1)
      {
      flag = 1 ;
      printf("***** 04 ***** N   G ***** %x\n",e );
      }
  if (f != 0)
      {
      flag = 1 ;
      printf("***** 05 ***** N   G ***** %x\n",f );
      }
  if (g != 0xfe)
      {
      flag = 1 ;
      printf("***** 06 ***** N   G ***** %x\n",g );
      }
  if (h != 5)
      {
      flag = 1 ;
      printf("***** 07 ***** N   G ***** %x\n",h );
      }
  if (flag == 0)
      printf("***** O   K *****\n");

  printf("********** TEST END **********\n");


}
