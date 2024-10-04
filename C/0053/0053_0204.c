#include<stdio.h>
int main()
{
  printf("***** \n");

#ifdef nollint
        printf("***** \n");
#else
  {
    int a = 10;
    long b = 20l;
    long long c;
    long long f01(int,long);
    c = f01(a,b);

    if (c == 10l)
        printf("***** \n");
      else
        printf("***** \n");
  }
#endif
  {
    float a = 1.0f;
    int b = 1;
    float c;
    float f02(float,int);
    c = f02(a,b);

#ifdef IEEE
    if (-1e-7 <= c - 1.0f && c - 1.0f <= 1e-7)
#else
    if (-1e-6 <= c - 1.0f && c - 1.0f <= 1e-6)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    float a = 1.0f;
    int b = 1;
    char c = 1;
    double d;
    double f03(float,int,char);
    d = f03(a,b,c);

#ifdef IEEE
    if (-1e-7 <= d - 1.0  && d - 1.0  <= 1e-7)
#else
    if (-1e-6 <= d - 1.0  && d - 1.0  <= 1e-6)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short a = 1;
    int b = 2;
    long c = 3;
    long double d;
    long double f04(short,int,long);
    d = f04(a,b,c);

#ifdef IEEE
    if (-1e-19 <= d - 6.0l && d - 6.0l <= 1e-19)
#else
    if (-1e-32 <= d - 6.0l && d - 6.0l <= 1e-32)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("***** \n");
}

#ifndef nollint
long long   f01(int a,  long b)       {return(b-a);               }
#endif

float       f02(float a,int b)        {return(a*b);               }

double      f03(float a,int b,char c) {return(a*b*c);             }

long double f04(short a,int b,long c) {return((long double)a+b+c);}
