#include <stdio.h>
#include <complex.h>

float _Complex power1(float _Complex b, float _Complex c)
{
  return cpowf(b,c)+b;
}

double _Complex power1_2(double _Complex b, double _Complex c)
{
  return cpow(b,c)+b;
}

float _Complex power2(float _Complex b, float _Complex c)
{
  return cpowf(b,c)-b;
}

double _Complex power2_2(double _Complex b, double _Complex c)
{
  return cpow(b,c)-b;
}

float _Complex power3(float _Complex b, float _Complex c)
{
  return cpowf(b,c)*b;
}

double _Complex power3_2(double _Complex b, double _Complex c)
{
  return cpow(b,c)*b;
}

float _Complex power4(float _Complex b, float _Complex c)
{
  return cpowf(b,c)/b;
}

double _Complex power4_2(double _Complex b, double _Complex c)
{
  return cpow(b,c)/b;
}

float _Complex power5(float _Complex b, float _Complex c)
{
  return cpowf((b+c),b);
}

double _Complex power5_2(double _Complex b, double _Complex c)
{
  return cpow((b+c),b);
}

float _Complex power6(float _Complex b, float _Complex c)
{
  return cpowf((b-c),b);
}

double _Complex power6_2(double _Complex b, double _Complex c)
{
  return cpow((b-c),b);
}

float _Complex power7(float _Complex b, float _Complex c)
{
  return cpowf((b*c),b);
}

double _Complex power7_2(double _Complex b, double _Complex c)
{
  return cpow((b*c),b);
}

float _Complex power8(float _Complex b, float _Complex c)
{
  return cpowf((b/c),b);
}

double _Complex power8_2(double _Complex b, double _Complex c)
{
  return cpow((b/c),b);
}

void power9(float _Complex aa[], float _Complex d[], float _Complex e[],
	    float _Complex f[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]+e[i]),f[i]);
  }
}

void power9_2(double _Complex aa[], double _Complex d[], double _Complex e[],
	      double _Complex f[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]+e[i]),f[i]);
  }
}

void power10(float _Complex aa[] ,float _Complex d[], float _Complex e[],
	     float _Complex f[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]-e[i]),f[i]);
  }
}

void power10_2(double _Complex aa[], double _Complex d[],
	       double _Complex e[], double _Complex f[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]-e[i]),f[i]);
  }
}

void power11(float _Complex aa[], float _Complex d[], float _Complex e[],
		       float _Complex f[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]*e[i]),f[i]);
  }
}

void power11_2(double _Complex aa[], double _Complex d[],
	       double _Complex e[], double _Complex f[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]*e[i]),f[i]);
  }
}

void power12(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]/e[i]),f[i]);
  }
}

void power12_2(double _Complex aa[], double _Complex d[], double _Complex e[],
	       double _Complex f[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]/e[i]),f[i]);
  }
}

void power13(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]+e[i]),(f[i]-g[i]));
  }
}

void power13_2(double _Complex aa[], double _Complex d[], double _Complex e[],
	       double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]+e[i]),(f[i]-g[i]));
  }
}

void power14(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]-e[i]),(f[i]*g[i]));
  }
}

void power14_2(double _Complex aa[], double _Complex d[], double _Complex e[], 
	       double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]-e[i]),(f[i]*g[i]));
  }
}

void power15(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]*e[i]),(f[i]/g[i]));
  }
}

void power15_2(double _Complex aa[], double _Complex d[], double _Complex e[],
	       double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]*e[i]),(f[i]/g[i]));
  }
}

void power16(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]/e[i]),(f[i]+g[i]));
  }
}

void power16_2(double _Complex aa[], double _Complex d[], double _Complex e[],
	       double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]/e[i]),(f[i]+g[i]));
  }
}

void power17(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]+e[i]),(f[i]*g[i]));
  }
}

void power17_2(double _Complex aa[], double _Complex d[], double _Complex e[],
	       double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]+e[i]),(f[i]*g[i]));
  }
}

void power18(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]-e[i]),(f[i]/g[i]));
  }
}

void power18_2(double _Complex aa[], double _Complex d[], double _Complex e[],
	       double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]-e[i]),(f[i]/g[i]));
  }
}

void power19(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]*e[i]),(f[i]+g[i]));
  }
}

void power19_2(double _Complex aa[], double _Complex d[], double _Complex e[],
	       double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]*e[i]),(f[i]+g[i]));
  }
}

void power20(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]/e[i]),(f[i]-g[i]));
  }
}

