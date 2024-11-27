#include <stdio.h>
#include <complex.h>
#define  complexfloat  _Complex float
#define  complexdouble  _Complex double
#define  complexlongdouble _Complex long double

#define m 100

char *p1;
short int  *p2;
unsigned short int  *p3;
int  *p4;
unsigned int  *p5;
long  *p6;
unsigned long  *p7;
float  *p8;
double  *p9;
long double  *pa;
complexfloat *pb;
complexdouble *pc;
complexlongdouble *pd;

void init(void)
{
  int i;



  for (i=0; i<m; i++) {
    p1[i] = '0';
    p2[i] = 0;
    p3[i] = 0;
    p4[i] = 0;
    p5[i] = 0;
    p6[i] = 0;
    p7[i] = 0;
    p8[i] = 0.0;
    p9[i] = 0.0;
    pa[i] = 0.0;
    pb[i] = 0.0 + 0.0i;
    pc[i] = 0.0 + 0.0i;
    pd[i] = 0.0 + 0.0i;
  }
}

void foo1(int n)
{
  int i;




  for (i=0; i<n; i++) {
    p1[i] = '1';
  }



  for (i=0; i<n; i++) {
    p2[i] = 1;
  }



  for (i=0; i<n; i++) {
    p3[i] = 1;
  }



  for (i=0; i<n; i++) {
    p4[i] = 1.0;
  }



  for (i=0; i<n; i++) {
    p5[i] = 1;
  }



  for (i=0; i<n; i++) {
    p6[i] = 1;
  }



  for (i=0; i<n; i++) {
    p7[i] = 1;
  }



  for (i=0; i<n; i++) {
    p8[i] = 1.0;
  }



  for (i=0; i<n; i++) {
    p9[i] = 1.0;
  }



  for (i=0; i<n; i++) {
    pa[i] = 1.0;
  }



  for (i=0; i<n; i++) {
    pb[i] = 1.0 + 1.0i;
  }



  for (i=0; i<n; i++) {
    pc[i] = 1.0 + 1.0i;
  }



  for (i=0; i<n; i++) {
    pd[i] = 1.0 + 1.0i;
  }
}

int main()
{
  int i;
  char a1[m];
  short int  a2[m];
  unsigned short int  a3[m];
  int  a4[m];
  unsigned int  a5[m];
  long  a6[m];
  unsigned long  a7[m];
  float  a8[m];
  double  a9[m];
  long double  aa[m];
  complexfloat ab[m];
  complexdouble ac[m];
  complexlongdouble ad[m];
  short int result1;
  short int  result2;
  unsigned short int  result3;
  int  result4;
  unsigned int  result5;
  long  result6;
  unsigned long result7;
  float  result8;
  double  result9;
  long double  resulta;
  float resultb;
  double resultc;
  long double resultd;

  p1 = a1;
  p2 = a2;
  p3 = a3;
  p4 = a4;
  p5 = a5;
  p6 = a6;
  p7 = a7;
  p8 = a8;
  p9 = a9;
  pa = aa;
  pb = ab;
  pc = ac;
  pd = ad;

  init();
  foo1(m);

  result1 = 0;
  result2 = 0;
  result3 = 0;
  result4 = 0;
  result5 = 0;
  result6 = 0;
  result7 = 0;
  result8 = 0.0;
  result9 = 0.0;
  resulta = 0.0;
  resultb = 0.0 + 0.0i;
  resultc = 0.0 + 0.0i;
  resultd = 0.0 + 0.0i;

  for (i=0; i<m; i++) {
    result1 += (short int)a1[i];
    result2 += a2[i];
    result3 += a3[i];
    result4 += a4[i];
    result5 += a5[i];
    result6 += a6[i];
    result7 += a7[i];
    result8 += a8[i];
    result9 += a9[i];
    resulta += aa[i];
    resultb += (float)ab[i];
    resultc += (double)ac[i];
    resultd += (long double)ad[i];
  }
  printf("%d\n",result1);
  printf("%d\n",result2);
  printf("%d\n",result3);
  printf("%d\n",result4);
  printf("%u\n",result5);
  printf("%ld\n",result6);
  printf("%lu\n",result7);
  printf("%f\n",result8);
  printf("%lf\n",result9);
  printf("%llf\n",resulta);
  printf("%f\n",resultb);
  printf("%lf\n",resultc);
  printf("%llf\n",resultd);
  
  return 0;
}
