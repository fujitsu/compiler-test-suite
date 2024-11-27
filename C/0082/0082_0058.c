#include <stdio.h>
#include <math.h>
#include <sys/time.h>

#if defined(__linux)
typedef long hrtime_t;

hrtime_t gethrtime()
{
  struct timeval  tv;
  struct timezone tz;
  hrtime_t ret;
  (void )gettimeofday(&tv, &tz);
  ret = tv.tv_usec;
  return ret*1000;
}
#endif

typedef float test_t ;

const test_t difference = 1e-6;
const test_t START_DATA = -3.14;
const test_t END_DATA   =  3.14;

#if __STDC_VERSION__ == 199901L
test_t (*x)(test_t) = sinf;
#else

float sinf(float f)
{
  return sin(f);
}

test_t (*x)(test_t) = sinf;
#endif

void check(test_t r[],int cnt,test_t start_data,test_t step)
{
  int    i;
  test_t     ind;
  test_t     r1,r2;
  ind = start_data;
  for( i=0;i<cnt;i++ ) {
    r1 =  r[i];
    r2 =  x(ind);
    if( fabs((r1-r2)/r2) > difference ) {
       printf("%g != %g\n",r1,r2);
    }
    ind=ind+step;
  }
}

const int cnt = 1000000;
int main()
{
  test_t        r[1000000];
  int       i;
  test_t    ind,step;
  hrtime_t  start, end;
  ind = START_DATA;
  step = (END_DATA-START_DATA)/cnt;
  start = gethrtime();
  for(i=0;i<cnt;i++) {
    r[i] = sinf(ind);
    ind=ind+step;
  }
  end = gethrtime();
  start = (end - start) / cnt;
#ifdef PRINT_TIME
  printf("sinf (%d times) = %lld nsec\n",cnt,start);
  if ( start == 0 ) {
    puts("NG");
  }
#endif
  check(r,cnt,START_DATA,step);
  puts("PASS");
}
