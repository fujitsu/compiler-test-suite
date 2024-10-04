#include <stdio.h>
int test3 (void);
int test2 (void);
int test1 (void);
int main()
 {
 printf(" ***  TEST START ***\ \n");
 test1();
 test2();
 test3();
 printf(" ***  TEST END ***\n");
 }

 typedef signed char sc_type;
 signed char exsc=-128;
 extern signed char exa[3]={ 127, -128, 0 };
 signed char static stsc;
 struct sttag { int a;  signed char sc; } ;

 int 
test1 (void)
 {
 signed char sc;
 auto signed char asc;
 register signed char rsc;
 signed char sca[4] = { -128, 127, 256, 1 };
 signed char scfnc(signed char);
 signed char const csc=0;
 signed char volatile vsc;
 signed char *scp;
 struct tagx  *stp;
 struct sttag st = { -2147483648, 128 };
 struct tagx { char c ; signed char sc; } stx = { 255, -128 };

 sc = 127;
 if (sc != 0x7f)
     printf(" ***  TEST 1-1 ERROR ***\n");

 asc = -sc-1;
 if (asc != -128)
     printf(" ***  TEST 1-2 ERROR ***\n");

 rsc = -sc;
 if (rsc != -127)
     printf(" ***  TEST 1-3 ERROR ***\n");

 if (sca[0]+*(sca+1)+sca[2]+*(sca+3) != 0)
     printf(" ***  TEST 1-4 ERROR ***\n");

 if (scfnc(7) != *sca)
     printf(" ***  TEST 1-5 ERROR ***\n");

 if (csc != exa[2])
     printf(" ***  TEST 1-6 ERROR ***\n");

 vsc = sc | 0;
 if (vsc != 127)
     printf(" ***  TEST 1-7 ERROR ***\n");

 scp = sca;
 if (scp[0]+*(scp+1) != -1)
     printf(" ***  TEST 1-8 ERROR ***\n");

 stp=&stx;
 if (stp->sc != sca[0])
     printf(" ***  TEST 1-9 ERROR ***\n");

 if (st.sc != -sca[1]-sca[3])
     printf(" ***  TEST 1-10 ERROR ***\n");
 }

 int 
test2 (void)
 {
 sc_type *scp=exa;
 volatile sc_type auto avsc=10;
 signed const register char rcsc=-1;
 volatile signed auto char const avcsc=1;

 if (scp[0]+scp[1]+scp[2] != -1)
     printf(" ***  TEST 2-1 ERROR ***\n");

 if (-avsc != -10)
     printf(" ***  TEST 2-2 ERROR ***\n");

 if (rcsc != -avcsc)
     printf(" ***  TEST 2-3 ERROR ***\n");

 stsc = exsc;
 if (stsc != -128)
     printf(" ***  TEST 2-4 ERROR ***\n");

 }

 int 
test3 (void)
 {
 signed char scfnc(signed char sc);
 extern signed char scfnc2(signed char *sc);
 signed char sc=7,*scp=&sc;

 if (scfnc(sc) != -128)
     printf(" ***  TEST 3-1 ERROR ***\n");

 if (scfnc2(scp) != -1)
     printf(" ***  TEST 3-2 ERROR ***\n");
 }

 signed char extern scfnc(signed char scvar)
 {
 signed char sc=1;
 return sc<<scvar;
 }

 signed char 
scfnc2 (signed char *scvarp)
 {
 signed char sc=-128;
 return sc>>*scvarp;
 }
