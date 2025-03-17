#include <stdlib.h>
#include <stdio.h>
#include <math.h>
long long f01(int,long);
float f02(float,int);
double f03(float,int,char);
long double f04(short,int,long);
int main()
{
  printf("***** CATEGORY *** TEST *** START *****\n");
 
  {
    int a = 10;
    long b = 20l;
    long long c;
    c = f01(a,b);
 
    if (c == 10l)
        printf("***** CATEGORY - 01 ***** OK *****\n");
      else
        printf("***** CATEGORY - 01 ***** NG *****\n");
  }
  {
    float a = 1.0f;
    int b = 1;
    float c;
    c = f02(a,b);
 
    if (-1e-6 <= c - 1.0f && c - 1.0f <= 1e-6)
        printf("***** CATEGORY - 02 ***** OK *****\n");
      else
        printf("***** CATEGORY - 02 ***** NG *****\n");
  }
  {
    float a = 1.0f;
    int b = 1;
    char c = 1;
    double d;
    d = f03(a,b,c);
 
    if (-1e-6 <= d - 1.0  && d - 1.0  <= 1e-6)
        printf("***** CATEGORY - 03 ***** OK *****\n");
      else
        printf("***** CATEGORY - 03 ***** NG *****\n");
  }
  {
    short a = 1;
    int b = 2;
    long c = 3;
    long double d;
    d = f04(a,b,c);
 
    if (-1e-32 <= d - 6.0l && d - 6.0l <= 1e-32)
        printf("***** CATEGORY - 04 ***** OK *****\n");
      else
        printf("***** CATEGORY - 04 ***** NG *****\n");
  }
  printf("***** CATEGORY *** TEST ***  END  *****\n");
exit (0);
}
 
long long   f01(int a,  long b)       {return(b-a);               }
 
float       f02(float a,int b)        {return(a*b);               }
 
double      f03(float a,int b,char c) {return(a*b*c);             }
 
long double f04(short a,int b,long c) {return((long double)a+b+c);}
