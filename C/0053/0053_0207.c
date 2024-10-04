#include<stdio.h>
unsigned int f01(double);
signed int   f02(float);
int          f03(long double);
int main()
{
  printf("***** \n");
  {
    double a = 10.;
    unsigned int b;
    b = f01(a);

    if (b == 10u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    float a = 1.0f;
    signed int b;
    b = f02(a);

    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
        printf("***** \n");
  }
  printf("***** \n");
}

unsigned int f01(double a)      { return((unsigned int)a); }

signed int   f02(float a)       { return((signed int)a);   }
