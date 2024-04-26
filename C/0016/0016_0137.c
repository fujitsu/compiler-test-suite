#include <stdio.h>
#include <complex.h>
#include <math.h>

float _Complex calc1(float _Complex b)
{
  float x = 10.0f;
  return b + x;
}

float _Complex calc2(float _Complex b)
{
  float x = 10.0f;
  return b - x;
}

float _Complex calc3(float _Complex b)
{
  float x = 10.0f;
  return b * x;
}

float _Complex calc4(float _Complex b)
{
  float x = 10.0f;
  return b / x;
}

float _Complex calc5(float _Complex b, float x)
{
  return b + x;
}

float _Complex calc6(float _Complex b, float x)
{
  return b - x;
}

float _Complex calc7(float _Complex b, float x)
{
  return b * x;
}

float _Complex calc8(float _Complex b, float x)
{
  return b / x;
}

float _Complex calc9(float _Complex b, float x, float y)
{
  return x + (b + y);
}

float _Complex calc10(float _Complex b, float x, float y)
{
  return x - (b + y);
}

float _Complex calc11(float _Complex b, float x, float y)
{
  return x * (b + y);
}

float _Complex calc12(float _Complex b, float x, float y)
{
  return x / (b + y);
}

float _Complex calc13(float _Complex b, float x, float y)
{
  return x + (b - y);
}

float _Complex calc14(float _Complex b, float x, float y)
{
  return x - (b - y);
}

float _Complex calc15(float _Complex b, float x, float y)
{
  return x * (b - y);
}

float _Complex calc16(float _Complex b, float x, float y)
{
  return x / (b - y);
}

float _Complex calc17(float _Complex b, float x, float y)
{
  return x + b * y;
}

float _Complex calc18(float _Complex b, float x, float y)
{
  return x - b * y;
}

float _Complex calc19(float _Complex b, float x, float y)
{
  return x * (b * y);
}

float _Complex calc20(float _Complex b, float x, float y)
{
  return x / (b * y);
}

float _Complex calc21(float _Complex b, float x, float y)
{
  return x + b / y;
}

float _Complex calc22(float _Complex b, float x, float y)
{
  return x - b / y;
}

float _Complex calc23(float _Complex b, float x, float y)
{
  return x * (b / y);
}

float _Complex calc24(float _Complex b, float x, float y)
{
  return x / (b / y);
}

float _Complex calc25(float _Complex b, float _Complex c, float x)
{
  return b + (c + x);
}

float _Complex calc26(float _Complex b, float _Complex c, float x)
{
  return b - (c + x);
}

float _Complex calc27(float _Complex b, float _Complex c, float x)
{
  return b * (c + x);
}

float _Complex calc28(float _Complex b, float _Complex c, float x)
{
  return b / (c + x);
}

float _Complex calc29(float _Complex b, float _Complex c, float x)
{
  return b + (c - x);
}

float _Complex calc30(float _Complex b, float _Complex c, float x)
{
  return b - (c - x);
}

float _Complex calc31(float _Complex b, float _Complex c, float x)
{
  return b * (c - x);
}

float _Complex calc32(float _Complex b, float _Complex c, float x)
{
  return b / (c - x);
}

float _Complex calc33(float _Complex b, float _Complex c, float x)
{
  return b + (c * x);
}

float _Complex calc34(float _Complex b, float _Complex c, float x)
{
  return b - (c * x);
}

float _Complex calc35(float _Complex b, float _Complex c, float x)
{
  return b * (c * x);
}

float _Complex calc36(float _Complex b, float _Complex c, float x)
{
  return b / (c * x);
}

float _Complex calc37(float _Complex b, float _Complex c, float x)
{
  return b + (c / x);
}

float _Complex calc38(float _Complex b, float _Complex c, float x)
{
  return b - (c / x);
}

float _Complex calc39(float _Complex b, float _Complex c, float x)
{
  return b * (c / x);
}

float _Complex calc40(float _Complex b, float _Complex c, float x)
{
  return b / (c / x);
}

