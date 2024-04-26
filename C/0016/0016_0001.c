#include <stdio.h>
#include <complex.h>

float _Complex calc11(float _Complex b, float _Complex c, float _Complex d)
{
  return b+c+d;
}

float _Complex calc12(float _Complex b, float _Complex c, float _Complex d)
{
  return b+(c+d);
}

float _Complex calc13(float _Complex b, float _Complex c, float _Complex d)
{
  return b-(c+d);
}

float _Complex calc14(float _Complex b, float _Complex c, float _Complex d)
{
  return b*(c+d);
}

float _Complex calc15(float _Complex b, float _Complex c, float _Complex d)
{
  return b/(c+d);
}

float _Complex calc16(float _Complex b, float _Complex c, float _Complex d)
{
  return b+(c-d);
}

float _Complex calc17(float _Complex b, float _Complex c, float _Complex d)
{
  return b-(c-d);
}

float _Complex calc18(float _Complex b, float _Complex c, float _Complex d)
{
  return b*(c-d);
}

float _Complex calc19(float _Complex b, float _Complex c, float _Complex d)
{
  return b/(c-d);
}

float _Complex calc20(float _Complex b, float _Complex c, float _Complex d)
{
  return b+c*d;
}
float _Complex calc21(float _Complex b, float _Complex c, float _Complex d)
{
  return b-c*d;
}

float _Complex calc22(float _Complex b, float _Complex c, float _Complex d)
{
  return b*(c*d);
}

float _Complex calc23(float _Complex b, float _Complex c, float _Complex d)
{
  return b/(c*d);
}

float _Complex calc24(float _Complex b, float _Complex c, float _Complex d)
{
  return b+c/d;
}

float _Complex calc25(float _Complex b, float _Complex c, float _Complex d)
{
  return b-c/d;
}

float _Complex calc26(float _Complex b, float _Complex c, float _Complex d)
{
  return b*(c/d);
}

float _Complex calc27(float _Complex b, float _Complex c, float _Complex d)
{
  return b/(c/d);
}

double _Complex calc28(double _Complex b, double _Complex c, double _Complex d)
{
  return b+c+d;
}

double _Complex calc29(double _Complex b, double _Complex c, double _Complex d)
{
  return b+(c+d);
}

double _Complex calc30(double _Complex b, double _Complex c, double _Complex d)
{
  return b-(c+d);
}

double _Complex calc31(double _Complex b, double _Complex c, double _Complex d)
{
  return b*(c+d);
}

double _Complex calc32(double _Complex b, double _Complex c, double _Complex d)
{
  return b/(c+d);
}

double _Complex calc33(double _Complex b, double _Complex c, double _Complex d)
{
  return b+(c-d);
}

double _Complex calc34(double _Complex b, double _Complex c, double _Complex d)
{
  return b-(c-d);
}

double _Complex calc35(double _Complex b, double _Complex c, double _Complex d)
{
  return b*(c-d);
}

double _Complex calc36(double _Complex b, double _Complex c, double _Complex d)
{
  return b/(c-d);
}

double _Complex calc37(double _Complex b, double _Complex c, double _Complex d)
{
  return b+c*d;
}

double _Complex calc38(double _Complex b, double _Complex c, double _Complex d)
{
  return b-c*d;
}

double _Complex calc39(double _Complex b, double _Complex c, double _Complex d)
{
  return b*(c*d);
}

double _Complex calc40(double _Complex b, double _Complex c, double _Complex d)
{
  return b/(c*d);
}

double _Complex calc41(double _Complex b, double _Complex c, double _Complex d)
{
  return b+c/d;
}

double _Complex calc42(double _Complex b, double _Complex c, double _Complex d)
{
  return b-c/d;
}

double _Complex calc43(double _Complex b, double _Complex c, double _Complex d)
{
  return b*(c/d);
}

double _Complex calc44(double _Complex b, double _Complex c, double _Complex d)
{
  return b/(c/d);
}

float _Complex calc1(float _Complex b, float _Complex c, float _Complex d,
		     float _Complex e, float _Complex f, float _Complex g, 
		     float _Complex h)
{
  return ((b+c)+(c+d)+(e+f)+(g+h));
}

float _Complex calc2(float _Complex b, float _Complex c, float _Complex d,
		     float _Complex e)
{
  return ((b+c)-(c+d))*e;
}

float _Complex calc3(float _Complex b, float _Complex c, float _Complex d,
		     float _Complex e, float _Complex f, float _Complex g, 
		     float _Complex h)
{
  return e*((b/c)/(c*d))/((f+g)*h);
}

