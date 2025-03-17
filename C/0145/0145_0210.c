




#include <stdio.h>

int main()
{
  int i4=100;
#pragma omp parallel
  {
#pragma omp critical
    {
      i4=(i4+i4)/i4;
    }
  }
  if (i4 != 2) printf("NG: i4 = %d\n",i4);
  printf("pass\n");
}
