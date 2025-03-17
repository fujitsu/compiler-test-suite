



#include <valarray>
#include <iostream>
#include <cmath>


#ifndef FLT_EPSILON
#define FLT_EPSILON (1.19209290e-07F)
#endif
const float       FLT_2EP =  2 * FLT_EPSILON; 
const double      DBL_2EP =  FLT_2EP;
const long double LDBL_2EP = FLT_2EP;

int expd_v()
{
  std::valarray<double> v(5), w(5), x(5);
  double f = 1.0;
  for (int i = 0; i < 5; ++i) {
    v[i] = f;
    f += 1.0;
  }

  w = std::exp(v);
  x = std::log(w);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(v[i] - x[i]) <= DBL_2EP);
    
  }
  return sum;
}

int expf_v()
{
  std::valarray<float> v(5), w(5), x(5);
  float f = 1.0;
  for (int i = 0; i < 5; ++i) {
    v[i] = f;
    f += 1.0;
  }

  w = std::exp(v);
  x = std::log(w);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(v[i] - x[i]) <= FLT_2EP);
    
  }
  return sum;
}

int expl_v()
{
  std::valarray<long double> v(5), w(5), x(5);
  long double f = 1.0;
  for (int i = 0; i < 5; ++i) {
    v[i] = f;
    f += 1.0;
  }

  w = std::exp(v);
  x = std::log(w);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(v[i] - x[i]) <= LDBL_2EP);
    
  }
  return sum;
}

int powd_vv()
{
  std::valarray<double> v(5), w(5), x(5), y(5);
  double f = 1.0;
  for (int i = 0; i < 5; ++i) {
    v[i] = 10.0;
    w[i] = f;
    f += 1.0;
  }

  x = std::pow(v, w);
  y = std::log10(x);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(y[i] - w[i]) <= DBL_2EP);
    
  }
  return sum;
}

int powf_vv()
{
  std::valarray<float> v(5), w(5), x(5), y(5);
  float f = 1.0;
  for (int i = 0; i < 5; ++i) {
    v[i] = 10.0;
    w[i] = f;
    f += 1.0;
  }

  x = std::pow(v, w);
  y = std::log10(x);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(y[i] - w[i]) <= FLT_2EP);
    
  }
  return sum;
}

int powl_vv()
{
  std::valarray<long double> v(5), w(5), x(5), y(5);
  long double f = 1.0;
  for (int i = 0; i < 5; ++i) {
    v[i] = 10.0;
    w[i] = f;
    f += 1.0;
  }

  x = std::pow(v, w);
  y = std::log10(x);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(y[i] - w[i]) <= LDBL_2EP);
    
  }
  return sum;
}

int powd_vc()
{
  std::valarray<double> v(5), x(5), y(5);
  double w = 2.0, f = 10.0;
  for (int i = 0; i < 5; ++i) {
    v[i] = f;
    f *= 10.0;
  }

  x = std::pow(v, w);
  y = std::log10(x);

  int sum = 0;
  w = 2.0; 
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(y[i] - w) <= DBL_2EP);
    
    w += 2.0;
  }
  return sum;
}

int powf_vc()
{
  std::valarray<float> v(5), x(5), y(5);
  float w = 2.0, f = 10.0;
  for (int i = 0; i < 5; ++i) {
    v[i] = f;
    f *= 10.0;
  }

  x = std::pow(v, w);
  y = std::log10(x);

  int sum = 0;
  w = 2.0; 
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(y[i] - w) <= FLT_2EP);
    
    w += 2.0;
  }
  return sum;
}

int powl_vc()
{
  std::valarray<long double> v(5), x(5), y(5);
  long double w = 2.0, f = 10.0;
  for (int i = 0; i < 5; ++i) {
    v[i] = f;
    f *= 10.0;
  }

  x = std::pow(v, w);
  y = std::log10(x);

  int sum = 0;
  w = 2.0; 
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(y[i] - w) <= LDBL_2EP);
    
    w += 2.0;
  }
  return sum;
}


int powd_cv()
{
  std::valarray<double> w(5), x(5), y(5);
  double v = 10.0, f = 1.0;
  for (int i = 0; i < 5; ++i) {
    w[i] = f;
    f += 1.0;
  }

  x = std::pow(v, w);
  y = std::log10(x);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(y[i] - w[i]) <= DBL_2EP);
    
  }
  return sum;
}

int powf_cv()
{
  std::valarray<float> w(5), x(5), y(5);
  float v = 10.0, f = 1.0;
  for (int i = 0; i < 5; ++i) {
    w[i] = f;
    f += 1.0;
  }

  x = std::pow(v, w);
  y = std::log10(x);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(y[i] - w[i]) <= FLT_2EP);
    
  }
  return sum;
}

int powl_cv()
{
  std::valarray<long double> w(5), x(5), y(5);
  long double v = 10.0, f = 1.0;
  for (int i = 0; i < 5; ++i) {
    w[i] = f;
    f += 1.0;
  }

  x = std::pow(v, w);
  y = std::log10(x);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (std::abs(y[i] - w[i]) <= LDBL_2EP);
    
  }
  return sum;
}

int main()
{
  int i = (expd_v() + expf_v() + expl_v()
	   + powd_vv() + powf_vv() + powl_vv()
	   + powd_vc() + powf_vc() + powl_vc()
	   + powd_cv() + powf_cv() + powl_cv());
  std::cout << (i == 60 ? "OK" : "NG") << std::endl;
  return 0;
}