float _Complex calc4(float _Complex b, float _Complex c, float _Complex d,
		     float _Complex e, float _Complex f, float _Complex g, 
		     float _Complex h)
{
  return e*((b/c)/(c*d))/((f+g)*h);
}
int main(){
  float  _Complex a,b,c,d,e,f,g,h,t;
  double _Complex a2,b2,c2,d2,t2;
  float  dist;

  b = 1.0f + 2.0fi;
  c = 2.0f + 1.0fi;
  d = 2.0f + 3.0fi;
  e = 1.0f + 2.0fi;
  f = 2.0f + 1.0fi;
  g = 2.0f + 3.0fi;
  h = 2.0f + 3.0fi;
  
  b2 = 1.0 + 2.0i;
  c2 = 2.0 + 1.0i;
  d2 = 2.0 + 3.0i;

  a = calc1(b,c,d,e,f,g,h);
  if ((crealf(a) == 14.0f) && (cimagf(a) == 16.0f)) {
    printf(" calc1 : OK\n");
  }else{
    printf(" calc1 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc2(b,c,d,e);
  if ((crealf(a) == 1.0f) && (cimagf(a) == -3.0f)) {
    printf(" calc2 : OK\n");
  }else{
    printf(" calc2 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc3(b,c,d,e,f,g,h);
  t = 1.44E-03 + -1.35E-02i;
  dist = cabsf(a - t);
  if(dist < 0.01f) {
    printf(" calc3 : OK\n");
  }else{
    printf(" calc3 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc4(b,c,d,e,f,g,h);
  t = 1.44E-03 + -1.35E-02i;
  dist = cabsf(a - t);
  if(dist < 0.01f) {
    printf(" calc4 : OK\n");
  }else{
    printf(" calc4 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc11(b,c,d);
  if ((crealf(a) == 5.0f) && (cimagf(a) == 6.0f)) {
    printf(" calc11 : OK\n");
  }else{
    printf(" calc11 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc12(b,c,d);
  if ((crealf(a) == 5.0f) && (cimagf(a) == 6.0f)) {
    printf(" calc12 : OK\n");
  }else{
    printf(" calc12 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc13(b,c,d);
  if ((crealf(a) == -3.0f) && (cimagf(a) == -2.0f)) {
    printf(" calc13 : OK\n");
  }else{
    printf(" calc13 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc14(b,c,d);
  if ((crealf(a) == -4.0f) && (cimagf(a) == 12.0f)) {
    printf(" calc14 : OK\n");
  }else{
    printf(" calc14 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc15(b,c,d);
  if ((crealf(a) == 0.375f) && (cimagf(a) == 0.125f)) {
    printf(" calc15 : OK\n");
  }else{
    printf(" calc15 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc16(b,c,d);
  if ((crealf(a) == 1.0f) && (cimagf(a) == 0.0f)) {
    printf(" calc16 : OK\n");
  }else{
    printf(" calc16 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc17(b,c,d);
  if ((crealf(a) == 1.0f) && (cimagf(a) == 4.0f)) {
    printf(" calc17 : OK\n");
  }else{
    printf(" calc17 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc18(b,c,d);
  if ((crealf(a) == 4.0f) && (cimagf(a) == -2.0f)) {
    printf(" calc18 : OK\n");
  }else{
    printf(" calc18 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc19(b,c,d);
  if ((crealf(a) == -1.0f) && (cimagf(a) == 0.5f)) {
    printf(" calc19 : OK\n");
  }else{
    printf(" calc19 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc20(b,c,d);
  if ((crealf(a) == 2.0f) && (cimagf(a) == 10.0f)) {
    printf(" calc20 : OK\n");
  }else{
    printf(" calc20 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc21(b,c,d);
  if ((crealf(a) == 0.0f) && (cimagf(a) == -6.0f)) {
    printf(" calc21 : OK\n");
  }else{
    printf(" calc21 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc22(b,c,d);
  if ((crealf(a) == -15.0f) && (cimagf(a) == 10.0f)) {
    printf(" calc22 : OK\n");
  }else{
    printf(" calc22 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc23(b,c,d);
  t = 0.26f + -9.23E-02i;
  dist = cabsf(a - t);
  if(dist < 0.01f) {
    printf(" calc23 : OK\n");
  }else{
    printf(" calc23 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc24(b,c,d);
  t = 1.53f + 1.69fi;
  dist = cabsf(a - t);
  if(dist < 0.01f) {
    printf(" calc24 : OK\n");
  }else{
    printf(" calc24 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc25(b,c,d);
  t = 0.46f + 2.30fi;
  dist = cabsf(a - t);
  if(dist < 0.01f) {
    printf(" calc25 : OK\n");
  }else{
    printf(" calc25 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc26(b,c,d);
  t = 1.153f + 0.769fi;
  dist = cabsf(a - t);
  if(dist < 0.01f) {
    printf(" calc26 : OK\n");
  }else{
    printf(" calc26 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a = calc27(b,c,d);
  t = -0.20f + 3.6fi;
  dist = cabsf(a - t);
  if(dist < 0.01f) {
    printf(" calc27 : OK\n");
  }else{
    printf(" calc27 : NG a real=%f, imag=%f\n",crealf(a),cimagf(a));
  }

  a2 = calc28(b2,c2,d2);
  if ((creal(a2) == 5.0) && (cimag(a2) == 6.0)) {
    printf(" calc28 : OK\n");
  }else{
    printf(" calc28 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc29(b2,c2,d2);
  if ((creal(a2) == 5.0) && (cimag(a2) == 6.0)) {
    printf(" calc29 : OK\n");
  }else{
    printf(" calc29 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc30(b2,c2,d2);
  if ((creal(a2) == -3.0) && (cimag(a2) == -2.0)) {
    printf(" calc30 : OK\n");
  }else{
    printf(" calc30 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc31(b2,c2,d2);
  if ((creal(a2) == -4.0) && (cimag(a2) == 12.0)) {
    printf(" calc31 : OK\n");
  }else{
    printf(" calc31 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc32(b2,c2,d2);
  if ((creal(a2) == 0.375) && (cimag(a2) == 0.125)) {
    printf(" calc32 : OK\n");
  }else{
    printf(" calc32 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc33(b2,c2,d2);
  if ((creal(a2) == 1.0) && (cimag(a2) == 0.0)) {
    printf(" calc33 : OK\n");
  }else{
    printf(" calc33 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc34(b2,c2,d2);
  if ((creal(a2) == 1.0) && (cimag(a2) == 4.0)) {
    printf(" calc34 : OK\n");
  }else{
    printf(" calc34 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc35(b2,c2,d2);
  if ((creal(a2) == 4.0) && (cimag(a2) == -2.0)) {
    printf(" calc35 : OK\n");
  }else{
    printf(" calc35 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc36(b2,c2,d2);
  if ((creal(a2) == -1.0) && (cimag(a2) == 0.5)) {
    printf(" calc36 : OK\n");
  }else{
    printf(" calc36 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc37(b2,c2,d2);
  if ((creal(a2) == 2.0) && (cimag(a2) == 10.0)) {
    printf(" calc37 : OK\n");
  }else{
    printf(" calc37 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc38(b2,c2,d2);
  if ((creal(a2) == 0.0) && (cimag(a2) == -6.0)) {
    printf(" calc38 : OK\n");
  }else{
    printf(" calc38 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc39(b2,c2,d2);
  if ((creal(a2) == -15.0) && (cimag(a2) == 10.0)) {
    printf(" calc39 : OK\n");
  }else{
    printf(" calc39 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc40(b2,c2,d2);
  t2 = 0.26 + -9.24E-02i;
  dist = cabs(a2 - t2);
  if(dist < 0.01) {
    printf(" calc40 : OK\n");
  }else{
    printf(" calc40 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc41(b2,c2,d2);
  t2 = 1.53 + 1.69i;
  dist = cabs(a2 - t2);
  if(dist < 0.01) {
    printf(" calc41 : OK\n");
  }else{
    printf(" calc41 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc42(b2,c2,d2);
  t2 = 0.46 + 2.30i;
  dist = cabs(a2 - t2);
  if(dist < 0.01) {
    printf(" calc42 : OK\n");
  }else{
    printf(" calc42 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc43(b2,c2,d2);
  t2 = 1.153 + 0.769i;
  dist = cabs(a2 - t2);
  if(dist < 0.01) {
    printf(" calc43 : OK\n");
  }else{
    printf(" calc43 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }

  a2 = calc44(b2,c2,d2);
  t2 = -0.200 + 3.600i;
  dist = cabs(a2 - t2);
  if(dist < 0.01) {
    printf(" calc44 : OK\n");
  }else{
    printf(" calc44 : NG a real=%f, imag=%f\n",creal(a2),cimag(a2));
  }
}
