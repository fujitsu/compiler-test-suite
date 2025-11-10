#include <stdio.h>

extern float pragma_fmadd(float[], float[], float[], float);
extern float pragma_fmadd1(float[], float[], float[], float);
extern float pragma_fmadd2(float, float, float);
extern float pragma_fmadd3(float, float, float);

int main() 
{
  float a[10], b[10], c[10], k, k1, k2, k3, sum = 0.0;
  int i;
  for (i = 0; i < 10; ++i) {
    a[i] = 10;
  }
  for (i = 0; i < 10; ++i) {
    b[i] = i * 2;
  }
  for (i = 0; i < 10; ++i) {
    c[i] = 2;
  }
  
  k = pragma_fmadd(a, b, c, sum);
  k1 = pragma_fmadd1(a, b, c, sum);
  k2 = pragma_fmadd2(1.0f, 2.0f, 3.0f);
  k3 = pragma_fmadd3(1.0f, 2.0f, 3.0f);

  printf ("k = %f\n", k);
  printf ("k1 = %f\n", k1);
  printf ("k2 = %f\n", k2);
  printf ("k3 = %f\n", k3);
  
}
