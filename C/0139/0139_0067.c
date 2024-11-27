#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int test3 (void);
int test2 (void);
int test1 (void);
  
  
  
  
  
  
  
  

int main (void)
 {
 printf(" *** \n");
 test1();
 test2();
 test3();
 printf(" *** \n");
exit (0);
 }

 typedef unsigned char uc_type;
 unsigned char exuc=255;
 extern unsigned char exa[3]={ 128, 255, 0 };
 unsigned char static stuc;
 struct sttag { signed char sc;  unsigned char uc; } ;

 int test1 (void)
 {
 unsigned char uc;
 auto unsigned char auc;
 register unsigned char ruc;
 unsigned char uca[4] = { 127, 255, 1, 0 };
 unsigned char ucfnc(unsigned char);
 unsigned char const cuc=0;
 unsigned char volatile vuc;
 unsigned char *ucp;
 struct tagx  *stp;
 struct sttag st = { -128, 128 };
 struct tagx { char c ; unsigned char uc; } stx = { 255, 255 };

 uc = 255;
 if (uc != 0xff)
     printf(" *** \n");

 auc = uc+1;
 if (auc != 0)
     printf(" *** \n");

 ruc = -uc;
 if (ruc != 1)
     printf(" *** \n");

 if (uca[1]-*(uca+0)-uca[2]-*(uca+3) != 127)
     printf(" *** \n");

 if (ucfnc(7) != st.uc)
     printf(" *** \n");

 if (cuc != exa[2])
     printf(" *** \n");

 vuc = uc | 0;
 if (vuc != 255)
     printf(" *** \n");

 ucp = uca;
 if (ucp[0]+*(ucp+2) != 128)
     printf(" *** \n");

 stp=&stx;
 if (stp->uc != uca[0]+st.uc)
     printf(" *** \n");

 if (st.uc != uca[0]+uca[2])
     printf(" *** \n");
 }

 int test2 (void)
 {
 uc_type *ucp=exa;
 volatile uc_type auto avuc=10;
 unsigned const register char rcuc=1;
 volatile unsigned auto char const avcuc=1;

 if (ucp[1]-ucp[0]-ucp[2] != 127)
     printf(" *** \n");

 if (-avuc != -10)
     printf(" *** \n");

 if (-rcuc != -avcuc)
     printf(" *** \n");

 stuc = exuc;
 if (stuc != 255)
     printf(" *** \n");

 }

 int test3 (void)
 {
 unsigned char ucfnc(unsigned char uc);
 extern unsigned char ucfnc2(unsigned char *uc);
 unsigned char uc=7,*ucp=&uc;

 if (ucfnc(uc) != 128)
     printf(" *** \n");

 if (ucfnc2(ucp) != 1)
     printf(" *** \n");
 }

 unsigned char extern ucfnc(unsigned char ucvar)
 {
 unsigned char uc=1;
 return uc<<ucvar;
 }

 unsigned char 
ucfnc2 (unsigned char *ucvarp)
 {
 unsigned char uc=-128;
 return uc>>*ucvarp;
 }
