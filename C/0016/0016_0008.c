#include <stdio.h>
#include <complex.h>

float _Complex c8_to_c16(double _Complex b)
{
  return (float _Complex)b;
}

double _Complex c16_to_c8(float _Complex a)
{
  return (double _Complex)a;
}
int main()
{
  float _Complex  a;
  double _Complex b;
  b = 1.0 + 2.0i;
  a = c8_to_c16(b);
  if((crealf(a)== 1.0) && (cimagf(a) == 2.0)) {
    printf(" c8_to_c16 : OK\n");
  }else{
    printf(" c8_to_c16 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }
  
  b = c16_to_c8(a);
  if((creal(b)== 1.0) && (cimag(b) == 2.0)) {
    printf(" c16_to_c8 : OK\n");
  }else{
    printf(" c16_to_c8 : NG b=(%f,%f)\n",creal(b),cimagf(b));
  }
}