double _Complex calc41(double _Complex b)
{
  double x=10;
  return b + x;
}

double _Complex calc42(double _Complex b)
{
  double x=10;
  return b - x;
}

double _Complex calc43(double _Complex b)
{
  double x=10;
  return b * x;
}

double _Complex calc44(double _Complex b)
{
  double x=10;
  return b / x;
}

double _Complex calc45(double _Complex b, double x)
{
  return b + x;
}

double _Complex calc46(double _Complex b, double x)
{
  return b - x;
}

double _Complex calc47(double _Complex b, double x)
{
  return b * x;
}

double _Complex calc48(double _Complex b, double x)
{
  return b / x;
}

double _Complex calc49(double _Complex b, double x, double y)
{
  return x + (b + y);
}

double _Complex calc50(double _Complex b, double x, double y)
{
  return x - (b + y);
}

double _Complex calc51(double _Complex b, double x, double y)
{
  return x * (b + y);
}

double _Complex calc52(double _Complex b,double x, double y)
{
  return x / (b + y);
}

double _Complex calc53(double _Complex b, double x, double y)
{
  return x + (b - y);
}

double _Complex calc54(double _Complex b, double x, double y)
{
  return x - (b - y);
}

double _Complex calc55(double _Complex b, double x, double y)
{
  return x * (b - y);
}

double _Complex calc56(double _Complex b, double x, double y)
{
  return x / (b - y);
}

double _Complex calc57(double _Complex b, double x, double y)
{
  return x + b * y;
}

double _Complex calc58(double _Complex b, double x, double y)
{
  return x - b * y;
}

double _Complex calc59(double _Complex b, double x, double y)
{
  return x * (b * y);
}

double _Complex calc60(double _Complex b, double x, double y)
{
  return x / (b * y);
}

double _Complex calc61(double _Complex b, double x, double y)
{
  return x + b / y;
}

double _Complex calc62(double _Complex b, double x, double y)
{
  return x - b / y;
}

double _Complex calc63(double _Complex b, double x, double y)
{
  return x * (b / y);
}

double _Complex calc64(double _Complex b, double x, double y)
{
  return x / (b / y);
}

double _Complex calc65(double _Complex b, double _Complex c, double x)
{
  return b + (c + x);
}

double _Complex calc66(double _Complex b, double _Complex c, double x)
{
  return b - (c + x);
}

double _Complex calc67(double _Complex b, double _Complex c, double x)
{
  return b * (c + x);
}

double _Complex calc68(double _Complex b, double _Complex c, double x)
{
  return b / (c + x);
}

double _Complex calc69(double _Complex b, double _Complex c, double x)
{
  return b + (c - x);
}

double _Complex calc70(double _Complex b, double _Complex c, double x)
{
  return b - (c - x);
}

double _Complex calc71(double _Complex b, double _Complex c, double x)
{
  return b * (c - x);
}

double _Complex calc72(double _Complex b, double _Complex c, double x)
{
  return b / (c - x);
}

double _Complex calc73(double _Complex b, double _Complex c, double x)
{
  return b + (c * x);
}

double _Complex calc74(double _Complex b, double _Complex c, double x)
{
  return b - (c * x);
}

double _Complex calc75(double _Complex b, double _Complex c, double x)
{
  return b * (c * x);
}

double _Complex calc76(double _Complex b, double _Complex c, double x)
{
  return b / (c * x);
}

double _Complex calc77(double _Complex b, double _Complex c, double x)
{
  return b + (c / x);
}

double _Complex calc78(double _Complex b, double _Complex c, double x)
{
  return b - (c / x);
}

double _Complex calc79(double _Complex b, double _Complex c, double x)
{
  return b * (c / x);
}

