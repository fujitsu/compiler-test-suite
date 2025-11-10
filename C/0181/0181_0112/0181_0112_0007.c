#include <stdio.h>
static int sub_int(int k, int j) {
  int a;
  if(j == 2) {
    k = j+2;
  }
  a = k + 2;
    return a;
}
static unsigned int sub_uint(unsigned int k, unsigned int j) {
  unsigned int a;
  if(j == 2) {
    k = j+2;
  }
  a = k + 2;
    return a;
}
static long int sub_lint(long int k, long int j) {
  long int a;
  if(j == 2) {
    k = j+2;
  }
  a = k + 2;
    return a;
}
static unsigned long int sub_ulint(unsigned long int k, unsigned long int j) {
  unsigned long int a;
  if(j == 2) {
    k = j+2;
  }
  a = k + 2;
    return a;
}
static float sub_float(float k, float j) {
  float a;
  if(j == 2.0) {
    k = j+2;
  }
  a = k + 2;
    return a;
}
static double sub_double(double k, double j) {
  double a;
  if(j == 2.0) {
    k = j+2;
  }
  a = k + 2;
    return a;
}
static long double sub_ldouble(long double k, long double j) {
  int a;
  if(j == 2.0) {
    k = j+2;
  }
  a = k + 2;
    return a;
}
static short sub_short(short k, short j) {
  short a;
  if(j == 2) {
    k = j+2;
  }
  a = k + 2;
    return a;
}

 int 
lto_sub_7 (void) {
  printf("%s\n",sub_int(1,2) == 6 ? "sub_int:ok":"sub_int:ng");
  printf("%s\n",sub_uint(1,2) == 6 ? "sub_uint:ok":"sub_uint:ng");
  printf("%s\n",sub_lint(1,2) == 6 ? "sub_lint:ok":"sub_lint:ng");
  printf("%s\n",sub_ulint(1,2) == 6 ? "sub_ulint:ok":"sub_ulint:ng");
  printf("%s\n",sub_float(1.0,2.0) == 6.0 ? "sub_float:ok":"sub_float:ng");
  printf("%s\n",sub_double(1.0,2.0) == 6.0 ? "sub_double:ok":"sub_double:ng");
  printf("%s\n",sub_ldouble(1.0,2.0) == 6.0 ? "sub_ldouble:ok":"sub_ldouble:ng");
  printf("%s\n",sub_short(1,2) == 6 ? "sub_short:ok":"sub_short:ng");
}
