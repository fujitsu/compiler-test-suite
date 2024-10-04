
#include <stdio.h>

int main(void)
{
  int   a1, a2;
  float b1, b2;

  a1 = 1;
  b1 = 1.1;
  a2 = (int)b1;
  b2 = (float)a1;

#if defined(big_endian)
  if ((float)(a2 -b2) != 0.0) {
    printf("NG1%d\n",a2);
    return 0;
  }
#endif

  a1 = -1;
  b1 = -1.1;
  a2 = b1;
  b2 = a1;

  if ((float)(a2-b2) == 0.0)
    printf("OK\n");
  else
    printf("NG2%d\n",a2);

  return 0;
}
