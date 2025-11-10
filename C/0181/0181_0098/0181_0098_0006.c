
#include <stdio.h>
static
long long sub1()
{
  return((long long)-1.0);
}

static
long long sub2()
{
  return((long long)-1.0);
}

static
void array_func(a)
     int a[20];
{
  int i;
  for (i=0;i<20;i++){
    a[i]=i;
  }
}

int lto_sub_7()
{
  long long d1, d2, dd;
  int    compare;
  int    a[20],t;

  d1 = sub1();
  d2 = sub2();
  dd = 2.0;
  t  = d2;
  array_func(a);

  if (d1 < d2) {
    compare = 1;
  }
  else if (d1 > d2) {
    compare = -1;
  }
  else if (d1 == d2) {
    compare = 0;
  }
  else {
    compare = -1;
  }

  if (compare < 0) {
    t = t + a[0];
    goto XX;
  }

  dd = dd + d1 + d2;

 XX:

  dd = dd + d1 + d2;

  if( sizeof(long) == 4 ) {     
#if defined(i386)
    int up   = dd >> 32;
    int down =  (int )dd;
    printf("%x%x %d\n",up,down,t);
#else
    printf("%x%x %d\n",dd,t);
#endif
  }
  else {
    printf("%llx %d\n",dd,t);
  }
}
