#include <stdio.h>
int test2_3 (void);
int test2_2 (void);
int test2_1 (void);
int test1_3 (void);
int test1_2 (void);
int test1_1 (void);
int main()
 {
 printf(" ***  test start *** \n");
 test1_1();
 test1_2();
 test1_3();
 test2_1();
 test2_2();
 test2_3();
 printf(" ***  test end *** \n");
 }

 typedef short s_type;
 short exs=-32768;
 extern short exa[3]={ 32767, -32768, 0 };
 short static sts;
 struct sttag { int a;  short s; } ;

 int 
test1_1 (void)
 {
 short s;
 auto short as;
 register short rs;
 short sa[4] = { 256, 32767, -32768, 1 };
 short sfnc(short);
 short const cs=0;
 short volatile vs;
 short *sp;
 struct tagx  *stp;
 struct sttag st = { -2147483648, 32767 };
 struct tagx { short x; short s; } stx = { -32768,32767 };
 extern short exa[];

 s = 32767;
 if (s != 0x7fff)
     printf(" ***  test 1-1 error ***\n");

 as = -s-1;
 if (as != -32768)
     printf(" ***  test 1-2 error ***\n");

 rs = -s;
 if (rs != -32767)
     printf(" ***  test 1-3 error ***\n");

 if (sa[1]+*(sa+2)+sa[0]+*(sa+3) != 256)
     printf(" ***  test 1-4 error ***\n");

 if (sfnc(15) != -32768)
     printf(" ***  test 1-5 error ***\n");

 if (cs != exa[2])
     printf(" ***  test 1-6 error ***\n");

 vs = s | 0;
 if (vs != 32767)
     printf(" ***  test 1-7 error ***\n");

 sp = sa;
 if (sp[2]+*(sp+1) != -1)
     printf(" ***  test 1-8 error ***\n");

 stp=&stx;
 if (stp->s != -(stp->x+1))
     printf(" ***  test 1-9 error ***\n");

 if (st.s != sa[1])
     printf(" ***  test 1-10 error ***\n");
 }

 int 
test1_2 (void)
 {
 s_type *sp=exa;
 volatile s_type auto avs=32767;
 const register short rcs=-256;
 volatile auto short const avcs=256;

 if (sp[0]+sp[1]+sp[2] != -1)
     printf(" ***  test 2-1 error ***\n");

 if (-avs != -32767)
     printf(" ***  test 2-2 error ***\n");

 if (rcs != -avcs)
     printf(" ***  test 2-3 error ***\n");

 sts = exs;
 if (sts != -32768)
     printf(" ***  test 2-4 error ***\n");

 }

 int 
test1_3 (void)
 {
 short sfnc(short s);
 extern short sfnc2(short *s);
 short s=15,*sp=&s;

 if (sfnc(s) != -32768)
     printf(" ***  test 3-1 error ***\n");

 if (sfnc2(sp) != -1)
     printf(" ***  test 3-2 error ***\n");
 }

 short extern sfnc(short svar)
 {
 short s=1;
 return s<<svar;
 }

 short 
sfnc2 (short *svarp)
 {
 short s=-32768;
 return s>>*svarp;
 }

 typedef short int si_type;
 short int exsi=-32768;
 extern short int exai[3]={ 32767, -32768, 0 };
 short int static stsi;
 struct sttag2 { int a;  short int si; } ;

 int 
test2_1 (void)
 {
 short int si;
 auto short int asi;
 register short int rsi;
 short int sia[4] = { 256, 32767, -32768, 1 };
 int short sifnc(short int);
 short int const csi=0;
 short int volatile vsi;
 short int *sip;
 struct tagx  *stp;
 struct sttag2 st = { -2147483648, 32767 };
 struct tagx {short s; short int si;}stx={ -32768,32767 };
 extern short exai[];

 si = 32767;
 if (si != 0x7fff)
     printf(" ***  test 4-1 error ***\n");

 asi = -si-1;
 if (asi != -32768)
     printf(" ***  test 4-2 error ***\n");

 rsi = -si;
 if (rsi != -32767)
     printf(" ***  test 4-3 error ***\n");

 if (sia[1]+*(sia+2)+sia[0]+*(sia+3) != 256)
     printf(" ***  test 4-4 error ***\n");

 if (sifnc(15) != 0xffff8000)
     printf(" ***  test 4-5 error ***\n");

 if (csi != exa[2])
     printf(" ***  test 4-6 error ***\n");

 vsi = si | 0;
 if (vsi != 32767)
     printf(" ***  test 4-7 error ***\n");

 sip = sia;
 if (sip[2]+*(sip+1) != -1)
     printf(" ***  test 4-8 error ***\n");

 stp=&stx;
 if (stp->si != -(stp->s+1))
     printf(" ***  test 4-9 error ***\n");

 if (st.si != sia[1])
     printf(" ***  test 4-10 error ***\n");
 }

 int 
test2_2 (void)
 {
 si_type *sip=exa;
 volatile si_type auto avsi=32767;
 const int register short rcsi=-256;
 volatile int auto short const avcsi=256;

 if (sip[0]+sip[1]+sip[2] != -1)
     printf(" ***  test 5-1 error ***\n");

 if (-avsi != -32767)
     printf(" ***  test 5-2 error ***\n");

 if (rcsi != -avcsi)
     printf(" ***  test 5-3 error ***\n");

 stsi = exsi;
 if (stsi != -32768)
     printf(" ***  test 5-4 error ***\n");

 }

 int 
test2_3 (void)
 {
 short int sifnc(short int si);
 extern short int sifnc2(short int *si);
 short int si=15,*sip=&si;

 if (sifnc(si) != -32768)
     printf(" ***  test 6-1 error ***\n");

 if (sifnc2(sip) != -1)
     printf(" ***  test 6-2 error ***\n");
 }

 short int extern sifnc(short int sivar)
 {
 short int si=1;
 return si<<sivar;
 }

 short int 
sifnc2 (short int *sivarp)
 {
 short int si=-32768;
 return si>>*sivarp;
 }
