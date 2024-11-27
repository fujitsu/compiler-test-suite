#include <stdio.h>
#include <stdlib.h>

long *array[1000] ;
long  target[1000];

void test(void)
{
  int i;
  for(i=0;i<1000;i++) {
     array[i] = &target[1];
  }
}

int main()
{
  test();

  {
    int i;
    for(i=0;i<1000;i++) {
      if (array[i] != &target[1]) {
	puts("NG");
	abort();
      }
    }
  }
  puts("OK");
  return 0;
}
