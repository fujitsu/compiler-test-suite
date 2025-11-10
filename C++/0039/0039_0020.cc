#include <stdio.h>

#define TRUE  1
#define FALSE 0

static __thread char char_tls;
static __thread short short_tls;
static __thread int int_tls;
static __thread long long_tls;
static __thread float float_tls;
static __thread double double_tls;
static __thread long double long_double_tls;

struct ST {
  int struct_st_a;
  float struct_st_b;
  double struct_st_c;
} static __thread struct_st;

void char_throw(){
  throw char_tls;
}
bool char_test(){
  bool ans = FALSE;
  try {
    char_throw();
  }
  catch (char) {
    ans = TRUE;
  }
  return ans;
}

void short_throw(){
  throw short_tls;
}
bool short_test(){
  bool ans = FALSE;
  try {
    short_throw();
  }
  catch (short) {
    ans = TRUE;
  }
  return ans;
}

void int_throw(){
  throw int_tls;
}
bool int_test(){
  bool ans = FALSE;
  try {
    int_throw();
  }
  catch (int) {
    ans = TRUE;
  }
  return ans;
}

void long_throw(){
  throw long_tls;
}
bool long_test(){
  bool ans = FALSE;
  try {
    long_throw();
  }
  catch (long) {
    ans = TRUE;
  }
  return ans;
}

void float_throw(){
  throw float_tls;
}
bool float_test(){
  bool ans = FALSE;
  try {
    float_throw();
  }
  catch (float) {
    ans = TRUE;
  }
  return ans;
}

void double_throw(){
  throw double_tls;
}
bool double_test(){
  bool ans = FALSE;
  try {
    double_throw();
  }
  catch (double) {
    ans = TRUE;
  }
  return ans;
}

void long_double_throw(){
  throw long_double_tls;
}
bool long_double_test(){
  bool ans = FALSE;
  try {
    long_double_throw();
  }
  catch (long double) {
    ans = TRUE;
  }
  return ans;
}

void struct_throw(){
  throw struct_st;
}
bool struct_test(){
  bool ans = FALSE;
  try {
    struct_throw();
  }
  catch (struct ST) {
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
