#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double



void real_print(unsigned long long int arg)
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

struct S { unsigned long long int a,b;};

void foo()
{
   struct { unsigned long long int a,b; struct S s;} x[] = {[1] = {.a = 1, .s = {.a = -8}}};
   real_print(x[0].a);
   real_print(x[0].b);
   real_print(x[0].s.a);
   real_print(x[0].s.b);
   real_print(x[1].a);
   real_print(x[1].b);
   real_print(x[1].s.a);
   real_print(x[1].s.b);
}

int main()
{
   foo();
   return 0;	
}
