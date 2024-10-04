#include<stdio.h>
#include<complex.h>

#define _Bool unsigned char
#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double


void dump(_Bool arg, int len)
{
  if(len == 1)
    printf("%d\n",arg);
  else if(len == 2)
    printf("%hd\n",arg);
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



_Bool foo()
{
#if defined(__aarch64__)
   unsigned int y = 255; _Bool x = y;
#else
   unsigned int y = -1.1; _Bool x = y;
#endif
   return x;
}

int main()
{
   _Bool x = foo();
   dump(x, sizeof(x));
   return 0;
}
