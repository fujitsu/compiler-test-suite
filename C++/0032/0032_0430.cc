

#include <valarray>
#include <iostream>
#include <cmath>


#ifndef FLT_EPSILON
#define FLT_EPSILON (1.19209290e-07F)
#endif
const float       FLT_2EP =  2 * FLT_EPSILON; 
const double      DBL_2EP =  FLT_2EP;
const long double LDBL_2EP = FLT_2EP;

int cosd_v()
{
  std::valarray<double> v(2), w(2);
  v[0] = 0;
  v[1] = M_PI_2;

  w = std::cos(v);
  return (std::abs(w[0] - 1.0) <= DBL_2EP) && (std::abs(w[1] - 0.0) <= DBL_2EP);
}

int cosf_v()
{
  std::valarray<float> v(2), w(2);
  v[0] = 0;
  v[1] = M_PI_2;

  w = std::cos(v);
  return (std::abs(w[0] - 1.0) <= FLT_2EP) && (std::abs(w[1] - 0.0) <= FLT_2EP);
}

int cosl_v()
{
  std::valarray<long double> v(2), w(2);
  v[0] = 0;
  v[1] = M_PI_2;

  w = std::cos(v);
  return (std::abs(w[0] - 1.0) <= LDBL_2EP) && (std::abs(w[1] - 0.0) <= LDBL_2EP);
}

int sind_v()
{
  std::valarray<double> v(2), w(2);
  v[0] = M_PI;
  v[1] = M_PI_2;

  w = std::sin(v);
  return (std::abs(w[0] - 0.0) <= DBL_2EP) && (std::abs(w[1] - 1.0) <= DBL_2EP);
}

int sinf_v()
{
  std::valarray<float> v(2), w(2);
  v[0] = M_PI;
  v[1] = M_PI_2;

  w = std::sin(v);
  return (std::abs(w[0] - 0.0) <= FLT_2EP) && (std::abs(w[1] - 1.0) <= FLT_2EP);
}

int sinl_v()
{
  std::valarray<long double> v(2), w(2);
  v[0] = M_PI;
  v[1] = M_PI_2;

  w = std::sin(v);
  return (std::abs(w[0] - 0.0) <= LDBL_2EP) && (std::abs(w[1] - 1.0) <= LDBL_2EP);
}

int tand_v()
{
  std::valarray<double> v(2), w(2);
  v[0] = M_PI / 4;
  v[1] = M_PI;

  w = std::tan(v);
  return (std::abs(w[0] - 1.0) <= DBL_2EP) && (std::abs(w[1] - 0.0) <= DBL_2EP);
}

int tanf_v()
{
  std::valarray<float> v(2), w(2);
  v[0] = M_PI / 4;
  v[1] = M_PI;

  w = std::tan(v);
  return (std::abs(w[0] - 1.0) <= FLT_2EP) && (std::abs(w[1] - 0.0) <= FLT_2EP);
}

int tanl_v()
{
  std::valarray<long double> v(2), w(2);
  v[0] = M_PI / 4;
  v[1] = M_PI;

  w = std::tan(v);
  return (std::abs(w[0] - 1.0) <= LDBL_2EP) && (std::abs(w[1] - 0.0) <= LDBL_2EP);
}

int main()
{
  int i = (  cosd_v() + cosf_v() + cosl_v()
	   + sind_v() + sinf_v() + sinl_v()
	   + tand_v() + tanf_v() + tanl_v());
  std::cout << (i == 9 ? "OK" : "NG") << std::endl;
  return 0;
}
