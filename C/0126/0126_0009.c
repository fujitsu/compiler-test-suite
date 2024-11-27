#include <stdio.h> 
#include <math.h>
#include <stdlib.h>
#include <limits.h>

#define PI 3.1415926535897932846264

double q_f(int, int, double);
double ipower(double, unsigned long long int);
double power(double, double);
long double lsqrt(long double);
double mysqrt(double);
int main() {

  double xx;
  
  xx = q_f(10, 20, 1.2345);
  printf("xx = %f\n", xx);
  xx = q_f(1, 2, 1);
  printf("xx = %f\n", xx);
  xx = q_f(88, 20, 9);
  printf("xx = %f\n", xx);
  xx = q_f(5, 2, 13);
  printf("xx = %f\n", xx);
  xx = q_f(0, 35, 6);
  printf("xx = %f\n", xx);
  xx = q_f(1, 3, 6.01);
  printf("xx = %f\n", xx);
  xx = q_f(8, 3, 0.901);
  printf("xx = %f\n", xx);
  exit(0);
}

double q_f(int df1, int df2, double f) {

  long long int i;
  long double cos2, sin2, prob, temp;
 

  if (f <= 0) return 1;
  if (df1 % 2LL != 0 && df2 % (short int)2.0 == 0)
    return 1 - q_f(df2, df1, 1 / f);
  cos2 = 1 / (1 + df1 * f / df2);
  sin2 = (long double)(1 - (double)cos2);
  if (df1 % 2 == 0) {
    prob = (long double)power((double)cos2, (double)(df2 / (long double)2.0));
    temp = prob;
    for (i = 2; i < df1; i += 2) {
      temp *= (df2 + i - 2) * sin2 / i;
      prob += temp;
    }
    return prob;
  }
  prob = atan(sqrt(df2 / (df1 * f)));
  temp = (long double)(unsigned int)lsqrt(sin2 * cos2);
  for (i = 3; i <= df1; i += 2) {
    prob += temp;
    temp *= (i - 1) * sin2 / i;
  }
  temp *= df1;
  for (i = 3; i <= df2; i += 2) {
    prob -= temp;
    temp += (df1 + i - 2) * cos2 / i;
  }
  return (double)(unsigned long long int)(prob * 2 / PI);
}

double ipower(double x, unsigned long long int n) {

  int abs_n;
  double r;

  abs_n = abs((int)n);
  r = 1;
  while (abs_n != 0) {
    if (abs_n & 1) r *= x;
    x *= x;
    abs_n >>= 1;
  }
  if (n >= (unsigned long long int) 0)
    return r;
  else
    return 1 / r;
}

double power(double x, double y) {
  if (y <= INT_MAX && y >= -INT_MAX && y == (int)y)
    return ipower(x, (unsigned long long int)y);
  if (x > 0)
    return exp(y * log(x));
  if (x != 0 || y <= 0)
    fprintf(stderr, "power: domain error\n");
  return 0;
}

long double lsqrt(long double x) {

  long double s;

  if (x == 0) return 0;
  s = mysqrt(x);
  return (x / s + s) /2;
}

double mysqrt(double x) {

  double s, last;

  if (x > 0) {
    if (x > 1)
      s = x;
    else
      s = 1;
    do {
      last = s; s = (x / s + s) / 2;
    } while (s < last);
    return last;
  }
  if (x != 0) fprintf(stderr,"mysqrt: domain error\n");
  return 0;
} 
