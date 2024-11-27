#include <stdio.h>
#include <stdlib.h>

long *array[1000] ;
long  target[1000];

void test(const long *p)
{
  int i;
  for(i=0;i<1000;i++) {
     array[i] = &p[1];
  }
}

int main()
{
  long *p;
  test(&target[0]);

  p = &target[0];
  {
    int i;
    for(i=0;i<1000;i++) {
      if (array[i] != &p[1]) {
	puts("NG");
	abort();
      }
    }
  }
  puts("OK");
  return 0;
}
