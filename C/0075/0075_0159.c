#include <stdio.h>
int set_size(int inx, int *size);

#if defined(INT64)
#define int __int32
#endif

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
#define LITTLE_ENDIAN
#endif
int main() 
{
  int size, val ;
  val = set_size(19, &size) ;

#if defined(LITTLE_ENDIAN)
  if (val == 79 && size == 0x4f4e4d4c)
#else
  if (val == 79 && size == 0x4c4d4e4f)
#endif
    printf("OK\n");
  else
    printf("NG %d,%x\n", val, size);
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




