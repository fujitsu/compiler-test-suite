#include <stdio.h>
static int sub_int(int j, int i) {
  int k;
  k = j+3;
  if(j == 1) {
    i = k+1;
  } else {
    i = j+1;
  }
  return j;
}
static unsigned int sub_uint(unsigned int j, unsigned int i) {
  unsigned int k;
  k = j+3;
  if(j == 1) {
    i = k+1;
  } else {
    i = j+1;
  }
  return j;
}
static long int sub_lint(long int j, long int i) {
  long int k;
  k = j+3;
  if(j == 1) {
    i = k+1;
  } else {
    i = j+1;
  }
  return j;
}
static unsigned long int sub_ulint(int j, int i) {
  unsigned long int k;
  k = j+3;
  if(j == 1) {
    i = k+1;
  } else {
    i = j+1;
  }
  return j;
}
static float sub_float(float j, float i) {
  float k;
  k = j+3;
  if(j == 1.0) {
    i = k+1;
  } else {
    i = j+1;
  }
  return j;
}
static double sub_double(double j, double i) {
  double k;
  k = j+3;
  if(j == 1.0) {
    i = k+1;
  } else {
    i = j+1;
  }
  return j;
}
static long double sub_ldouble(long double j, long double i) {
  long double k;
  k = j+3;
  if(j == 1.0) {
    i = k+1;
  } else {
    i = j+1;
  }
  return j;
}
static short sub_short(short j, short i) {
  int k;
  k = j+3;
  if(j == 1) {
    i = k+1;
  } else {
    i = j+1;
  }
  return j;
}

 int 
lto_sub_10 (void) {
  printf("%s\n",sub_int(1,2) == 1 ? "sub_int:ok":"sub_int:ng");
  printf("%s\n",sub_uint(1,2) == 1 ? "sub_uint:ok":"sub_uint:ng");
  printf("%s\n",sub_lint(1,2) == 1 ? "sub_lint:ok":"sub_lint:ng");
  printf("%s\n",sub_ulint(1,2) == 1 ? "sub_ulint:ok":"sub_ulint:ng");
  printf("%s\n",sub_float(1.0,2.0) == 1.0 ? "sub_float:ok":"sub_float:ng");
  printf("%s\n",sub_double(1.0,2.0) == 1.0 ? "sub_double:ok":"sub_double:ng");
  printf("%s\n",sub_ldouble(1.0,2.0) == 1.0 ? "sub_ldouble:ok":"sub_ldouble:ng");
  printf("%s\n",sub_short(1,2) == 1 ? "sub_short:ok":"sub_short:ng");
}
