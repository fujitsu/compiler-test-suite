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

 typedef signed short ss_type;
 signed short exss=-32768;
 extern signed short exa[3]={ 32767, -32768, 0 };
 signed short static stss;
 struct sttag { int a;  signed short ss; } ;

 int 
test1_1 (void)
 {
 signed short ss;
 auto signed short ass;
 register signed short rss;
 signed short ssa[4] = { 256, 32767, -32768, 1 };
 signed short ssfnc(signed short);
 signed short const css=0;
 signed short volatile vss;
 signed short *ssp;
 struct tagx  *stp;
 struct sttag st = { -2147483648, 32767 };
 struct tagx { short s; signed short ss; } stx = { -32768,32767 };

 ss = 32767;
 if (ss != 0x7fff)
     printf(" ***  TEST 1-1 ERROR ***\n");

 ass = -ss-1;
 if (ass != -32768)
     printf(" ***  TEST 1-2 ERROR ***\n");

 rss = -ss;
 if (rss != -32767)
     printf(" ***  TEST 1-3 ERROR ***\n");

 if (ssa[1]+*(ssa+2)+ssa[0]+*(ssa+3) != 256)
     printf(" ***  TEST 1-4 ERROR ***\n");

 if (ssfnc(15) != -32768)
     printf(" ***  TEST 1-5 ERROR ***\n");

 if (css != exa[2])
     printf(" ***  TEST 1-6 ERROR ***\n");

 vss = ss | 0;
 if (vss != 32767)
     printf(" ***  TEST 1-7 ERROR ***\n");

 ssp = ssa;
 if (ssp[2]+*(ssp+1) != -1)
     printf(" ***  TEST 1-8 ERROR ***\n");

 stp=&stx;
 if (stp->ss != -(stp->s+1))
     printf(" ***  TEST 1-9 ERROR ***\n");

 if (st.ss != ssa[1])
     printf(" ***  TEST 1-10 ERROR ***\n");
 }

 int 
test1_2 (void)
 {
 ss_type *ssp=exa;
 volatile ss_type auto avss=32767;
 signed const register short rcss=-256;
 volatile signed auto short const avcss=256;

 if (ssp[0]+ssp[1]+ssp[2] != -1)
     printf(" ***  TEST 2-1 ERROR ***\n");

 if (-avss != -32767)
     printf(" ***  TEST 2-2 ERROR ***\n");

 if (rcss != -avcss)
     printf(" ***  TEST 2-3 ERROR ***\n");

 stss = exss;
 if (stss != -32768)
     printf(" ***  TEST 2-4 ERROR ***\n");

 }

 int 
test1_3 (void)
 {
 signed short ssfnc(signed short ss);
 extern signed short ssfnc2(signed short *ss);
 signed short ss=15,*ssp=&ss;

 if (ssfnc(ss) != -32768)
     printf(" ***  TEST 3-1 ERROR ***\n");

 if (ssfnc2(ssp) != -1)
     printf(" ***  TEST 3-2 ERROR ***\n");
 }

 signed short extern ssfnc(signed short ssvar)
 {
 signed short ss=1;
 return ss<<ssvar;
 }

 signed short 
ssfnc2 (signed short *ssvarp)
 {
 signed short ss=-32768;
 return ss>>*ssvarp;
 }

 typedef signed short int ssi_type;
 signed short int exssi=-32768;
 extern signed short int exai[3]={ 32767, -32768, 0 };
 signed short int static stssi;
 struct sttag2 { int a;  signed short int ssi; } ;

 int 
test2_1 (void)
 {
 signed short int ssi;
 auto signed short int assi;
 register signed short int rssi;
 signed short int ssia[4] = { 256, 32767, -32768, 1 };
 signed short int ssifnc(signed short int);
 signed short int const cssi=0;
 signed short int volatile vssi;
 signed short int *ssip;
 struct tagx  *stp;
 struct sttag2 st = { -2147483648, 32767 };
 struct tagx {short s; signed short int ssi;}stx={ -32768,32767 };

 ssi = 32767;
 if (ssi != 0x7fff)
     printf(" ***  TEST 4-1 ERROR ***\n");

 assi = -ssi-1;
 if (assi != -32768)
     printf(" ***  TEST 4-2 ERROR ***\n");

 rssi = -ssi;
 if (rssi != -32767)
     printf(" ***  TEST 4-3 ERROR ***\n");

 if (ssia[1]+*(ssia+2)+ssia[0]+*(ssia+3) != 256)
     printf(" ***  TEST 4-4 ERROR ***\n");

 if (ssifnc(15) != -32768)
     printf(" ***  TEST 4-5 ERROR ***\n");

 if (cssi != exai[2])
     printf(" ***  TEST 4-6 ERROR ***\n");

 vssi = ssi | 0;
 if (vssi != 32767)
     printf(" ***  TEST 4-7 ERROR ***\n");

 ssip = ssia;
 if (ssip[2]+*(ssip+1) != -1)
     printf(" ***  TEST 4-8 ERROR ***\n");

 stp=&stx;
 if (stp->ssi != -(stp->s+1))
     printf(" ***  TEST 4-9 ERROR ***\n");

 if (st.ssi != ssia[1])
     printf(" ***  TEST 4-10 ERROR ***\n");
 }

 int 
test2_2 (void)
 {
 ssi_type *ssip=exai;
 volatile ssi_type auto avssi=32767;
 signed const register short int rcssi=-256;
 volatile signed auto short int const avcssi=256;

 if (ssip[0]+ssip[1]+ssip[2] != -1)
     printf(" ***  TEST 5-1 ERROR ***\n");

 if (-avssi != -32767)
     printf(" ***  TEST 5-2 ERROR ***\n");

 if (rcssi != -avcssi)
     printf(" ***  TEST 5-3 ERROR ***\n");

 stssi = exssi;
 if (stssi != -32768)
     printf(" ***  TEST 5-4 ERROR ***\n");

 }

 int 
test2_3 (void)
 {
 signed short int ssifnc(signed short int ssi);
 extern signed short int ssifnc2(signed short int *ssi);
 signed short int ssi=15,*ssip=&ssi;

 if (ssifnc(ssi) != -32768)
     printf(" ***  TEST 6-1 ERROR ***\n");

 if (ssifnc2(ssip) != -1)
     printf(" ***  TEST 6-2 ERROR ***\n");
 }

 signed short int extern ssifnc(signed short int ssivar)
 {
 signed short int ssi=1;
 return ssi<<ssivar;
 }

 signed short int 
ssifnc2 (signed short int *ssivarp)
 {
 signed short int ssi=-32768;
 return ssi>>*ssivarp;
 }
