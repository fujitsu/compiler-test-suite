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

void dump(long long int arg, int len)
{
  if(len == 8)
    printf("%f %f \n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf \n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf \n",creall(arg),cimagl(arg));
}

long long int g(CD *p) { return 10; }

long long int foo()
{
   CD y = 10.1793 + 12345.3456i; CD *p = &y;
   return g(p);
}

int main()
{
   long long int x = foo();
   dump(x, sizeof(x));
}
