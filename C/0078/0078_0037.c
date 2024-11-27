#include <stdio.h>
#include <limits.h>

#define INT32_MIN (-2147483647-1)
#define INT32_MAX (2147483647)

#ifndef LLONG_MAX
#define LLONG_MAX (9223372036854775807LL)
#endif
#ifndef LLONG_MIN
#define LLONG_MIN (-9223372036854775807LL-1LL)
#endif

long long data[] = {
  LLONG_MIN,
  LLONG_MIN+1,
  LLONG_MIN+2,
  LLONG_MIN+3,
  INT32_MIN-1LL,
  INT32_MIN,
  INT32_MIN+1,
  -10,
  -1,
  0,
  1,
  9,
  10,
  INT32_MAX-1,
  INT32_MAX,
  INT32_MAX+1LL,
  LLONG_MAX-3,
  LLONG_MAX-2,
  LLONG_MAX-1,
  LLONG_MAX
  };


void print( long long int i,long long int j,long long int x,long long int y)
{
  printf(" %llx & %llx = %llx , %llx \n",i,j,x,y);
}

int stset()
{
    int i,j;
    long long int  x,y,z;

    for(i=0;i<20;i++) {
      for(j=0;j<20;j++) {
	x = data[i];
	y = data[j];
	z = x & y;
	print(i,j, x & y , z);
      }
    }
}

int utest()
{
    int i,j;
    unsigned long long int  x,y,z;

    for(i=0;i<20;i++) {
      for(j=0;j<20;j++) {
	x = data[i];
	y = data[j];
	z = x & y;
	print(i,j, x & y , z);
      }
    }
}
int main()
{
    stset();
    utest();
}
