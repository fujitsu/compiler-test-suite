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

struct A { CF a[3], b;};

CF foo()
{
   struct A x[] = { [0].a = { 1 }, [0].b = 4 };
   return x[0].b;
}

int main()
{
   CF x = foo();
   dump(x, sizeof(x));
   return 0;
}
