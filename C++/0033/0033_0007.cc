#include <stdio.h>
 unsigned long int mask,mask_2, i;
int main( ) {
#pragma omp parallel
  {
    mask = 0x80000000;
    mask >>= 1;
    mask_2 = 0x40000000;
    mask_2 <<= 1;
  }
 if (mask == 0x40000000 && mask_2 == 0x80000000)
   printf("ok\n");
 else
   printf("ng\n");
}
