
#include<stdio.h>
#include<stdlib.h>
#include <stdbool.h>
#include <complex.h>

#define NUM 10000000

size_t getN(int n)
{
	unsigned char buf[n];
	return sizeof(buf);
}

int main()
{
int    i;
for (i=1; i <= NUM; i++)
{
  if (getN(i)!=i) {
    printf("err %d\n",i);
    exit(0);
  }
}

printf("ok\n");
return 0;
}
