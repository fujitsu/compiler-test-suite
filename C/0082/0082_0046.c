#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <math.h>
#include <limits.h>

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

unsigned int cnt    =  10000000;
double   start_data = -1000000.0;

double (*pfloor)(double) = &floor;

int main()
{
#if defined(__sparc)
	unsigned int	i;
	hrtime_t start, end;
        double data,step;
        double x,y;

	double *p = malloc(sizeof(double)*cnt);

        data  = start_data;
        step =  2000000.0/cnt;

	start = gethrtime();

	for (i = 0; i < cnt; i++) {
                x = floor(data);
	        y = pfloor(data);
		if( x != y )  {
                   printf("%g %g\n",data,x);
                   printf("%g %g\n",data,y);
                   abort();
                }
		*p++ = x;
		data+=step;
	}

	end = gethrtime();

#if PRINT_TIME
	printf("floor (%'10d times) = %'10lld msec\n",
		cnt, (end - start) * MILLISEC / NANOSEC );
#endif
#endif
        puts("PASS");

	return 0;
}
