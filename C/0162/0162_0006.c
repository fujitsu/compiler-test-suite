#include <stdio.h>
int sub_int(int j, int i) {
  int k,a;
  k = j+3;
  if(j == 1) {
    k = i+3;
  } else if(j == 3){
    k = i+1;
  }
  a = k+2;
  return a;
}
unsigned int sub_uint(unsigned int j, unsigned int i) {
  int k,a;
  k = j+3;
  if(j == 1) {
    k = i+3;
  } else if(j == 3){
    k = i+1;
  }
  a = k+2;
  return a;
}
long int sub_lint(long int j, long int i) {
  int k,a;
  k = j+3;
  if(j == 1) {
    k = i+3;
  } else if(j == 3){
    k = i+1;
  }
  a = k+2;
  return a;
}
unsigned long int sub_ulint(unsigned long int j, unsigned long int i) {
  int k,a;
  k = j+3;
  if(j == 1) {
    k = i+3;
  } else if(j == 3){
    k = i+1;
  }
  a = k+2;
  return a;
}
float sub_float(float j, float i) {
  float k,a;
  k = j+3;
  if(j == 1.0) {
    k = i+3;
  } else if(j == 3.0){
    k = i+1;
  }
  a = k+2;
  return a;
}
double sub_double(double j, double i) {
  double k,a;
  k = j+3;
  if(j == 1.0) {
    k = i+3;
  } else if(j == 3.0){
    k = i+1;
  }
  a = k+2;
  return a;
}
long double sub_ldouble(long double j, long double i) {
  long double k,a;
  k = j+3;
  if(j == 1.0) {
    k = i+3;
  } else if(j == 3.0){
    k = i+1;
  }
  a = k+2;
  return a;
}
short sub_short(short j, short i) {
  short k,a;
  k = j+3;
  if(j == 1) {
    k = i+3;
  } else if(j == 3){
    k = i+1;
  }
  a = k+2;
  return a;
}
int main() {
  printf("%s\n",sub_int(1,2) == 7 ? "sub_int:ok":"sub_int:ng");
  printf("%s\n",sub_uint(1,2) == 7 ? "sub_uint:ok":"sub_uint:ng");
  printf("%s\n",sub_lint(1,2) == 7 ? "sub_lint:ok":"sub_lint:ng");
  printf("%s\n",sub_ulint(1,2) == 7 ? "sub_ulint:ok":"sub_ulint:ng");
  printf("%s\n",sub_float(1.0,2.0) == 7.0 ? "sub_float:ok":"sub_float:ng");
  printf("%s\n",sub_double(1.0,2.0) == 7.0 ? "sub_double:ok":"sub_double:ng");
  printf("%s\n",sub_ldouble(1.0,2.0) == 7.0 ? "sub_ldouble:ok":"sub_ldouble:ng");
  printf("%s\n",sub_short(1,2) == 7 ? "sub_short:ok":"sub_short:ng");
}
