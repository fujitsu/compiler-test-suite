#include <stdio.h>

#define TRUE  1
#define FALSE 0

struct ST {
  int struct_st_a;
  float struct_st_b;
  double struct_st_c;
};

char char_tmp;
short short_tmp;
int int_tmp;
long long_tmp;
float float_tmp;
double double_tmp;
long double long_double_tmp;
struct ST struct_st_tmp;

__thread char* char_tls = &char_tmp;
__thread short* short_tls = &short_tmp;
__thread int* int_tls = &int_tmp;
__thread long* long_tls = &long_tmp;
__thread float* float_tls = &float_tmp;
__thread double* double_tls = &double_tmp;
__thread long double* long_double_tls = &long_double_tmp;
__thread struct ST* struct_st = &struct_st_tmp;

bool char_test(){
  bool ans = FALSE;
  try {
    throw char_tls;
  }
  catch (char *) {
    ans = TRUE;
  }
  return ans;
}

bool short_test(){
  bool ans = FALSE;
  try {
    throw short_tls;
  }
  catch (short *) {
    ans = TRUE;
  }
  return ans;
}

bool int_test(){
  bool ans = FALSE;
  try {
    throw int_tls;
  }
  catch (int *) {
    ans = TRUE;
  }
  return ans;
}

bool long_test(){
  bool ans = FALSE;
  try {
    throw long_tls;
  }
  catch (long *) {
    ans = TRUE;
  }
  return ans;
}

bool float_test(){
  bool ans = FALSE;
  try {
    throw float_tls;
  }
  catch (float *) {
    ans = TRUE;
  }
  return ans;
}

bool double_test(){
  bool ans = FALSE;
  try {
    throw double_tls;
  }
  catch (double *) {
    ans = TRUE;
  }
  return ans;
}

bool long_double_test(){
  bool ans = FALSE;
  try {
    throw long_double_tls;
  }
  catch (long double *) {
    ans = TRUE;
  }
  return ans;
}

bool struct_test(){
  bool ans = FALSE;
  try {
    throw struct_st;
  }
  catch (struct ST *) {
    ans = TRUE;
  }
  return ans;
}

int check(bool b, char* str){
  if(!b){
    printf("%s NG\n",str);
    return 1;
  }
  return 0;
}
 
int main(void)
{
  int res = 0;
  res += check(char_test(), "char_test");
  res += check(short_test(), "short_test");
  res += check(int_test(), "int_test");
  res += check(long_test(), "long_test");
  res += check(float_test(), "float_test");
  res += check(double_test(), "double_test");
  res += check(long_double_test(), "long_double_test");
  res += check(struct_test(), "struct_test");

  if(res == 0){
    printf("OK\n");
  }
}
