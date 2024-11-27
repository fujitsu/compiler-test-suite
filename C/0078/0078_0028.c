#include <stdio.h>
#include <limits.h>
#include <stdlib.h>

#if !defined(__hal)
#define __int32 int
#endif

#ifndef LLONG_MAX
#define LLONG_MAX (9223372036854775807LL)
#endif
#ifndef LLONG_MIN
#define LLONG_MIN (-9223372036854775807LL-1LL)
#endif

#define INT32_MIN (-2147483647-1)
#define INT32_MAX (2147483647)

long long mod(long long i)
{
   return i % (2LL<<33);
}

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
 
long long ans[] = {
  0LL,
 -17179869183LL ,
 -17179869182LL ,
 -17179869181LL ,
 -2147483649LL ,
 -2147483648LL ,
 -2147483647LL ,
 -10LL ,
 -1LL ,
  0LL ,
  1LL ,
  9LL ,
  10LL ,
  2147483646LL ,
  2147483647LL ,
  2147483648LL ,
  17179869180LL ,
  17179869181LL ,
  17179869182LL ,
  17179869183LL 
};
int main()
{

   long long x;
   long long y;
   int i;

   for( i = 0;i<20;i++ ) {
     x = data[i];
     
     y = ans[i];
     if( y != mod(x) ) {
	fprintf(stderr," NG %lld,%lld,%lld \n",mod(x),y);
     }
   } 
   puts(" PASS ");
}
