
#include <stdarg.h>
#include <stdio.h>
void sub0(int aa, ... )
{
  va_list xx;
  va_start(xx,aa);
#if defined(__aarch64__)
  vprintf("%d %ld %f %d %ld %f \n",xx);
#else
  vprintf("%d %ld %f %d %ld %f \n",(struct xxx *)xx);
#endif
#if !defined(__x86_64__)
  va_arg(xx, int);va_arg(xx, long);va_arg(xx, double);
  va_arg(xx, int);va_arg(xx, long);va_arg(xx, double);
#endif
#if defined(__aarch64__)
  vprintf("%d %ld %f %d %ld %f \n",xx);
#else
  vprintf("%d %ld %f %d %ld %f \n",(struct xxx *)xx);
#endif
#if !defined(__x86_64__)
  va_arg(xx, int);va_arg(xx, long);va_arg(xx, double);
  va_arg(xx, int);va_arg(xx, long);va_arg(xx, double);
#endif
#if defined(__aarch64__)
  vprintf("%d %ld %f %d %ld %f \n",xx);
#else
  vprintf("%d %ld %f %d %ld %f \n",(struct xxx *)xx);
#endif
}
int main(void)
{
  int ii=16;
  int    i1,i2,i3,i4,i5,i6;
  long   r41,r42,r43,r44,r45,r46;
  double r81,r82,r83,r84,r85,r86;

  i1=1,i2=2,i3=3,i4=4,i5=5,i6=6;
  r41=1,r42=2,r43=3,r44=4,r45=5,r46=6;
  r81=1,r82=2,r83=3,r84=4,r85=5,r86=6;

  printf("## va_copy test start ## \n");

  sub0(ii,i1,r41,r81,
       i2,r42,r82,
       i3,r43,r83,
       i4,r44,r84,
       i5,r45,r85,
       i6,r46,r86);
  printf("## va_copy test end   ## \n");
}
