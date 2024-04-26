#include <stdio.h>
#include <complex.h>

float _Complex add1(float _Complex b, float _Complex c)
{
  return b + c;
}

double _Complex add1_2(double _Complex b, double _Complex c)
{
  return b + c;
}

float _Complex add2(float _Complex b, float _Complex c, float _Complex d)
{
  d = b + c;
  return d + c;
}

double _Complex add2_2(double _Complex b, double _Complex c, double _Complex d)
{
  d = b + c;
  return d + c;
}

float _Complex add3(float _Complex b, float _Complex c)
{
  float _Complex tmp;
  tmp = b + c;
  return tmp + c;
}

double _Complex add3_2(double _Complex b, double _Complex c)
{
  double _Complex tmp;
  tmp = b + c;
  return tmp + c;
}

float _Complex sub1(float _Complex b, float _Complex c)
{
  return b - c;
}

double _Complex sub1_2(double _Complex b, double _Complex c)
{
  return b - c;
}

float _Complex sub2(float _Complex b, float _Complex c, float _Complex d)
{
  d = b - c;
  return d - c;
}

double _Complex sub2_2(double _Complex b, double _Complex c, double _Complex d)
{
  d = b - c;
  return d - c;
}

float _Complex sub3(float _Complex b, float _Complex c)
{
  float _Complex tmp;
  tmp = b - c;
  return tmp - c;
}

double _Complex sub3_2(double _Complex b, double _Complex c)
{
  double _Complex tmp;
  tmp = b - c;
  return tmp - c;
}

float _Complex mul1(float _Complex b, float _Complex c)
{
  return b * c;
}

double _Complex mul1_2(double _Complex b, double _Complex c)
{
  return b * c;
}

float _Complex mul2(float _Complex b, float _Complex c, float _Complex d)
{
  d = b * c;
  return d * c;
}

double _Complex mul2_2(double _Complex b, double _Complex c, double _Complex d)
{
  d = b * c;
  return d * c;
}

float _Complex mul3(float _Complex b, float _Complex c)
{
  float _Complex tmp;
  tmp = b * c;
  return tmp * c;
}

double _Complex mul3_2(double _Complex b, double _Complex c)
{
  double _Complex tmp;
  tmp = b * c;
  return tmp * c;
}

float _Complex div1(float _Complex b, float _Complex c)
{
  return b / c;
}

double _Complex div1_2(double _Complex b, double _Complex c)
{
  return b / c;
}

float _Complex div2(float _Complex b, float _Complex c, float _Complex d)
{
  d = b / c;
  return d / c;
}

double _Complex div2_2(double _Complex b, double _Complex c, double _Complex d)
{
  d = b / c;
  return d / c;
}

float _Complex div3(float _Complex b, float _Complex c)
{
  float _Complex tmp;
  tmp = b / c;
  return tmp / c;
}

