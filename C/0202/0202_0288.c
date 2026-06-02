

#include <stdio.h>
#include <math.h>
#include <errno.h>
int main()
{
  extern int *dsit0001;
  {
    double  bsdl0101;
    bsdl0101 = acos(1.5);
  }

  printf("OK\n");

}

void matherr(struct exception *dsit0001)
{
  printf("OK\n");
}

void __set_error(struct exception *dsit0001)
{
#if  __STDC_VERSION__ == 199901L 
  printf("OK\n");
#else
  printf("NG\n");
#endif
}
