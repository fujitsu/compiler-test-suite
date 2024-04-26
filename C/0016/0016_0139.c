#include <stdio.h>
#include <math.h>
#include <complex.h>

float _Complex tree1(float _Complex b) 
{
  float x=30.0;
  return b + sin(x); 
}

float _Complex tree2(float _Complex b) 
{
  float _Complex tmp;
  float x=30.0;
  tmp = sin(x) + 10.0fi;
  return tmp + b; 
}

float _Complex tree3() 
{
  float x=30.0;
  return x + (sin(x) + 10.0fi);
}

double _Complex tree6(double _Complex b) 
{
  double x=30.0;
  return b + sin(x) ;
}

double _Complex tree7(double _Complex b) 
{
  double _Complex tmp;
  double x=30.0;
  tmp = sin(x) + 10.0i;
  return tmp + b; 
}

double _Complex tree8() 
{
  double x=30.0;
  return x + (sin(x) + 10.0i);
}
int main()
{
  float  _Complex a,b;
  double _Complex a2,b2;
  float  dist;
  double dist2;
  b  = 1.0f + 2.0fi;
  b2 = 1.0 + 2.0i;

  a = tree1(b);
  dist = cabsf(a - (1.196E-02f + 2.0fi));
  if(dist < 0.01) {
    printf(" tree1 : OK\n");
  }else{
    printf(" tree1 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = tree2(b);
  dist = cabsf(a - (1.196E-02f + 12.0fi));
  if(dist < 0.01) {
    printf(" tree2 : OK\n");
  }else{
    printf(" tree2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = tree3();
  dist = cabsf(a - (29.01f + 10.0fi));
  if(dist < 0.01) {
    printf(" tree3 : OK\n");
  }else{
    printf(" tree3 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = tree6(b2);
  dist2 = cabs(a2 - (1.196E-02 + 2.0i));
  if(dist2 < 0.01) {
    printf(" tree6 : OK\n");
  }else{
    printf(" tree6 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = tree7(b2);
  dist2 = cabs(a2 - (1.196E-02 + 12.0i));
  if(dist2 < 0.01) {
    printf(" tree7 : OK\n");
  }else{
    printf(" tree7 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = tree8();
  dist2 = cabs(a2 - (29.01 + 10.0i));
  if(dist2 < 0.01) {
    printf(" tree8 : OK\n");
  }else{
    printf(" tree8 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }
}



