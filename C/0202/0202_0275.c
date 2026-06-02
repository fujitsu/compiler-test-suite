
#include <stdio.h>
#include <omp.h>

#define LEN 5

int main()
{
  int i, a[10],length=LEN;

#if OK
  #pragma omp parallel  num_threads((unsigned)length)
#else
  #pragma omp parallel for num_threads(length)
#endif
  for ( i=0 ; i<10 ; i++) {
    a[i] = i;
  }

  if (a[length] == length) {
    printf("",a[length]);
  } else {
    printf("",a[length]);
  }
  return 0;
}
