#include <stdio.h>
#include <math.h>
#include <limits.h>

#define PI 3.141592653589793284626433832795
#define N 19
#define D 4.4544551033807686783083602485579e-6

long double lfabs(long double), ur_tan(long double, int*), ltan(long double),
            lsin(long double), lcos(long double), lcos1(long double);

unsigned int sub01(double, int);
int main() {

  static long long int a1[3] = {10, 20L, 30.0L};
  static long double b1[5] = {0.0, 30, 45L, 60.0, 90.0L}, p;
  int i;
  float z;
  double q;

  for(i = 0; i < 3; i ++) {
    
    z = (float)sub01((double)a1[i], i);
    if ( z != 0) {
      printf("ERROR fnlg0004 \n");
    }
  }
  for(i = 0; i < 5; i ++) {
    p = ltan(b1[i]);
    q = (double)p;
    printf("%f\n",q); 
    p = lsin(b1[i]);
    q = (double)p;
    printf("%f\n",q); 
    p = lcos(b1[i]);
    q = (double)p;
    printf("%f\n",q); 
    p = lcos1(b1[i]);
    q = (double)p;
    printf("%f\n",q); 
  } 
  return 0;
}

unsigned int sub01(double y, int i) {

 double y2;

 printf(" y = %f\n",y);
 y2 = (double)lfabs((long double)y);
 switch (i) {
   case 0:
     if (y2 == 10.0) return 0U;
     else return 999U;
     break; 
   case 1:
     if (y2 == 20.0) return 0U;
     else return 999U;
     break; 
   case 2:
     if (y2 == 30.0) return 0U;
     else return 999U;
     break; 
  }
  return 999U;
}
  
long double lfabs(long double x) {

  if (x >= 0) return x; else return -x;
}

long double ur_tan(long double x, int *k) {
  
  int i;
  long double t, x2;

  *k = (int)(x / (PI / 2) + (x >= 0 ? 0.5 : -0.5));
  x = +(x - (3217.0 / 2048) * *k) + D * * k;
  x2 = x * x;
  t = 0;
  for (i = N; i >= 3; i -= 2) t = x2 / (i - t);
  return x / (1 - t);
}

long double ltan(long double x) {

  int k;
  long double t;
  
  t = ur_tan(x, &k);
  if (k % 2 == 0) return t;
  if (t != 0) return -1 / t;
   return HUGE_VAL;
}

long double lsin(long double x) {
 
  int k;
  long double t;

  t = ur_tan(x / 2, &k);
  t = 2 * t / (1 + t * t);
  if (k % 2 == 0) return t;
   return -t;
}

long double lcos(long double x) {
  
  return lsin(PI / 2 - lfabs(x));
}

long double lcos1(long double x) {
  
  int k;
  long double t;

  t = ur_tan(lfabs(x / 2), &k);
  t *= t;
  if (k % 2 == 0) return 2 * t / (1 + t);
   return 2 / (1 + t);
}
