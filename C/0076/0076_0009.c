


#include <stdio.h>
#include <math.h>

double a[10];
double b[10] = {
 1E+5,
100, 10, 5, 0,
2.225073858507201E-308,
-100, -10, -5, -0.0 };

void test(double (*p)(),void (*test)(),char *func)
{
  int i;

  test(10,a,b);

  for(i=0;i<10;i++) {
    double x = (*p)(b[i]);
    double y = a[i];
    if( isnan(x) && isnan(y) ) {
      continue;
    }
    else if( p == sin && a[i] == 0 ) {  
      continue;
    }
    else if( fabs((x-y)/x) > 1E-13  ) {
      printf("NG : %s(%g) = %g != %g \n",func,b[i],x,a[i]);
      printf("NG : %s(%g) = 0x%llx != 0x%llx \n",func,b[i],x,a[i]);
    }
  }
  printf("PASS:%s\n",func);
}

void foo_sin(int n,double a[],double b[]) {
  int i;
  for(i=0;i<n;i++) {
    a[i] = sin(b[i]);
  }
}

void foo_cos(int n,double a[],double b[]) {
  int i;
  for(i=0;i<n;i++) {
    a[i] = cos(b[i]);
  }
}

void foo_log(int n,double a[],double b[]) {
  int i;
  for(i=0;i<n;i++) {
    a[i] = log(b[i]);
  }
}

void foo_log10(int n,double a[],double b[]) {
  int i;
  for(i=0;i<n;i++) {
    a[i] = log10(b[i]);
  }
}

void foo_exp(int n,double a[],double b[]) {
  int i;
  for(i=0;i<n;i++) {
    a[i] = exp(b[i]);
  }
}

void foo_sqrt(int n,double a[],double b[]) {
  int i;
  for(i=0;i<n;i++) {
    a[i] = sqrt(b[i]);
  }
}
int main()
{
   test(sin,foo_sin,"sin");
   test(cos,foo_cos,"cos");
   test(log,foo_log,"log");
   test(log10,foo_log10,"log10");
   test(exp,foo_exp,"exp");
   test(sqrt,foo_sqrt,"sqrt");
}