void power20_2(double _Complex aa[], double _Complex d[], double _Complex e[],
	       double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]/e[i]),(f[i]-g[i]));
  }
}

void power21(float _Complex aa[], float _Complex d[], float _Complex e[], 
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]+e[i]),(f[i]/g[i]));
  }
}

void  power21_2(double _Complex aa[], double _Complex d[], double _Complex e[],
		double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]+e[i]),(f[i]/g[i]));
  }
}

void  power22(float _Complex aa[], float _Complex d[], float _Complex e[],
	      float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]-e[i]),(f[i]+g[i]));
  }
}

void  power22_2(double _Complex aa[], double _Complex d[], double _Complex e[],
		double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]-e[i]),(f[i]+g[i]));
  }
}

void power23(float _Complex aa[], float _Complex d[], float _Complex e[],
	     float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]*e[i]),(f[i]-g[i]));
  }
}

void  power23_2(double _Complex aa[], double _Complex d[], double _Complex e[],
		double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]*e[i]),(f[i]-g[i]));
  }
}

void  power24(float _Complex aa[], float _Complex d[], float _Complex e[],
	      float _Complex f[], float _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpowf((d[i]/e[i]),(f[i]*g[i]));
  }
}

void  power24_2(double _Complex aa[], double _Complex d[], double _Complex e[],
		double _Complex f[], double _Complex g[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++){
    aa[i] = cpow((d[i]/e[i]),(f[i]*g[i]));
  }
}

float _Complex c_sqrt1(float _Complex b)
{
  return csqrtf(b);
}

double _Complex c_sqrt1_2(double _Complex b)
{
  return csqrt(b);
}

float _Complex c_sqrt2(float _Complex b, float _Complex c)
{
  return csqrtf(b+c);
}

double _Complex c_sqrt2_2(double _Complex b, double _Complex c)
{
  return csqrt(b+c);
}

float _Complex c_sqrt3(float _Complex b, float _Complex c)
{
  return csqrtf(b*c);
}

double _Complex c_sqrt3_2(double _Complex b, double _Complex c)
{
  return csqrt(b*c);
}

float _Complex c_sqrt4(float _Complex b, float _Complex c)
{
  return csqrtf(b/c);
}

double _Complex c_sqrt4_2(double _Complex b, double _Complex c)
{
  return csqrt(b/c);
}

float _Complex c_sqrt5(float _Complex b, float _Complex c)
{
  return csqrtf(b)+c;
}

double _Complex c_sqrt5_2(double _Complex b, double _Complex c)
{
  return csqrt(b)+c;
}

float _Complex c_sqrt6(float _Complex b, float _Complex c)
{
  return csqrtf(b)-c;
}

double _Complex c_sqrt6_2(double _Complex b, double _Complex c)
{
  return csqrt(b)-c;
}

float _Complex c_sqrt7(float _Complex b, float _Complex c)
{
  return csqrtf(b)*c;
}

double _Complex c_sqrt7_2(double _Complex b, double _Complex c)
{
  return csqrt(b)*c;
}

float _Complex c_sqrt8(float _Complex b, float _Complex c)
{
  return csqrtf(b)/c;
}

double _Complex c_sqrt8_2(double _Complex b, double _Complex c)
{
  return csqrt(b)/c;
}

float _Complex csumf(float _Complex elm[], int index) {
  int i;
  float _Complex ans;
  
  ans = 0.0f + 0.0fi; 
  for (i=0; i<index; i++) {
    ans = ans + elm[i]; 
  }
  return ans;
}

