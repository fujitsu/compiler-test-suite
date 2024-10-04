#include <stdio.h>
int test3 (void);
int test2 (void);
int test1 (void);
int main()
 {
 printf(" ***  TEST START ***\n");
 test1();
 test2();
 test3();
 printf(" ***  TEST END ***\n");
 }

 typedef unsigned char uc_type;
 unsigned char exuc=255;
 extern unsigned char exa[3]={ 128, 255, 0 };
 unsigned char static stuc;
 struct sttag { signed char sc;  unsigned char uc; } ;

 int 
test1 (void)
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
     printf(" ***  TEST 1-1 ERROR ***\n");

 auc = uc+1;
 if (auc != 0)
     printf(" ***  TEST 1-2 ERROR ***\n");

 ruc = -uc;
 if (ruc != 1)
     printf(" ***  TEST 1-3 ERROR ***\n");

 if (uca[1]-*(uca+0)-uca[2]-*(uca+3) != 127)
     printf(" ***  TEST 1-4 ERROR ***\n");

 if (ucfnc(7) != st.uc)
     printf(" ***  TEST 1-5 ERROR ***\n");

 if (cuc != exa[2])
     printf(" ***  TEST 1-6 ERROR ***\n");

 vuc = uc | 0;
 if (vuc != 255)
     printf(" ***  TEST 1-7 ERROR ***\n");

 ucp = uca;
 if (ucp[0]+*(ucp+2) != 128)
     printf(" ***  TEST 1-8 ERROR ***\n");

 stp=&stx;
 if (stp->uc != uca[0]+st.uc)
     printf(" ***  TEST 1-9 ERROR ***\n");

 if (st.uc != uca[0]+uca[2])
     printf(" ***  TEST 1-10 ERROR ***\n");
 }

 int 
test2 (void)
 {
 uc_type *ucp=exa;
 volatile uc_type auto avuc=10;
 unsigned const register char rcuc=1;
 volatile unsigned auto char const avcuc=1;

 if (ucp[1]-ucp[0]-ucp[2] != 127)
     printf(" ***  TEST 2-1 ERROR ***\n");

 if (-avuc != -10)
     printf(" ***  TEST 2-2 ERROR ***\n");

 if (-rcuc != -avcuc)
     printf(" ***  TEST 2-3 ERROR ***\n");

 stuc = exuc;
 if (stuc != 255)
     printf(" ***  TEST 2-4 ERROR ***\n");

 }

 int 
test3 (void)
 {
 unsigned char ucfnc(unsigned char uc);
 extern unsigned char ucfnc2(unsigned char *uc);
 unsigned char uc=7,*ucp=&uc;

 if (ucfnc(uc) != 128)
     printf(" ***  TEST 3-1 ERROR ***\n");

 if (ucfnc2(ucp) != 1)
     printf(" ***  TEST 3-2 ERROR ***\n");
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
