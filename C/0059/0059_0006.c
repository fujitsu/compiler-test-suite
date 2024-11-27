
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>
#define NUM 10000

int main()
{
  int    i;
  for (i=1; i <= NUM; i++) {
    unsigned char buf[i];
    if (i!=sizeof(buf))
      printf("err i(%d)=: %d\n",i,sizeof(buf));
  }
  printf("End\n");
  return 0;
}
