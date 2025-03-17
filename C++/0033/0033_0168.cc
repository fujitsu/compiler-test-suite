#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
  int count = 0;

  char a = 1;
  static short b = a + 1;
  unsigned char au = { 1, };
  static unsigned short bu = { (unsigned short)(au + 1), };
  signed char as ( 1 );
  static signed short bs ( as + 1 );
  int num = 3;

#pragma omp parallel
#pragma omp critical
  if( b == 2 ) count++; else printf("ng b: %d\n", b);

#pragma omp parallel
#pragma omp critical
  if( bu == 2 ) count++; else printf("ng bu: %d\n", bu);

#pragma omp parallel
#pragma omp critical
  if( bs == 2 ) count++; else printf("ng bs: %d\n", bs);

#ifdef _OPENMP
  num = omp_get_max_threads() * 3;
#endif
  if( count == num ) printf("ok\n");
}

