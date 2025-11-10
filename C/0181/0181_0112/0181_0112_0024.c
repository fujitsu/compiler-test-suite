#include <stdio.h>
static int sub_int(int j, int i, int n) {
  int k,a;
  k = j+3;
  for(j; j != i;j++) {
    n = k + 2;
    k = n + j;
  }
  a = k+i;
  return a;
}
static unsigned int sub_uint(unsigned int j, unsigned int i, unsigned int n) {
  unsigned int k,a;
  k = j+3;
  for(j; j != i;j++) {
    n = k + 2;
    k = n + j;
  }
  a = k+i;
  return a;
}
static long int sub_lint(long int j, long int i, long int n) {
  long int k,a;
  k = j+3;
  for(j; j != i;j++) {
    n = k + 2;
    k = n + j;
  }
  a = k+i;
  return a;
}
static unsigned long int sub_ulint(unsigned long int j, unsigned long int i, 
			    unsigned long int n) {
  unsigned long int k,a;
  k = j+3;
  for(j; j != i;j++) {
    n = k + 2;
    k = n + j;
  }
  a = k+i;
  return a;
}
static float sub_float(float j, float i, float n) {
  float k,a;
  k = j+3;
  for(j; j != i;j++) {
    n = k + 2;
    k = n + j;
  }
  a = k+i;
  return a;
}
static double sub_double(double j, double i, double n) {
  double k,a;
  k = j+3;
  for(j; j != i;j++) {
    n = k + 2;
    k = n + j;
  }
  a = k+i;
  return a;
}
static long double sub_ldouble(long double j, long double i, long double n) {
  long double k,a;
  k = j+3;
  for(j; j != i;j++) {
    n = k + 2;
    k = n + j;
  }
  a = k+i;
  return a;
}
static short sub_short(short j, short i, short n) {
  short k,a;
  k = j+3;
  for(j; j != i;j++) {
    n = k + 2;
    k = n + j;
  }
  a = k+i;
  return a;
}

 int 
lto_sub_24 (void) {
  printf("%s\n",sub_int(1,5,3) == 27 ? "sub_int:ok":"sub_int:ng");
  printf("%s\n",sub_uint(1,5,3) == 27 ? "sub_uint:ok":"sub_uint:ng");
  printf("%s\n",sub_lint(1,5,3) == 27 ? "sub_lint:ok":"sub_lint:ng");
  printf("%s\n",sub_ulint(1,5,3) == 27 ? "sub_ulint:ok":"sub_ulint:ng");
  printf("%s\n",sub_float(1.0,5.0,3.0) == 27.0 ? "sub_float:ok":"sub_float:ng");
  printf("%s\n",sub_double(1.0,5.0,3.0) == 27.0 ? "sub_double:ok":"sub_double:ng");
  printf("%s\n",sub_ldouble(1.0,5.0,3.0) == 27.0 ? "sub_ldouble:ok":"sub_ldouble:ng");
  printf("%s\n",sub_short(1,5,3) == 27 ? "sub_short:ok":"sub_short:ng");
}
