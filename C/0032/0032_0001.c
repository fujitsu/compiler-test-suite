#include<stdio.h>

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

void dump(void *p, int len)
{
  unsigned char *q = p;
  while (len--) {
    printf("%02x ", *q++);
  }
  printf("\n");
}



void foo()
{
   char x[] = "abc";
   printf("%s\n",x);
}

int main()
{
   foo();
}
