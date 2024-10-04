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

CF g() { return 7893457.1793 + 12345.3456i; }

CF foo()
{
   CF x; if(g() == 100.1234 + 100.1234i)x = 100.1234 + 100.1234i; else printf("ok\n"); x = 1.0 + 1.0i;
   return x;
}

int main()
{
   CF x = foo();
   dump(x, sizeof(x));
   return 0;	
}
