#include <stdio.h>
int test2_3 (void);
int test2_2 (void);
int test2_1 (void);
int test1_3 (void);
int test1_2 (void);
int test1_1 (void);
int main()
 {
 printf(" ***  TEST START ***\n");
 test1_1();
 test1_2();
 test1_3();
 test2_1();
 test2_2();
 test2_3();
 printf(" ***  TEST END ***\n");
 }

 typedef unsigned short us_type;
 unsigned short exus=65535;
 extern unsigned short exa[3]={ 65535, 32768, 0 };
 unsigned short static stus;
 struct sttag { int a;  unsigned short us; } ;

 int 
test1_1 (void)
 {
 unsigned short us;
 auto unsigned short aus;
 register unsigned short rus;
 unsigned short usa[4] = { 256, 32767, 32768, 1 };
 unsigned short usfnc(unsigned short int);
 unsigned short const cus=0;
 unsigned short volatile vus;
 unsigned short *usp;
 struct tagx  *stp;
 struct sttag st = { -2147483648, 65535 };
 struct tagx { short s; unsigned short us; } stx = { -32768,65535 };

 us = 65535;
 if (us != 0xffff)
     printf(" ***  TEST 1-1 ERROR ***\n");

 aus = us+1;
 if (aus != 0)
     printf(" ***  TEST 1-2 ERROR ***\n");

 rus = -us;
 if (rus != 1)
     printf(" ***  TEST 1-3 ERROR ***\n");

 if (usa[0]+*(usa+1)-usa[2]+*(usa+3) != usa[0])
     printf(" ***  TEST 1-4 ERROR ***\n");

 if (usfnc(15) != 32768)
     printf(" ***  TEST 1-5 ERROR ***\n");

 if (cus != exa[2])
     printf(" ***  TEST 1-6 ERROR ***\n");

 vus = us | 0;
 if (vus != 65535)
     printf(" ***  TEST 1-7 ERROR ***\n");

 usp = usa;
 if (usp[1]+*(usp+2) != st.us)
     printf(" ***  TEST 1-8 ERROR ***\n");

 stp=&stx;
 if (stp->us != 0xffff)
     printf(" ***  TEST 1-9 ERROR ***\n");

 if (st.us != stp->us)
     printf(" ***  TEST 1-10 ERROR ***\n");
 }

 int 
test1_2 (void)
 {
 us_type *usp=exa;
 volatile us_type auto avus=65535;
 unsigned const register short rcus=-1;
 volatile unsigned auto short const avcus=65535;

 if (usp[0]-usp[1]-usp[2] != 32767)
     printf(" ***  TEST 2-1 ERROR ***\n");

 if (-avus != -65535)
     printf(" ***  TEST 2-2 ERROR ***\n");

 if (rcus != avcus)
     printf(" ***  TEST 2-3 ERROR ***\n");

 stus = exus;
 if (stus != 65535)
     printf(" ***  TEST 2-4 ERROR ***\n");

 }

 int 
test1_3 (void)
 {
 unsigned short usfnc(unsigned short us);
 extern unsigned short usfnc2(unsigned short *us);
 unsigned short us=15,*usp=&us;

 if (usfnc(us) != 32768)
     printf(" ***  TEST 3-1 ERROR ***\n");

 if (usfnc2(usp) != 1)
     printf(" ***  TEST 3-2 ERROR ***\n");
 }

 unsigned short extern usfnc(unsigned short usvar)
 {
 unsigned short us=1;
 return us<<usvar;
 }

 unsigned short 
usfnc2 (unsigned short *usvarp)
 {
 unsigned short us=32768;
 return us>>*usvarp;
 }

 typedef unsigned short int usi_type;
 unsigned short int exusi=65535;
 extern unsigned short int exai[3]={ 65535, 32768, 0 };
 unsigned short int static stusi;
 struct sttag2 { int a; unsigned short int usi; } ;

 int 
test2_1 (void)
 {
 unsigned short int usi;
 auto unsigned short int ausi;
 register unsigned short int rusi;
 unsigned short int usia[4] = { 256, 32767, 32768, 1 };
 unsigned short int usifnc(unsigned short int);
 unsigned short int const cusi=0;
 unsigned short int volatile vusi;
 unsigned short int *usip;
 struct tagx  *stp;
 struct sttag2 st = { -2147483648, 65535 };
 struct tagx {short s; unsigned short int usi;}stx={ -32768,65535 };

 usi = 65535;
 if (usi != 0xffff)
     printf(" ***  TEST 4-1 ERROR ***\n");

 ausi = usi+1;
 if (ausi != 0)
     printf(" ***  TEST 4-2 ERROR ***\n");

 rusi = -usi;
 if (rusi != 1)
     printf(" ***  TEST 4-3 ERROR ***\n");

 if (usia[0]+*(usia+1)-usia[2]+*(usia+3) != usia[0])
     printf(" ***  TEST 4-4 ERROR ***\n");

 if (usifnc(15) != 32768)
     printf(" ***  TEST 4-5 ERROR ***\n");

 if (cusi != exai[2])
     printf(" ***  TEST 4-6 ERROR ***\n");

 vusi = usi | 0;
 if (vusi != 65535)
     printf(" ***  TEST 4-7 ERROR ***\n");

 usip = usia;
 if (usip[1]+*(usip+2) != st.usi)
     printf(" ***  TEST 4-8 ERROR ***\n");

 stp=&stx;
 if (stp->usi != 0xffff)
     printf(" ***  TEST 4-9 ERROR ***\n");

 if (st.usi != stp->usi)
     printf(" ***  TEST 4-10 ERROR ***\n");
 }

 int 
test2_2 (void)
 {
 usi_type *usip=exai;
 volatile usi_type auto avusi=65535;
 int const register short unsigned rcusi=-1;
 volatile unsigned auto short const int avcusi=65535;

 if (usip[0]-usip[1]-usip[2] != 32767)
     printf(" ***  TEST 5-1 ERROR ***\n");

 if (-avusi != -65535)
     printf(" ***  TEST 5-2 ERROR ***\n");

 if (rcusi != avcusi)
     printf(" ***  TEST 5-3 ERROR ***\n");

 stusi = exusi;
 if (stusi != 65535)
     printf(" ***  TEST 5-4 ERROR ***\n");

 }

 int 
test2_3 (void)
 {
 unsigned short int usifnc(unsigned short int usi);
 extern unsigned short int usifnc2(unsigned short int *usi);
 unsigned short int usi=15,*usip=&usi;

 if (usifnc(usi) != 32768)
     printf(" ***  TEST 6-1 ERROR ***\n");

 if (usifnc2(usip) != 1)
     printf(" ***  TEST 6-2 ERROR ***\n");
 }

 unsigned short int extern usifnc(unsigned short int usivar)
 {
 unsigned short int usi=1;
 return usi<<usivar;
 }

 unsigned short int 
usifnc2 (unsigned short int *usivarp)
 {
 unsigned short int usi=32768;
 return usi>>*usivarp;
 }

