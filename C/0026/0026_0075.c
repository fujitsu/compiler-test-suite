#include<stdio.h>
#include<complex.h>

#if __GNUC__
#define CF __complex__ float
#define CD __complex__ double
#define CL __complex__ long double
#else
#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double
#endif 

#define I (0.0F+1.0iF)

void dump(unsigned int arg, int len)
{
  if(len == 8)
    printf("%f %f \n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf \n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf \n",creall(arg),cimagl(arg));
}

unsigned int g(CD *x) { CD y[1]; *y = *x; y[0] = 10.1234 + 10.1234i; return y[0]; }

unsigned int foo()
{
   CD x[1] = {7893457.1793 + 12345.3456i};
   return g(x);
}

int main()
{
   unsigned int x = foo();
   dump(x, sizeof(x));
}
