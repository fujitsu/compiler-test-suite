#include <stdio.h>
int sub_int(int k, int j) {
  k = j+1;
  if(j == 2) {
    j = k+2;
  }
  printf("%s\n",j == 5 ? "sub_int:ok":"sub_int:ng");
}
int sub_uint(unsigned int k, unsigned int j) {
  k = j+1;
  if(j == 2) {
    j = k+2;
  }
  printf("%s\n",j == 5 ? "sub_uint:ok":"sub_uint:ng");
}
int sub_lint(long int k, long int j) {
  k = j+1;
  if(j == 2) {
    j = k+2;
  }
  printf("%s\n",j == 5 ? "sub_lint:ok":"sub_lint:ng");
}
int sub_ulint(unsigned long int k, unsigned long int j) {
  k = j+1;
  if(j == 2) {
    j = k+2;
  }
  printf("%s\n",j == 5 ? "sub_ulint:ok":"sub_ulint:ng");
}
int sub_float(float k, float j) {
  k = j+1;
  if(j == 2.0) {
    j = k+2;
  }
  printf("%s\n",j == 5.0 ? "sub_float:ok":"sub_float:ng");
}
int sub_double(double k, double j) {
  k = j+1;
  if(j == 2.0) {
    j = k+2;
  }
  printf("%s\n",j == 5.0 ? "sub_double:ok":"sub_double:ng");
}
int sub_ldouble(long double k, long double j) {
  k = j+1;
  if(j == 2.0) {
    j = k+2;
  }
  printf("%s\n",j == 5.0 ? "sub_ldouble:ok":"sub_ldouble:ng");
}
int sub_short(short k, short j) {
  k = j+1;
  if(j == 2) {
    j = k+2;
  }
  printf("%s\n",j == 5 ? "sub_shrot:ok":"sub_short:ng");
}
int main() {
  sub_int(1,2);
  sub_uint(1,2);
  sub_lint(1,2);
  sub_ulint(1,2);
  sub_float(1.0,2.0);
  sub_double(1.0,2.0);
  sub_ldouble(1.0,2.0);
  sub_short(1,2);
}
