#include <stdio.h>
#include <complex.h>

float _Complex  conjg1(float _Complex a)
{
  return conjf(a);
}

double _Complex conjg1_2(double _Complex a)
{
  return conj(a);
}

float _Complex conjg2(float _Complex a, float _Complex b)
{
  return conjf(a+b);
}

double _Complex conjg2_2(double _Complex a, double _Complex b)
{
  return conj(a+b);
}

float _Complex conjg3(float _Complex a, float _Complex b)
{
  return conjf(a*b);
}

double _Complex conjg3_2(double _Complex a, double _Complex b)
{
  return conj(a*b);
}

float _Complex conjg4(float _Complex a, float _Complex b)
{
  return  conjf(a/b);
}

double _Complex conjg4_2(double _Complex a, double _Complex b)
{
  return  conj(a/b);
}

float _Complex conjg5(float _Complex a, float _Complex b, float _Complex c)
{
  return c+conjf(a+b);
}

double _Complex conjg5_2(double _Complex  a, double _Complex  b, double _Complex c)
{
  return c+conj(a+b);
}

float _Complex conjg6(float _Complex a, float _Complex b, float _Complex c)
{
  return c-conjf(a+b);
}

double _Complex conjg6_2(double _Complex a, double _Complex b, double _Complex c)
{
  return c+conj(a+b);
}

float _Complex conjg7(float _Complex a, float _Complex b, float _Complex c)
{
  return c*conjf(a+b);
}

double _Complex conjg7_2(double _Complex a, double _Complex b, double _Complex c)
{
  return c*conj(a+b);
}

float _Complex conjg8(float _Complex a, float _Complex b, float _Complex c)
{
  return c/conjf(a+b);
}

double _Complex conjg8_2(double _Complex a, double _Complex b, double _Complex c)
{
  return c/conj(a+b);
}
int main()
{
  float  _Complex a, b, c, t, res;
  double _Complex a2,b2,c2,t2,res2;

  float dist;

  a  = 2.0f + 3.0fi;
  a2 = 0.0  + -2.0i;
  b  = 1.0f + 2.0fi;
  b2 = 0.0  + -4.0i;
  c  = 2.0f + 1.0fi;
  c2 =-4.0  + 1.0i;

  res = conjg1(a);
  if (crealf(res) == 2.0f && cimagf(res) == -3.0f) {
    printf(" conjg1 : OK\n");
  }else{
    printf(" conjg1 : NG   res(%f,%f)\n",crealf(res),cimagf(res));
  }

  res2 = conjg1_2(a2);
  if (creal(res2) == 0.0 && cimag(res2) == 2.0) {
    printf(" conjg1_2 : OK\n");
  }else{
    printf(" conjg1_2 : NG   res2(%f,%f)\n",creal(res2),cimag(res2));
  }

  res = conjg2(res,b);
  if (crealf(res) == 3.0f && cimagf(res) == 1.0f) {
    printf(" conjg2 : OK\n");
  }else{
    printf(" conjg2 : NG   res(%f,%f)\n",crealf(res),cimagf(res));
  }

  res2 = conjg2_2(res2,b2);
  if (creal(res2) == 0.0 && cimag(res2) == 2.0) {
    printf(" conjg2_2 : OK\n");
  }else{
    printf(" conjg2_2 : NG   res2(%f,%f)\n",creal(res2),cimag(res2));
  }

  res = conjg3(res,b);
  if (crealf(res) == 1.0f && cimagf(res) == -7.0f) {
    printf(" conjg3 : OK\n");
  }else{
    printf(" conjg3 : NG   res(%f,%f)\n",crealf(res),cimagf(res));
  }

  res2 = conjg3_2(res2,b2);
  if (creal(res2) == 8.0 && cimag(res2) == 0.0) {
    printf(" conjg3_2 : OK\n");
  }else{
    printf(" conjg3_2 : NG   res2(%f,%f)\n",creal(res2),cimag(res2));
  }

  res = conjg4(res,b);
  t = -2.6f + 1.8fi;
  dist = cabsf(res - t);
  if(dist<0.01) {
    printf(" conjg4 : OK\n");
  }else{
    printf(" conjg4 : NG   res(%f,%f)\n",crealf(res),cimagf(res));
  }

  res2 = conjg4_2(res2,b2);
  if (creal(res2) == 0.0 && cimag(res2) == -2.0) {
    printf(" conjg4_2 : OK\n");
  }else{
    printf(" conjg4_2 : NG   res2(%f,%f)\n",creal(res2),cimag(res2));
  }

  res = conjg5(res,b,c);
  t = 0.4f + -2.8fi;
  dist = cabsf(res - t);
  if(dist<0.01) {
    printf(" conjg5 : OK\n");
  }else{
    printf(" conjg5 : NG   res(%f,%f)\n",crealf(res),cimagf(res));
  }

  res2 = conjg5_2(res2,b2,c2);
  if (creal(res2) == -4.0 && cimag(res2) == 7.0) {
    printf(" conjg5_2 : OK\n");
  }else{
    printf(" conjg5_2 : NG   res2(%f,%f)\n",creal(res2),cimag(res2));
  }

  res = conjg6(res,b,c);
  t = 0.6f + 0.2fi;
  dist = cabsf(res -t);
  if(dist<0.01) {
    printf(" conjg6 : OK\n");
  }else{
    printf(" conjg6 : NG   res(%f,%f)\n",crealf(res),cimagf(res));
  }

  res2 = conjg6_2(res2,b2,c2);
  if (creal(res2) == -8.0 && cimag(res2) == -2.0) {
    printf(" conjg6_2 : OK\n");
  }else{
    printf(" conjg6_2 : NG   res2(%f,%f)\n",creal(res2),cimag(res2));
  }

  res = conjg7(res,b,c);
  t = 5.4f + -2.8fi;
  dist = cabsf(res - t);
  if(dist<0.01) {
    printf(" conjg7 : OK\n");
  }else{
    printf(" conjg7 : NG   res(%f,%f)\n",crealf(res),cimagf(res));
  }

  res2 = conjg7_2(res2,b2,c2);
  if (creal(res2) == 26.0 && cimag(res2) == -32.0) {
    printf(" conjg7_2 : OK\n");
  }else{
    printf(" conjg7_2 : NG   res2(%f,%f)\n",creal(res2),cimag(res2));
  }

  res = conjg8(res,b,c);
  t = 0.326f + 0.115fi;
  dist = cabsf(res - t);
  if(dist<0.01) {
    printf(" conjg8 : OK\n");
  }else{
    printf(" conjg8 : NG   res(%f,%f)\n",crealf(res),cimagf(res));
  }

  res2 = conjg8_2(res2,b2,c2);
  t2 = -3.448E-02 + 8.62E-02i;
  dist = cabs(res2 - t2);
  if(dist<0.01) {
    printf(" conjg8_2 : OK\n");
  }else{
    printf(" conjg8_2 : NG   res2(%f,%f)\n",creal(res2),cimag(res2));
  }
}
