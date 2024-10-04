#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

#define FLOAT_FLAG

void complex_print(CD arg)
{
  int len=sizeof(arg);	
  if(len == 8)
    printf("%f %f \n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf \n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf \n",creall(arg),cimagl(arg));
}

void real_print(float arg)
{
  int len=sizeof(arg);	
  if(len < 4)
    printf("%x\n",arg);
  else if(len == 4)
#ifdef 	FLOAT_FLAG
    printf("%f\n",arg);
#else
    printf("%d\n",arg);
#endif
  else if(len == 8)
#ifdef 	DOUBLE_FLAG
    printf("%lf\n",arg);
#else
    printf("%lld\n",arg);
#endif
  else if(len == 16 || len == 12)
    printf("%Lf\n",arg);
}

struct S { CD a; float b;};

void foo()
{
   struct { CD a,b; struct S s; } x[] = {[1] = {.b = 1, .s = {.b = -8}}};

   real_print(x[0].a);
   real_print(x[0].b);
   real_print(x[0].s.a);
   complex_print(x[0].s.b);
   real_print(x[1].a);
   real_print(x[1].b);
   real_print(x[1].s.a);
   complex_print(x[1].s.b);
}

int main()
{
   foo();
   return 0;	
}
