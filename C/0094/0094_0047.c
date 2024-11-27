#include  <stdio.h>
char  cfunc();
short sfunc();
long  lfunc();
float ffunc();
double dfunc();

char cfunc(a,b,c,d,e)
char   a;
short  b;
long   c;
float  d;
double e;
{
  double ans;
  ans = a+b+c+d+e;
  if ((long)ans > 255 ) return (char)255;
  else if ((long)ans < -256) return (char)-256;
  else return (char)ans+(char)1;
}

short sfunc(a,b,c,d,e)
char   a;
short  b;
long   c;
float  d;
double e;
{
  double ans;
  ans = a+b+c+d+e;
  if ((long)ans > 32767 ) return (short)32767;
  else if ((long)ans < -32768) return (short)-32768;
  else return (short)ans+(short)1.0;
}

long lfunc(a,b,c,d,e)
char   a;
short  b;
long   c;
float  d;
double e;
{
  double ans;
  ans = a+b+c+d+e;
  return (long)(ans+1.0);
}

float ffunc(a,b,c,d,e)
char   a;
short  b;
long   c;
float  d;
double e;
{
  double ans;
  ans = a+b+c+d+e;
  return (float)ans+(float)1;
}

double dfunc(a,b,c,d,e)
char   a;
short  b;
long   c;
float  d;
double e;
{
  double ans;
  ans = a+b+c+d+e;
  return ans+1;
}
int main()
{
  if (
    lfunc(cfunc(cfunc(1,1,1,1.,1.),
		sfunc(2,2,2,2.,2.),
		lfunc(3,3,3,3.,3.),
		ffunc(4,4,4,4.,4.),
		dfunc(5,5,5,5.,5.)),
	  sfunc(cfunc(1,1,1,1.,1.), 
		sfunc(2,2,2,2.,2.),
		lfunc(3,3,3,3.,3.),
		ffunc(4,4,4,4.,4.),
		dfunc(5,5,5,5.,5.)),
	  lfunc(cfunc(1,1,1,1.,1.), 
		sfunc(2,2,2,2.,2.),
		lfunc(3,3,3,3.,3.),
		ffunc(4,4,4,4.,4.),
		dfunc(5,5,5,5.,5.)),
	  ffunc(cfunc(1,1,1,1.,1.), 
		sfunc(2,2,2,2.,2.),
		lfunc(3,3,3,3.,3.),
		ffunc(4,4,4,4.,4.),
		dfunc(5,5,5,5.,5.)),
	  dfunc(cfunc(1,1,1,1.,1.), 
		sfunc(2,2,2,2.,2.),
		lfunc(3,3,3,3.,3.),
		ffunc(4,4,4,4.,4.),
		dfunc(5,5,5,5.,5.))) ==
    sfunc(cfunc(cfunc(1,2,3,4.,5.),
		sfunc(2,3,4,5.,1.),
		lfunc(3,4,5,1.,2.),
		ffunc(4,5,1,2.,3.),
		dfunc(5,1,2,3.,4.)),
          sfunc(cfunc(1,2,3,4.,5.),
		sfunc(2,3,4,5.,1.),
		lfunc(3,4,5,1.,2.),
		ffunc(4,5,1,2.,3.),
		dfunc(5,1,2,3.,4.)),
          lfunc(cfunc(1,2,3,4.,5.),
		sfunc(2,3,4,5.,1.),
		lfunc(3,4,5,1.,2.),
		ffunc(4,5,1,2.,3.),
		dfunc(5,1,2,3.,4.)),
          ffunc(cfunc(1,2,3,4.,5.),
		sfunc(2,3,4,5.,1.),
		lfunc(3,4,5,1.,2.),
		ffunc(4,5,1,2.,3.),
		dfunc(5,1,2,3.,4.)),
          dfunc(cfunc(1,2,3,4.,5.),
		sfunc(2,3,4,5.,1.),
		lfunc(3,4,5,1.,2.),
		ffunc(4,5,1,2.,3.),
		dfunc(5,1,2,3.,4.))))
    printf("cmdth007  OK\n");
  else printf("cmdth007  NG\n");
}
