


#include <stdio.h>

int main()
{
  int  i4[10],
       *ptr;

  ptr = i4;
#pragma omp parallel
  {
#pragma omp atomic
    ptr++;
  }
  if (i4==ptr) {
    printf("NG(1): ptr = %d i4 = %d\n",ptr,i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ptr--;
  }
  if (i4!=ptr) {
    printf("NG(2): ptr = %d i4 = %d\n",ptr,i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++ptr;
  }
  if (i4==ptr) {
    printf("NG(3): ptr = %d i4 = %d\n",ptr,i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --ptr;
  }
  if (i4!=ptr) {
    printf("NG(4): ptr = %d i4 = %d\n",ptr,i4);
  }

  printf("pass\n");
  return 0;
}