double _Complex calc80(double _Complex b, double _Complex c, double x)
{
  return b / (c / x);
}
int main()
{
  float  _Complex a,b,c;
  double _Complex a2,b2,c2;
  float  x=10,y=20,dist;
  double x2=10,y2=20,dist2;
  const double ABSOLUTE_ERROR = 0.00001;

  b  = 1.0f + 2.0fi;
  c  = 1.0f + 3.0fi;
  b2 = 1.0 + 2.0i;
  c2 = 1.0 + 3.0i;

  a = calc1(b);
  if ((crealf(a) == 11.0) && (cimagf(a) == 2.0)){
    printf(" calc1 : OK\n");
  }else {
    printf(" calc1 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc2(b);
  if ((crealf(a) == -9.0) && (cimagf(a) == 2.0)){
    printf(" calc2 : OK\n");
  }else {
    printf(" calc2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc3(b);
  if ((crealf(a) == 10.0) && (cimagf(a) == 20.0)){
    printf(" calc3 : OK\n");
  }else {
    printf(" calc3 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc4(b);
  dist = cabsf(a - (0.100f + 0.200fi));
  if (dist < 0.01){
    printf(" calc4 : OK\n");
  }else {
    printf(" calc4 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc5(b,x);
  if ((crealf(a) == 11.0) && (cimagf(a) == 2.0)){
    printf(" calc5 : OK\n");
  }else {
    printf(" calc5 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc6(b,x);
  if ((crealf(a) == -9.0) && (cimagf(a) == 2.0)){
    printf(" calc6 : OK\n");
  }else {
    printf(" calc6 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc7(b,x);
  if ((crealf(a) == 10.0) && (cimagf(a) == 20.0)){
    printf(" calc7 : OK\n");
  }else {
    printf(" calc7 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc8(b,x);
  dist = (a - (0.100f + 0.200fi));
  if (dist < 100){
    printf(" calc8 : OK\n");
  }else {
    printf(" calc8 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc9(b,x,y);
  if ((crealf(a) == 31.0) && (cimagf(a) == 2.0)){
    printf(" calc9 : OK\n");
  }else {
    printf(" calc9 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc10(b,x,y);
  if ((crealf(a) == -11.0) && (cimagf(a) == -2.0)){
    printf(" calc10 : OK\n");
  }else {
    printf(" calc10 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc11(b,x,y);
  if ((crealf(a) == 210.0) && (cimagf(a) == 20.0)){
    printf(" calc11 : OK\n");
  }else {
    printf(" calc11 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc12(b,x,y);
  dist = cabsf(a - (0.471f + -4.494E-02fi));
  if (dist < 0.01){
    printf(" calc12 : OK\n");
  }else {
    printf(" calc12 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc13(b,x,y);
  if ((crealf(a) == -9.0) && (cimagf(a) == 2.0)){
    printf(" calc13 : OK\n");
  }else {
    printf(" calc13 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc14(b,x,y);
  if ((crealf(a) == 29.0) && (cimagf(a) == -2.0)){
    printf(" calc14 : OK\n");
  }else {
    printf(" calc14 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc15(b,x,y);
  if ((crealf(a) == -190.0) && (cimagf(a) == 20.0)){
    printf(" calc15 : OK\n");
  }else {
    printf(" calc15 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc16(b,x,y);
  dist = cabsf(a - (-0.520f + -5.479E-02fi));
  if (dist < 0.01){
    printf(" calc16 : OK\n");
  }else {
    printf(" calc16 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc17(b,x,y);
  if ((crealf(a) == 30.0) && (cimagf(a) == 40.0)){
    printf(" calc17 : OK\n");
  }else {
    printf(" calc17 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc18(b,x,y);
  if ((crealf(a) == -10.0) && (cimagf(a) == -40.0)){
    printf(" calc18 : OK\n");
  }else {
    printf(" calc18 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc19(b,x,y);
  if ((crealf(a) == 200.0) && (cimagf(a) == 400.0)){
    printf(" calc19 : OK\n");
  }else {
    printf(" calc19 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }
  
  a = calc20(b,x,y);
  dist = cabsf(a - (0.100f + -0.200fi));
  if (dist < 0.01){
    printf(" calc20 : OK\n");
  }else {
    printf(" calc20 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc21(b,x,y);
  dist = cabsf(a - (10.05f + 0.100fi));
  if (dist < 0.01){
    printf(" calc21 : OK\n");
  }else {
    printf(" calc21 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc22(b,x,y);
  dist = cabsf(a - (9.950f + -0.100fi));
  if (dist < 0.01){
    printf(" calc22 : OK\n");
  }else {
    printf(" calc22 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc23(b,x,y);
  if ((fabs((double)(crealf(a) - 0.5f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(a) - 1.0f)) < ABSOLUTE_ERROR)) {
    printf(" calc23 : OK\n");
  }else {
    printf(" calc23 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc24(b,x,y);
  if ((fabs((double)(crealf(a) - 40.0f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(a) - (-80.0f))) < ABSOLUTE_ERROR)) {
    printf(" calc24 : OK\n");
  }else {
    printf(" calc24 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc25(b,c,x);
  if ((crealf(a) == 12.0) && (cimagf(a) == 5.0)){
    printf(" calc25 : OK\n");
  }else {
    printf(" calc25 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc26(b,c,x);
  if ((crealf(a) == -10.0) && (cimagf(a) == -1.0)){
    printf(" calc26 : OK\n");
  }else {
    printf(" calc26 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc27(b,c,x);
  if ((crealf(a) == 5.0) && (cimagf(a) == 25.0)){
    printf(" calc27 : OK\n");
  }else {
    printf(" calc27 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc28(b,c,x);
  dist = cabsf(a - (0.130f + 0.146fi));
  if (dist < 0.01){
    printf(" calc28 : OK\n");
  }else {
    printf(" calc28 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc29(b,c,x);
  if ((crealf(a) == -8.0) && (cimagf(a) == 5.0)){
    printf(" calc29 : OK\n");
  }else {
    printf(" calc29 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc30(b,c,x);
  if ((crealf(a) == 10.0) && (cimagf(a) == -1.0)){
    printf(" calc30 : OK\n");
  }else {
    printf(" calc30 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc31(b,c,x);
  if ((crealf(a) == -15.0) && (cimagf(a) == -15.0)){
    printf(" calc31 : OK\n");
  }else {
    printf(" calc31 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc32(b,c,x);
  dist = cabsf(a - (-3.333E-02f + -0.233fi));
  if (dist < 0.01){
    printf(" calc32 : OK\n");
  }else {
    printf(" calc32 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc33(b,c,x);
  if ((crealf(a) == 11.0) && (cimagf(a) == 32.0)){
    printf(" calc33 : OK\n");
  }else {
    printf(" calc33 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc34(b,c,x);
  if ((crealf(a) == -9.0) && (cimagf(a) == -28.0)){
    printf(" calc34 : OK\n");
  }else {
    printf(" calc34 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc35(b,c,x);
  if ((crealf(a) == -50.0) && (cimagf(a) == 50.0)){
    printf(" calc35 : OK\n");
  }else {
    printf(" calc35 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc36(b,c,x);
  dist = cabsf(a - (7.000E-02f + -9.999E-03fi));
  if (dist < 0.01){
    printf(" calc36 : OK\n");
  }else {
    printf(" calc36 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc37(b,c,x);
  dist = cabsf(a - (1.100f + 2.300fi));
  if (dist < 0.01){
    printf(" calc37 : OK\n");
  }else {
    printf(" calc37 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc38(b,c,x);
  dist = cabsf(a - (0.900f + 1.700fi));
  if (dist < 0.01){
    printf(" calc38 : OK\n");
  }else {
    printf(" calc38 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc39(b,c,x);
  if ((fabs((double)(crealf(a) - (-0.5f))) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(a) - 0.5f)) < ABSOLUTE_ERROR)) {
    printf(" calc39 : OK\n");
  }else {
    printf(" calc39 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a = calc40(b,c,x);
  dist = cabsf(a - (7.0f + -1.0fi));
  if (dist < 0.01){
    printf(" calc40 : OK\n");
  }else {
    printf(" calc40 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = calc41(b2);
  if ((creal(a2) == 11.0) && (cimag(a2) == 2.0)){
    printf(" calc41 : OK\n");
  }else {
    printf(" calc41 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc42(b2);
  if ((creal(a2) == -9.0) && (cimag(a2) == 2.0)){
    printf(" calc42 : OK\n");
  }else {
    printf(" calc42 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc43(b2);
  if ((creal(a2) == 10.0) && (cimag(a2) == 20.0)){
    printf(" calc43 : OK\n");
  }else {
    printf(" calc43 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc44(b2);
  dist2 = cabs(a2 - (0.1 + 0.2i));
  if (dist2 < 0.01){
    printf(" calc44 : OK\n");
  }else {
    printf(" calc44 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc45(b2,x2);
  if ((creal(a2) == 11.0) && (cimag(a2) == 2.0)){
    printf(" calc45 : OK\n");
  }else {
    printf(" calc45 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc46(b2,x2);
  if ((creal(a2) == -9.0) && (cimag(a2) == 2.0)){
    printf(" calc46 : OK\n");
  }else {
    printf(" calc46 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc47(b2,x2);
  if ((creal(a2) == 10.0) && (cimag(a2) == 20.0)){
    printf(" calc47 : OK\n");
  }else {
    printf(" calc47 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc48(b2,x2);
  dist2 = cabs(a2 - (0.100 + 0.200i));
  if (dist2 < 100){
    printf(" calc48 : OK\n");
  }else {
    printf(" calc48 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc49(b2,x2,y2);
  if ((creal(a2) == 31.0) && (cimag(a2) == 2.0)){
    printf(" calc49 : OK\n");
  }else {
    printf(" calc49 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc50(b2,x2,y2);
  if ((creal(a2) == -11.0) && (cimag(a2) == -2.0)){
    printf(" calc50 : OK\n");
  }else {
    printf(" calc50 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc51(b2,x2,y2);
  if ((creal(a2) == 210.0) && (cimag(a2) == 20.0)){
    printf(" calc51 : OK\n");
  }else {
    printf(" calc51 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc52(b2,x2,y2);
  dist2 = cabs(a2 - (0.471 + -4.494E-02i));
  if (dist2 < 0.01){
    printf(" calc52 : OK\n");
  }else {
    printf(" calc52 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc53(b2,x2,y2);
  if ((creal(a2) == -9.0) && (cimag(a2) == 2.0)){
    printf(" calc53 : OK\n");
  }else {
    printf(" calc53 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc54(b2,x2,y2);
  if ((creal(a2) == 29.0) && (cimag(a2) == -2.0)){
    printf(" calc54 : OK\n");
  }else {
    printf(" calc54 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc55(b2,x2,y2);
  if ((creal(a2) == -190.0) && (cimag(a2) == 20.0)){
    printf(" calc55 : OK\n");
  }else {
    printf(" calc55 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc56(b2,x2,y2);
  dist2 = cabs(a2 - (-0.520 + -5.479E-02i));
  if (dist2 < 0.01){
    printf(" calc56 : OK\n");
  }else {
    printf(" calc56 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc57(b2,x2,y2);
  if ((creal(a2) == 30.0) && (cimag(a2) == 40.0)){
    printf(" calc57 : OK\n");
  }else {
    printf(" calc57 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc58(b2,x2,y2);
  if ((creal(a2) == -10.0) && (cimag(a2) == -40.0)){
    printf(" calc58 : OK\n");
  }else {
    printf(" calc58 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc59(b2,x2,y2);
  if ((creal(a2) == 200.0) && (cimag(a2) == 400.0)){
    printf(" calc59 : OK\n");
  }else {
    printf(" calc59 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }
  
  a2 = calc60(b2,x2,y2);
  dist2 = cabs(a2 - (0.100 + -0.200i));
  if (dist2 < 0.01){
    printf(" calc60 : OK\n");
  }else {
    printf(" calc60 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc61(b2,x2,y2);
  dist2 = cabs(a2 - (10.05 + 0.100i));
  if (dist2 < 0.01){
    printf(" calc61 : OK\n");
  }else {
    printf(" calc61 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc62(b2,x2,y2);
  dist2 = cabs(a2 - (9.950 + -0.100i));
  if (dist2 < 0.01){
    printf(" calc62 : OK\n");
  }else {
    printf(" calc62 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc63(b2,x2,y2);
  if ((creal(a2) == 0.5) && (cimag(a2) == 1.0)){
    printf(" calc63 : OK\n");
  }else {
    printf(" calc63 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc64(b2,x2,y2);
  dist2 = cabs(a2 - (40.0 + -80.0i));
  if (dist2 < 0.00000000000002){
    printf(" calc64 : OK\n");
  }else {
    printf(" calc64 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc65(b2,c2,x2);
  if ((creal(a2) == 12.0) && (cimag(a2) == 5.0)){
    printf(" calc65 : OK\n");
  }else {
    printf(" calc65 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc66(b2,c2,x2);
  if ((creal(a2) == -10.0) && (cimag(a2) == -1.0)){
    printf(" calc66 : OK\n");
  }else {
    printf(" calc66 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc67(b2,c2,x2);
  if ((creal(a2) == 5.0) && (cimag(a2) == 25.0)){
    printf(" calc67 : OK\n");
  }else {
    printf(" calc67 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc68(b2,c2,x2);
  dist2 = cabs(a2 - (0.130 + 0.146i));
  if (dist2 < 0.01){
    printf(" calc68 : OK\n");
  }else {
    printf(" calc68 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc69(b2,c2,x2);
  if ((creal(a2) == -8.0) && (cimag(a2) == 5.0)){
    printf(" calc69 : OK\n");
  }else {
    printf(" calc69 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc70(b2,c2,x2);
  if ((creal(a2) == 10.0) && (cimag(a2) == -1.0)){
    printf(" calc70 : OK\n");
  }else {
    printf(" calc70 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc71(b2,c2,x2);
  if ((creal(a2) == -15.0) && (cimag(a2) == -15.0)){
    printf(" calc71 : OK\n");
  }else {
    printf(" calc71 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc72(b2,c2,x2);
  dist2 = cabs(a2 - (-3.333E-02 + -0.233i));
  if (dist2 < 0.01){
    printf(" calc72 : OK\n");
  }else {
    printf(" calc72 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc73(b2,c2,x2);
  if ((creal(a2) == 11.0) && (cimag(a2) == 32.0)){
    printf(" calc73 : OK\n");
  }else {
    printf(" calc73 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc74(b2,c2,x2);
  if ((creal(a2) == -9.0) && (cimag(a2) == -28.0)){
    printf(" calc74 : OK\n");
  }else {
    printf(" calc74 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc75(b2,c2,x2);
  if ((creal(a2) == -50.0) && (cimag(a2) == 50.0)){
    printf(" calc75 : OK\n");
  }else {
    printf(" calc75 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc76(b2,c2,x2);
  dist2 = cabs(a2 - (7.000E-02 + -9.999E-03i));
  if (dist2 < 0.01){
    printf(" calc76 : OK\n");
  }else {
    printf(" calc76 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc77(b2,c2,x2);
  dist2 = cabs(a2 - (1.100 + 2.300i));
  if (dist2 < 0.01){
    printf(" calc77 : OK\n");
  }else {
    printf(" calc77 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc78(b2,c2,x2);
  dist2 = cabs(a2 - (0.900 + 1.700i));
  if (dist2 < 0.01){
    printf(" calc78 : OK\n");
  }else {
    printf(" calc78 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc79(b2,c2,x2);
  if ((creal(a2) == -0.5) && (cimag(a2) == 0.5)){
    printf(" calc79 : OK\n");
  }else {
    printf(" calc79 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a2 = calc80(b2,c2,x2);
  dist2 = cabs(a2 - (7.0 + -1.0i));
  if (dist2 < 0.01){
    printf(" calc80 : OK\n");
  }else {
    printf(" calc80 : NG a=(%f,%f)\n",creal(a2),cimag(a2));
  }
}