double _Complex div3_2(double _Complex b, double _Complex c)
{
  double _Complex tmp;
  tmp = b / c;
  return tmp / c;
}
int main()
{
  float  _Complex  a,b,c,d;
  double _Complex  a2,b2,c2,d2;
  float dist;
  double dist2;

  b  = 1.0f + 2.0fi;
  c  = 2.0f + 1.0fi;
  d = 0;
  b2 = 2.0 + 3.0i;
  c2 = 3.0 + 2.0i;
  d2 = 0;

  a = add1(b,c);
  if ((crealf(a) == 3.0) && (cimagf(a) == 3.0)){
    printf(" add1 : OK\n");
  }else{
    printf(" add1 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = add1_2(b2,c2);
  if ((creal(a2) == 5.0) && (cimag(a2) == 5.0)){
    printf(" add1_2 : OK\n");
  }else{
    printf(" add1_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = add2(b,c,d);
  if ((crealf(a) == 5.0) && (cimagf(a) == 4.0)){
    printf(" add2 : OK\n");
  }else{
    printf(" add2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = add2_2(b2,c2,d2);
  if ((creal(a2) == 8.0) && (cimag(a2) == 7.0)){
    printf(" add2_2 : OK\n");
  }else{
    printf(" add2_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = add3(b,c);
  if ((crealf(a) == 5.0) && (cimagf(a) == 4.0)){
    printf(" add3 : OK\n");
  }else{
    printf(" add3 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = add3_2(b2,c2);
  if ((creal(a2) == 8.0) && (cimag(a2) == 7.0)){
    printf(" add3_2 : OK\n");
  }else{
    printf(" add3_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = sub1(b,c);
  if ((crealf(a) == -1.0) && (cimagf(a) == 1.0)){
    printf(" sub1 : OK\n");
  }else{
    printf(" sub1 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = sub1_2(b2,c2);
  if ((creal(a2) == -1.0) && (cimag(a2) == 1.0)){
    printf(" sub1_2 : OK\n");
  }else{
    printf(" sub1_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = sub2(b,c,d);
  if ((crealf(a) == -3.0) && (cimagf(a) == 0.0)){
    printf(" sub2 : OK\n");
  }else{
    printf(" sub2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = sub2_2(b2,c2,d2);
  if ((creal(a2) == -4.0) && (cimag(a2) == -1.0)){
    printf(" sub2_2 : OK\n");
  }else{
    printf(" sub2_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = sub3(b,c);
  if ((crealf(a) == -3.0) && (cimagf(a) == 0.0)){
    printf(" sub3 : OK\n");
  }else{
    printf(" sub3 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = sub3_2(b2,c2);
  if ((creal(a2) == -4.0) && (cimag(a2) == -1.0)){
    printf(" sub3_2 : OK\n");
  }else{
    printf(" sub3_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = mul1(b,c);
  if ((crealf(a) == 0.0) && (cimagf(a) == 5.0)){
    printf(" mul1 : OK\n");
  }else{
    printf(" mul1 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = mul1_2(b2,c2);
  if ((creal(a2) == 0.0) && (cimag(a2) == 13.0)){
    printf(" mul1_2 : OK\n");
  }else{
    printf(" mul1_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = mul2(b,c,d);
  if ((crealf(a) == -5.0) && (cimagf(a) == 10.0)){
    printf(" mul2 : OK\n");
  }else{
    printf(" mul2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = mul2_2(b2,c2,d2);
  if ((creal(a2) == -26.0) && (cimag(a2) == 39.0)){
    printf(" mul2_2 : OK\n");
  }else{
    printf(" mul2_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = mul3(b,c);
  if ((crealf(a) == -5.0) && (cimagf(a) == 10.0)){
    printf(" mul3 : OK\n");
  }else{
    printf(" mul3 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = mul3_2(b2,c2);
  if ((creal(a2) == -26.0) && (cimag(a2) == 39.0)){
    printf(" mul3_2 : OK\n");
  }else{
    printf(" mul3_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = div1(b,c);
  if ((crealf(a) == 0.8f) && (cimagf(a) == 0.6f)){
    printf(" div1 : OK\n");
  }else{
    printf(" div1 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = div1_2(b2,c2);
  dist2 = cabs(a2 - (0.92 + 0.38i));
  if(dist2 < 0.01) {
    printf(" div1_2 : OK\n");
  }else{
    printf(" div1_2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = div2(b,c,d);
  dist = cabsf(a - (0.439f + 8.00E-02fi));
  if (dist < 0.01) {
    printf(" div2 : OK\n");
  }else{
    printf(" div2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = div2_2(b2,c2,d2);
  dist2 = cabs(a2 - (0.272 + -5.325E-002i));
  if(dist2 < 0.01) {
    printf(" div2_2 : OK\n");
  }else{
    printf(" div2_2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = div3(b,c);
  dist = cabsf(a - (0.440f + 8.000E-02fi));
  if (dist < 0.01) {
    printf(" div3 : OK\n");
  }else{
    printf(" div3 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = div3_2(b2,c2);
  dist2 = cabs(a2 - (0.272 + -5.325E-002i));
  if(dist2 < 0.01) {
    printf(" div3_2 : OK\n");
  }else{
    printf(" div3_2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }
}
