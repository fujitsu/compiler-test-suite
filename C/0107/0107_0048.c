#include <stdio.h>
#include <stdlib.h>

int *array[1000] ;
int  target;

void test(void)
{
  int i;
  for(i=0;i<1000;i++) {
     array[i] = &target;
  }
}

int main()
{
  test();

  {
    int i;
    for(i=0;i<1000;i++) {
      if (array[i] != &target) {
	puts("NG");
	abort();
      }
    }
  }
  puts("OK");
  return 0;
}
