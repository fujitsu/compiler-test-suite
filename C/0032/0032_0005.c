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
   char *y = "abc", *x[] = { [1] = y,"a", [4] = y};
   printf("x[0] = %x\n",x[0]);
   printf("x[1] = %s\n",x[1]);
   printf("x[2] = %s\n",x[2]);
   printf("x[3] = %x\n",x[3]);
   printf("x[4] = %s\n",x[4]);
}

int main()
{
   foo();
}
