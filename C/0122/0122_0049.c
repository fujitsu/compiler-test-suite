#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int set_size(int inx, int *size);

int main() 
{
  int size, val ;
  val = set_size(19, &size) ;
        printf("ans = %x, correct ans. = 4c4d4e4f val = %x\n",
	       size, 2, val ) ;
        printf(" *** if ANS equal CORRECT ANS ,then OK else NG ***\n");
exit (0);
}
int
set_size(inx, size)
  int inx, *size;
{
  int i,li ;
  union ac 
    {
      struct da 
	{
	  int dummy[10];
	  int a[10] ;
	}
      darea;
      unsigned char c[80] ;
    }
  uac;
  uac.darea.a[inx-10] = 0 ;
  for( i=0; i<80; i++) 
    {
      uac.c[i] = i ;
      if(i == 79)  li = uac.darea.a[inx-10] ;
    }
  *size = li ;
  return uac.c[79] ;
}

