#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int test3 (void);
int test2 (void);
int test1 (void);
  
  
  
  
  
  
  
  


 typedef float f_type;
 float exf=1.25;
 extern float exa[3]={ 1.5, 2.5, 3.5 };
 float static stf;
 struct sttag { int a;  float f; } ;
int main (void)
 {
 printf(" *** \n");
 test1();
 test2();
 test3();
 printf(" *** \n");
exit (0);
 }

 int test1 (void)
 {
 float f;
 auto float af;
 register float rf;
 float fa[5] = { -1.25e7f, -0.125f, 0.0f, 0.125f, 1.25e7f };
 float ffnc(float);
 float const fc=0.0;
 float volatile fv;
 float *fp;
 struct sttag st = { 100, -100.25 };

 f = 125e5;
 if (f != 1.25e7)
     printf(" *** \n");

 af = f-1e7;
 if (af != 2.5e6)
     printf(" *** \n");

 rf = f + af;
 if (rf != 1.5e7)
     printf(" *** \n");

 if ((fa[0]+*(fa+1))+fa[2]+(*(fa+3)+fa[4]) != 0)
     printf(" *** \n");

 if (ffnc(rf) != 2.5e6)
     printf(" *** \n");

 if (fc != fa[2])
     printf(" *** \n");

 fv = f - 125e4;
 if (fv != 1125e4)
     printf(" *** \n");

 fp = fa;
 if (*fp-*(fp+4)+fp[2] != -2.5e7)
     printf(" *** \n");

 if (st.f != -1.0025e2)
     printf(" *** \n");
 }

 int test2 (void)
 {
 f_type *fp=exa;
 f_type volatile auto avf=1e7;
 const register float rcf=-9.9;
 volatile float const auto avcf=9.9;

 if (fp[0]+fp[1]+fp[2] != 7.5)
     printf(" *** \n");

 if (-avf != -1e7)
     printf(" *** \n");

 if (rcf != -avcf)
     printf(" *** \n");

 stf = exf;
 if (stf != 1.25)
     printf(" *** \n");

 }

 int test3 (void)
 {
 float ffnc(float f);
 extern float ffnc2(float *f);
 float f=1.25e7,*fp=&f;

 if (ffnc(f) != 0.0e70)
     printf(" *** \n");

 if (ffnc2(fp) != -2.5e7)
     printf(" *** \n");
 }

 float extern ffnc(float fvar)
 {
 float f=-1.25e7;
 return f+fvar;
 }

 float 
ffnc2 (float *fvar)
 {
 float f=-1.25e7;
 return f-*fvar;
 }
