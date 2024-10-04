#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

void dump(CF arg, int len)
{
  if(len == 8)
    printf("%f %f \n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf \n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf \n",creall(arg),cimagl(arg));
}

union { int y;  CF x; } x, *p;

CF foo()
{
   p = &x; p->x = 7893457.1793 + 12345.3456i; if(p->x ==  100.1234 + 100.1234i)p->x += p->x;
   return p->x;
}

int main()
{
   CF x = foo();
   dump(x, sizeof(x));
   return 0;	
}
