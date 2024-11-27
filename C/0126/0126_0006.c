#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PI 3.1415926535897932846264

static void cardano(double, double, double, double);
static double cuberoot(long double);
int main(){
  long long int a1 = 10, a2 = 20, a3 = 30, a4 = 40;
  unsigned long long int b1 = 1000000000, b2 = 2000000000, b3 = 3000000000, b4 = 4000000000;
  long double e1 = 10.99, e2 = 2230.0, e3 = 30.123, e4 = 40.0;
  double f1 = 10.99, f2 = 2230.0, f3 = 30.123, f4 = 40.0;

  cardano((double)a1, (double)a2, (double)a3, (double)a4);
  cardano((double)b1, (double)b2, (double)b3, (double)b4);
  cardano((double)e1, (double)e2, (double)e3, (double)e4);
  cardano((double)f1, (double)f2, (double)f3, (double)f4);
  exit(0);
}

void cardano(double a, double b, double c, double d) {

  double a3, b3, x1, x2, x3;
  long double p, q, t;

  b /= (3 * a);
  c /= a;
  d /= a;
  p = (long double)(b * b - c / 3);
  q = (long double)((b * (c - 2 * b * b) - d) / 2);
  a = (double)(q * q - p * p * p);
  if (a == 0) {
    q = cuberoot(q);
    x1 = (double)2 * q - b;
    x2 = -q - b;
    printf("x = %g, %g \n", x1, x2);
  }
  else if (a > 0 ) {
    if (q > 0) 
      a3 = cuberoot((long double)(q + sqrt(a)));
    else   
      a3 = cuberoot((long double)(q - sqrt(a)));
    b3 = p / a3;
    x1 = a3 + b3 - b;
    x2 = -0.5 * (a3 + b3) - b;
    x3 = fabs(a3 - b3) * sqrt(3.0) / 2;
    printf("x = %g; %g +- %g i\n", x1, x2, x3);
  }
  else {
    a = sqrt(p);
    t = acos(q / (p * a));
    a *= 2;
    x1 = a * cos(t / 3) - b;
    x2 = a * cos((t + 2 * PI) / 3) - b;
    x3 = a * cos((t + 4 * PI) / 3) - b;
    printf("x = %g, %g, %g,\n", x1, x2, x3);
  }
}

double cuberoot(long double x) {
  
  double s, prev;
  int positive;

  if (x == 0)
    return 0;
  if (x > 0) {
    positive = 1;
  }
  else {
    positive = 0;
    x = -x;
  }
  if (x > 1)
    s = x;
  else
    s = 1;
  do {
    prev = s;
    s = (x / (s * s) + 2 * s) / 3;
  } while (s < prev); 
  if (positive)
    return prev;
  else
    return -prev;
}
