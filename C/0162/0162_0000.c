#include <stdio.h>
int sub_int(){
  int k,j;
  k = 1;
  j = 2;
  if(j == 2) {
    j = j+1;
  } else {
    j = j+2;
  }
  printf("%s\n",k == 1 ? "sub_int:ok":"sub_int:ng");
}
int sub_uint(){
  unsigned int k,j;
  k = 1;
  j = 2;
  if(j == 2) {
    j = j+1;
  } else {
    j = j+2;
  }
  printf("%s\n",k == 1 ? "sub_uint:ok":"sub_uint:ng");
}
int sub_lint(){
  long int k,j;
  k = 1;
  j = 2;
  if(j == 2) {
    j = j+1;
  } else {
    j = j+2;
  }
  printf("%s\n",k == 1 ? "sub_lint:ok":"sub_lint:ng");
}
int sub_ulint(){
  unsigned long int k,j;
  k = 1;
  j = 2;
  if(j == 2) {
    j = j+1;
  } else {
    j = j+2;
  }
  printf("%s\n",k == 1 ? "sub_ulint:ok":"sub_ulint:ng");
}
int sub_float(){
  float k,j;
  k = 1.0;
  j = 2.0;
  if(j == 2.0) {
    j = j+1;
  } else {
    j = j+2;
  }
  printf("%s\n",k == 1.0 ? "sub_float:ok":"sub_float:ng");
}
int sub_double(){
  double k,j;
  k = 1.0;
  j = 2.0;
  if(j == 2.0) {
    j = j+1.0;
  } else {
    j = j+2.0;
  }
  printf("%s\n",k == 1.0 ? "sub_double:ok":"sub_double:ng");
}
int sub_ldouble(){
  long double k,j;
  k = 1.0;
  j = 2.0;
  if(j == 2.0) {
    j = j+1;
  } else {
    j = j+2;
  }
  printf("%s\n",k == 1.0 ? "sub_ldouble:ok":"sub_ldouble:ng");
}
int sub_short(){
  short k,j;
  k = 1;
  j = 2;
  if(j == 2) {
    j = j+1;
  } else {
    j = j+2;
  }
  printf("%s\n",k == 1 ? "sub_short:ok":"sub_short:ng");
}
int main(){
  sub_int();
  sub_uint();
  sub_lint();
  sub_ulint();
  sub_float();
  sub_double();
  sub_ldouble();
  sub_short();
}
