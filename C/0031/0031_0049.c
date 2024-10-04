#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double



void dump(unsigned long long int *p, int array_length)
{
  int array_index=array_length/sizeof(*p);
  int len = sizeof(*p);

  while (array_index--) {
    if(len == 1)
      printf("%d\n",*p++);
    else if(len == 2)
      printf("%hd\n",*p++);
    else if(len == 4)
  #ifdef 	FLOAT_FLAG
      printf("%f\n",*p++);
  #else
      printf("%d\n",*p++);
  #endif
    else if(len == 8)
  #ifdef 	DOUBLE_FLAG
      printf("%lf\n",*p++);
  #else
      printf("%lld\n",*p++);
  #endif
    else if(len == 16 || len == 12)
      printf("%Lf\n",*p++);
    }
  printf("\n");
}

unsigned long long int foo()
{
   unsigned long long int x[5] = { 1,2,3,4,5, [0]=6,7,8,9,10 };
   dump(x, sizeof(x));
   unsigned long long int y[10] = { 1,2,3,4,5, [5]=6,7,8,9,10 };
   dump(y, sizeof(y));
   unsigned long long int z[15] = { 1,2,3,4,5, [10]=6,7,8,9,10 };
   dump(z, sizeof(z));
   return z[1];
}

int main()
{
   volatile unsigned long long int x = foo();
   return 0;
}
