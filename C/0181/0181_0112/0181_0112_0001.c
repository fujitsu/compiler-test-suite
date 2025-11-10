#include <stdio.h>
static  int sub_int(){
  int k,j;
  k = 1;
  j = 2;
  if(j == 2) {
    j = k+2;
  } else {
    j = j+2;
  }
  printf("%s\n",j == 3 ? "sub_int:ok":"sub_int:ng");

}
static 
 int sub_uint (void){
  unsigned int k,j;
  k = 1;
  j = 2;
  if(j == 2) {
    j = k+2;
  } else {
    j = j+2;
  }
  printf("%s\n",j == 3 ? "sub_uint:ok":"sub_uint:ng");

}
static 
 int sub_lint (void){
  long int k,j;
  k = 1;
  j = 2;
  if(j == 2) {
    j = k+2;
  } else {
    j = j+2;
  }
  printf("%s\n",j == 3 ? "sub_lint:ok":"sub_lint:ng");

}
static 
 int sub_ulint (void){
  unsigned long int k,j;
  k = 1;
  j = 2;
  if(j == 2) {
    j = k+2;
  } else {
    j = j+2;
  }
  printf("%s\n",j == 3 ? "sub_ulint:ok":"sub_ulint:ng");

}
static 
 int sub_float (void){
  float k,j;
  k = 1.0;
  j = 2.0;
  if(j == 2.0) {
    j = k+2;
  } else {
    j = j+2;
  }
  printf("%s\n",j == 3.0 ? "sub_float:ok":"sub_float:ng");

}
static 
 int sub_double (void){
  double k,j;
  k = 1.0;
  j = 2.0;
  if(j == 2.0) {
    j = k+2;
  } else {
    j = j+2;
  }
  printf("%s\n",j == 3.0 ? "sub_double:ok":"sub_double:ng");

}
static 
 int sub_ldouble (void){
  long double k,j;
  k = 1.0;
  j = 2.0;
  if(j == 2.0) {
    j = k+2;
  } else {
    j = j+2;
  }
  printf("%s\n",j == 3.0 ? "sub_ldouble:ok":"sub_ldouble:ng");

}
static 
 int sub_short (void){
  int k,j;
  k = 1.0;
  j = 2.0;
  if(j == 2) {
    j = k+2;
  } else {
    j = j+2;
  }
  printf("%s\n",j == 3.0 ? "sub_short:ok":"sub_short:ng");

}
 int 
lto_sub_1 (void){
  sub_int();
  sub_uint();
  sub_lint();
  sub_ulint();
  sub_float();
  sub_double();
  sub_ldouble();
  sub_short();
}
