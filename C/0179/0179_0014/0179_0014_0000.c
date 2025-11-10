#include <stdio.h>

extern void ipo_pvr_sub(int **ptr, int *act);

int main(void)
{
  int act1, act2, act3;
  int *ptr1, *ptr2, *ptr3;

  act1 = 1;
  act2 = 2;
  act3 = 3;


  ipo_pvr_sub(&ptr1, &act1);
  if (*ptr1 == 1) {
    ipo_pvr_sub(&ptr2, &act2);
  } else {
    ipo_pvr_sub(&ptr2, &act1);
  }
  if (*ptr2 == 2) {
    ipo_pvr_sub(&ptr3, &act3);
  } else {
    ipo_pvr_sub(&ptr3, &act2);
  }
  if (*ptr3 == 3) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
}
