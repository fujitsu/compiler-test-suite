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
