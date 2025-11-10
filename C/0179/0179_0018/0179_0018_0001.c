#include <stdio.h>
#define N 10

extern float pragma_eval(float[],float[],int n);
extern float pragma_eval1(float[],float[],int n);
extern float pragma_eval2(float[],float[],int n);
extern float pragma_eval3(float[],float[],int n);

static void print_if_is_ok(float f, float ans, float diff) {
  if ((((f) - (ans)) > -(diff)) && (((f) - (ans)) < (diff))) {
    printf("ok\n");
  } else {
    printf("ng: f = %f\n", f);
  }
}

int main() 
{
  float a[N], b[N], f, f1, f2, f3;
  const float ans = 30.000000f;
  const float diff = 0.000003f;
  int i;
  for (i = 0; i < N; ++i) {
    a[i] = 0;
  }
  for (i = 0; i < N; ++i) {
    b[i] = i * 2;
  }
  
  f = pragma_eval(a, b, N);
  f1 = pragma_eval1(a, b, N);
  f2 = pragma_eval2(a, b, N);
  f3 = pragma_eval3(a, b, N);

  print_if_is_ok(f,ans,diff);
  print_if_is_ok(f1,ans,diff);
  print_if_is_ok(f2,ans,diff);
  print_if_is_ok(f3,ans,diff);
}
