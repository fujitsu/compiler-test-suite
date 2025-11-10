#include <stdio.h>
static  int sub_int(int k, int j){
  if(j == 2) {
    k = k+2;
  } else {
    k = j+2;
  }
  printf("%s\n",k == 3 ? "sub_int:ok":"sub_int:ng");
}
static  int sub_uint(unsigned int k, unsigned int j){
  if(j == 2) {
    k = k+2;
  } else {
    k = j+2;
  }
  printf("%s\n",k == 3 ? "sub_uint:ok":"sub_uint:ng");
}
static  int sub_lint(long int k, long int j){
  if(j == 2) {
    k = k+2;
  } else {
    k = j+2;
  }
  printf("%s\n",k == 3 ? "sub_lint:ok":"sub_lint:ng");
}
static  int sub_ulint(unsigned long int  k, unsigned long int j){
  if(j == 2) {
    k = k+2;
  } else {
    k = j+2;
  }
  printf("%s\n",k == 3 ? "sub_uint:ok":"sub_uint:ng");
}
static  int sub_float(float k, float j){
  if(j == 2.0) {
    k = k+2;
  } else {
    k = j+2;
  }
  printf("%s\n",k == 3.0 ? "sub_float:ok":"sub_float:ng");
}
static  int sub_double(double k, double j){
  if(j == 2.0) {
    k = k+2;
  } else {
    k = j+2;
  }
  printf("%s\n",k == 3.0 ? "sub_double:ok":"sub_double:ng");
}
static  int sub_ldouble(long double k, long double j){
  if(j == 2.0) {
    k = k+2;
  } else {
    k = j+2;
  }
  printf("%s\n",k == 3.0 ? "long_double:ok":"long_double:ng");
}
static  int sub_short(short k, short j){
  if(j == 2) {
    k = k+2;
  } else {
    k = j+2;
  }
  printf("%s\n",k == 3 ? "sub_short:ok":"sub_short:ng");
}

 int 
lto_sub_3 (void){
  sub_int(1,2);
  sub_uint(1,2);
  sub_lint(1,2);
  sub_ulint(1,2);
  sub_float(1.0,2.0);
  sub_double(1.0,2.0);
  sub_ldouble(1.0,2.0);
  sub_short(1,2);
}
