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


void print(long long int i,long long int l)
{
  printf(" %llx = %llx \n",i,l);
}
int main()
{
    int i,j;
    long long int  x,y,z;

    for(i=0;i<20;i++) {
      x = data[i];
      print((long long )(int )x,x);
    }
}
