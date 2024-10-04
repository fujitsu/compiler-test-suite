#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

void dump(CD arg, int len)
{
  if(len == 8)
    printf("%f %f \n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf \n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf \n",creall(arg),cimagl(arg));
}

struct A { CD a; };
static struct A z,*y;

CD foo()
{
   extern struct A *x; x = &z; y = &z; x->a = 7893457.1793 + 12345.3456i; y->a = 7893457.1793 + 12345.3456i; x->a += ( x->a == y->a )? 10.1234 : 20.1234;
   return x->a;
}

struct A *x;

int main()
{
   CD x = foo();
   dump(x, sizeof(x));
   return 0;
}
