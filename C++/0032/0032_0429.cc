

#include <valarray>
#include <iostream>
#include <cmath>


#ifndef FLT_EPSILON
#define FLT_EPSILON (1.19209290e-07F)
#endif
const float       FLT_2EP =  2 * FLT_EPSILON; 
const double      DBL_2EP =  FLT_2EP;
const long double LDBL_2EP = FLT_2EP;

int acosd_v()
{
  std::valarray<double> v(2), w(2);
  v[0] = 1.0;
  v[1] = 0.0;

  w = std::acos(v);
  return (std::abs(w[0] - 0.0) <= DBL_2EP) && (std::abs(w[1] - M_PI_2) <= DBL_2EP);
}

int acosf_v()
{
  std::valarray<float> v(2), w(2);
  v[0] = 1.0;
  v[1] = 0.0;

  w = std::acos(v);
  return (std::abs(w[0] - 0.0) <= FLT_2EP) && (std::abs(w[1] - M_PI_2) <= FLT_2EP);
}

int acosl_v()
{
  std::valarray<long double> v(2), w(2);
  v[0] = 1.0;
  v[1] = 0.0;

  w = std::acos(v);
  return (std::abs(w[0] - 0.0) <= LDBL_2EP) && (std::abs(w[1] - M_PI_2) <= LDBL_2EP);
}

int asind_v()
{
  std::valarray<double> v(2), w(2);
  v[0] = 0.5;
  v[1] = 1.0;

  w = std::asin(v);
  return (std::abs(w[0] - M_PI / 6.0) <= DBL_2EP) && (std::abs(w[1] - M_PI_2) <= DBL_2EP);
}

int asinf_v()
{
  std::valarray<float> v(2), w(2);
  v[0] = 0.5;
  v[1] = 1.0;

  w = std::asin(v);
  return (std::abs(w[0] - M_PI / 6.0) <= FLT_2EP) && (std::abs(w[1] - M_PI_2) <= FLT_2EP);
}

int asinl_v()
{
  std::valarray<long double> v(2), w(2);
  v[0] = 0.5;
  v[1] = 1.0;

  w = std::asin(v);
  return (std::abs(w[0] - M_PI / 6.0 ) <= LDBL_2EP) && (std::abs(w[1] - M_PI_2) <= LDBL_2EP);
}

int atand_v()
{
  std::valarray<double> v(2), w(2);
  v[0] = 1.0;
  v[1] = -1.0;

  w = std::atan(v);
  return (std::abs(w[0] - M_PI / 4) <= DBL_2EP) && (std::abs(w[1] + M_PI / 4) <= DBL_2EP);
}

int atanf_v()
{
  std::valarray<float> v(2), w(2);
  v[0] = 1.0;
  v[1] = -1.0;

  w = std::atan(v);
  return (std::abs(w[0] - M_PI / 4) <= FLT_2EP) && (std::abs(w[1] + M_PI / 4) <= FLT_2EP);
}

int atanl_v()
{
  std::valarray<long double> v(2), w(2);
  v[0] = 1.0;
  v[1] = -1.0;

  w = std::atan(v);
  return (std::abs(w[0] - M_PI / 4) <= LDBL_2EP) && (std::abs(w[1] + M_PI / 4) <= LDBL_2EP);
}

int main()
{
  int i = (  acosd_v() + acosf_v() + acosl_v()
	   + asind_v() + asinf_v() + asinl_v()
	   + atand_v() + atanf_v() + atanl_v());
  std::cout << (i == 9 ? "OK" : "NG") << std::endl;
  return 0;
}