double _Complex csum(double _Complex elm[], int index) {
  int i;
  double _Complex ans;
  
  ans = 0.0 + 0.0i; 
  for (i=0; i<index; i++) {
    ans = ans + elm[i]; 
  }
  return ans;
}
int main()
{
  float  _Complex  a,b,c,aa[5],d[5],e[5],f[5],g[5];
  double _Complex a2,b2,c2,aa2[5],d2[5],e2[5],f2[5],g2[5];
  float  dist;
  double ddist;
  int    loop_size,i;

  loop_size = 5;
  b    = 1.0f + 2.0fi;
  c    = 2.0f + 3.0fi;
  b2   = 1.0  + 2.0i;
  c2   = 2.0  + 3.0i;

  for (i=0; i<loop_size; i++) {
    d[i]  = (i+1) + (i+2) * I;
    e[i]  = (i+1) + (i+3) * I;
    f[i]  = (i+1) + (i+4) * I;
    g[i]  = (i+1) + (i+5) * I;
    d2[i] = (i+1) + (i+2) * I;
    e2[i] = (i+1) + (i+3) * I;
    f2[i] = (i+1) + (i+4) * I;
    g2[i] = (i+1) + (i+5) * I;
    aa[i] = 0;
    aa2[i] = 0;
  }

  a = power1(b,c);
  dist = cabsf(a - (0.984f + 1.820fi));
  if(dist < 0.01) {
    printf(" power : OK\n");
  }else{
    printf(" power : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = power1_2(b2,c2);
  ddist = cabs(a2 - (0.984 + 1.820i));
  if(ddist < 0.01) {
    printf(" power1_2 : OK\n");
  }else{
    printf(" power1_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = power2(b,c);
  dist =  cabsf(a - (-1.015f + -2.179fi));
  if(dist < 0.01) {
    printf(" power2 : OK\n");
  }else{
    printf(" power2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = power2_2(b2,c2);
  ddist = a2 - (-1.015 + -2.179i);
  if(ddist < 0.01) {
    printf(" power2_2 : OK\n");
  }else{
    printf(" power2_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = power3(b,c);
  dist = cabsf(a - (0.344f + -0.210fi));
  if(dist < 0.01) {
    printf(" power3 : OK\n");
  }else{
    printf(" power3 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = power3_2(b2,c2);
  ddist = cabs(a2 - (0.344 + -0.210i));
  if(ddist < 0.01) {
    printf(" power3_2 : OK\n");
  }else{
    printf(" power3_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = power4(b,c);
  dist = cabsf(a - (-7.497E-02f + -2.992E-02fi));
  if(dist < 0.01) {
    printf(" power4 : OK\n");
  }else{
    printf(" power4 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }
  
  a2 = power4_2(b2,c2);
  ddist = a2 - (-7.497E-02 + -2.992E-02i);
  if(ddist < 0.01) {
    printf(" power4_2 : OK\n");
  }else{
    printf(" power4_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }
  
  a = power5(b,c);
  dist = cabsf(a - (-0.115f + -0.733fi));
  if(dist < 0.01) {
    printf(" power5 : OK\n");
  }else{
    printf(" power5 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 =  power5_2(b2,c2);
  ddist = cabs(a2 - (-0.115 + -0.733i));
  if(ddist < 0.01) {
    printf(" power5_2 : OK\n");
  }else{
    printf(" power5_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = power6(b,c);
  dist = cabsf(a - (-14.502f + -156.757fi));
  if(dist < 0.01) {
    printf(" power6 : OK\n");
  }else{
    printf(" power6 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = power6_2(b2,c2);
  ddist = cabs(a2 - (-14.502 + -156.757i));
  if(ddist < 0.01) {
    printf(" power6_2 : OK\n");
  }else{
    printf(" power6_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = power7(b,c);
  dist = cabsf(a - (0.123f + -2.325E-03fi));
  if(dist < 0.01) {
    printf(" power7 : OK\n");
  }else{
    printf(" power7 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = power7_2(b2,c2);
  ddist = cabs(a2 - (0.123 + -2.325E-03i));
  if(ddist < 0.01) {
    printf(" power7_2 : OK\n");
  }else{
    printf(" power7_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = power8(b,c);
  dist = cabsf(a - (0.325f + -0.357fi));
  if(dist < 0.01) {
    printf(" power8 : OK\n");
  }else{
    printf(" power8 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = power8_2(b2,c2);
  ddist = cabs(a2 - (0.325 + -0.357i));
  if(ddist < 0.01) {
    printf(" power8_2 : OK\n");
  }else{
    printf(" power8_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  power9(aa,d,e,f,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 792) {
    printf(" power9 : OK\n");
  }else{
    printf(" power9 : NG %d != 792\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power9_2(aa2,d2,e2,f2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 792) {
    printf(" power9_2 : OK\n");
  }else{
    printf(" power9_2 : NG %d != 792\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power10(aa,d,e,f,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 280749) {
    printf(" power10 : OK\n");
  }else{
    printf(" power10 : NG %d != 280749\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power10_2(aa2,d2,e2,f2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 280749) {
    printf(" power10_2 : OK\n");
  }else{
    printf(" power10_2 : NG %d != 280749\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power11(aa,d,e,f,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 611) {
    printf(" power11 : OK\n");
  }else{
    printf(" power11 : NG %d != 611\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power11_2(aa2,d2,e2,f2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 611) {
    printf(" power11_2 : OK\n");
  }else{
    printf(" power11_2 : NG %d != 611\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power12(aa,d,e,f,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 5) {
    printf(" power12 : OK\n");
  }else{
    printf(" power12 : NG %d != 5\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power12_2(aa2,d2,e2,f2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 5) {
    printf(" power12_2 : OK\n");
  }else{
    printf(" power12_2 : NG %d != 5\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power13(aa,d,e,f,g,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 12) {
    printf(" power13 : OK\n");
  }else{
    printf(" power13 : NG %d != 12\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power13_2(aa2,d2,e2,f2,g2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 12) {
    printf(" power13_2 : OK\n");
  }else{
    printf(" power13_2 : NG %d != 12\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power14(aa,g,f,e,d,loop_size-3);
  if((int)(cabsf(csumf(aa,loop_size))) == 7) {
    printf(" power14 : OK\n");
  }else{
    printf(" power14 : NG %d != 7\n",(int)(cabs(csumf(aa,loop_size))));
  }

  power14_2(aa2,g2,f2,e2,d2,loop_size-3);
  if((int)(cabs(csum(aa2,loop_size))) == 7) {
    printf(" power14_2 : OK\n");
  }else{
    printf(" power14_2 : NG %d != 7\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power15(aa,d,e,f,g,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 123) {
    printf(" power15 : OK\n");
  }else{
    printf(" power15 : NG %d != 123\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power15_2(aa2,d2,e2,f2,g2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 123) {
    printf(" power15_2 : OK\n");
  }else{
    printf(" power15_2 : NG %d != 123\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power16(aa,d,e,f,g,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 7) {
    printf(" power16 : OK\n");
  }else{
    printf(" power16 : NG %d != 7\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power16_2(aa2,d2,e2,f2,g2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 7) {
    printf(" power16_2 : OK\n");
  }else{
    printf(" power16_2 : NG %d != 7\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power17(aa,g,f,e,d,loop_size-3);
  if((int)(cabsf(csumf(aa,loop_size))) == 4) {
    printf(" power17 : OK\n");
  }else{
    printf(" power17 : NG %d != 4\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power17_2(aa2,d2,e2,f2,g2,loop_size-3);
  if((int)(cabs(csum(aa2,loop_size))) == 4) {
    printf(" power17_2 : OK\n");
  }else{
    printf(" power17_2 : NG %d != 4\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power18(aa,d,e,f,g,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 4) {
    printf(" power18 : OK\n");
  }else{
    printf(" power18 : NG %d != 4\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power18_2(aa2,d2,e2,f2,g2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 4) {
    printf(" power18_2 : OK\n");
  }else{
    printf(" power18_2 : NG %d != 4\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power19(aa,d,e,f,g,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 61231) {
    printf(" power19 : OK\n");
  }else{
    printf(" power19 : NG %d != 61231\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power19_2(aa2,d2,e2,f2,g2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 61231) {
    printf(" power19_2 : OK\n");
  }else{
    printf(" power19_2 : NG %d != 61231\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power20(aa,d,e,f,g,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 4) {
    printf(" power20 : OK\n");
  }else{
    printf(" power20 : NG %d != 4\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power20_2(aa2,d2,e2,f2,g2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 4) {
    printf(" power20_2 : OK\n");
  }else{
    printf(" power20_2 : NG %d != 4\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power21(aa,d,e,f,g,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 43) {
    printf(" power21 : OK\n");
  }else{
    printf(" power21 : NG %d != 43\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power21_2(aa2,d2,e2,f2,g2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 43) {
    printf(" power21_2 : OK\n");
  }else{
    printf(" power21_2 : NG %d != 43\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power22(aa,g,f,e,d,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 0) {
    printf(" power22 : OK\n");
  }else{
    printf(" power22 : NG %d != 0\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power22_2(aa2,g2,f2,e2,d2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 0) {
    printf(" power22_2 : OK\n");
  }else{
    printf(" power22_2 : NG %d != 0\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power23(aa,d,e,f,g,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 26) {
    printf(" power23 : OK\n");
  }else{
    printf(" power23 : NG %d != 26\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power23_2(aa2,d2,e2,f2,g2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 26) {
    printf(" power23_2 : OK\n");
  }else{
    printf(" power23_2 : NG %d != 26\n",(int)(cabs(csum(aa2,loop_size))));
  }

  power24(aa,d,e,f,g,loop_size);
  if((int)(cabsf(csumf(aa,loop_size))) == 58197) {
    printf(" power24 : OK\n");
  }else{
    printf(" power24 : NG %d != 58197\n",(int)(cabsf(csumf(aa,loop_size))));
  }

  power24_2(aa2,d2,e2,f2,g2,loop_size);
  if((int)(cabs(csum(aa2,loop_size))) == 58197) {
    printf(" power24_2 : OK\n");
  }else{
    printf(" power24_2 : NG %d != 58197\n",(int)(cabs(csum(aa2,loop_size))));
  }

  a = c_sqrt1(b);
  dist = cabsf(a - (1.272f + 0.786fi));
  if(dist < 0.01) {
    printf(" c_sqrt1 : OK\n");
  }else{
    printf(" c_sqrt1 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = c_sqrt1_2(b2);
  ddist = cabs(a2 - (1.272 + 0.786i));
  if(ddist < 0.01) {
    printf(" c_sqrt1_2 : OK\n");
  }else{
    printf(" c_sqrt1_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = c_sqrt2(b,c);
  dist = cabsf(a - (2.101f + 1.189fi));
  if(dist < 0.01) {
    printf(" c_sqrt2 : OK\n");
  }else{
    printf(" c_sqrt2 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = c_sqrt2_2(b2,c2);
  ddist = cabs(a2 - (2.101 + 1.189i));
  if(ddist < 0.01) {
    printf(" c_sqrt2_2 : OK\n");
  }else{
    printf(" c_sqrt2_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = c_sqrt3(b,c);
  dist = cabsf(a - (1.425f + 2.455fi));
  if(dist < 0.01) {
    printf(" c_sqrt3 : OK\n");
  }else{
    printf(" c_sqrt3 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = c_sqrt3_2(b2,c2);
  ddist = cabs(a2 - (1.425 + 2.455i));
  if(ddist < 0.01) {
    printf(" c_sqrt3_2 : OK\n");
  }else{
    printf(" c_sqrt3_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = c_sqrt4(b,c);
  dist = cabsf(a - (0.785f + 4.893E-02fi));
  if(dist < 0.01) {
    printf(" c_sqrt4 : OK\n");
  }else{
    printf(" c_sqrt4 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = c_sqrt4_2(b2,c2);
  ddist = cabs(a2 - (0.785 + 4.893E-02i));
  if(ddist < 0.01) {
    printf(" c_sqrt4_2 : OK\n");
  }else{
    printf(" c_sqrt4_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = c_sqrt5(b,c);
  dist = cabsf(a - (3.272f + 3.786fi));
  if(dist < 0.01) {
    printf(" c_sqrt5 : OK\n");
  }else{
    printf(" c_sqrt5 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = c_sqrt5_2(b2,c2);
  ddist = cabs(a2 - (3.272 + 3.786i));
  if(ddist < 0.01) {
    printf(" c_sqrt5_2 : OK\n");
  }else{
    printf(" c_sqrt5_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = c_sqrt6(b,c);
  dist = cabsf(a - (-0.727f + -2.213fi));
  if(dist < 0.01) {
    printf(" c_sqrt6 : OK\n");
  }else{
    printf(" c_sqrt6 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = c_sqrt6_2(b2,c2);
  ddist = cabs(a2 - (-0.727 + -2.213i));
  if(ddist < 0.01) {
    printf(" c_sqrt6_2 : OK\n");
  }else{
    printf(" c_sqrt6_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = c_sqrt7(b,c);
  ddist = cabsf(a - (0.185f + 5.388fi));
  if(dist < 0.01) {
    printf(" c_sqrt7 : OK\n");
  }else{
    printf(" c_sqrt7 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = c_sqrt7_2(b2,c2);
  ddist = cabs(a2 - (0.185 + 5.388i));
  if(ddist < 0.01) {
    printf(" c_sqrt7_2 : OK\n");
  }else{
    printf(" c_sqrt7_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }

  a = c_sqrt8(b,c);
  dist = cabsf(a - (0.377f + -0.172fi));
  if(dist < 0.01) {
    printf(" c_sqrt8 : OK\n");
  }else{
    printf(" c_sqrt8 : NG a=(%f,%f)\n",crealf(a),cimagf(a));
  }

  a2 = c_sqrt8_2(b2,c2);
  ddist = cabs(a2 - (0.377 + -0.172i));
  if(ddist < 0.01) {
    printf(" c_sqrt8_2 : OK\n");
  }else{
    printf(" c_sqrt8_2 : NG a2=(%f,%f)\n",creal(a2),cimag(a2));
  }
} 
