
#include <stdio.h>
#include <omp.h>

#define LEN 5

int main()
{
  int i, a[10],length=LEN;

#if NG
  #pragma omp parallel for num_threads(-4)
#else
  #pragma omp parallel  num_threads((unsigned)4)
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
