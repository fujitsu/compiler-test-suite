#include <stdio.h>
int memcpyx (char *c1, char *c2, int l);
int memsetx (char *c1, int c2, int l);
int memcpyx (char *c1, char *c2, int l);
int test2 (void);
int test1 (void);

 int ex1=-100;
 char cax[5],ccax[5];
 extern int ex1;
 int ex2=10;
 extern int ex3;
        int exa1;
 int ex3=-10;
 int l=0;
 short exs[5][5];
 struct sttag { int a; short b; } exst;
 union untag { short x; unsigned short y; } exun;
 enum entag { en1, en2 } exen;
 long int lf(),(*lfp)();
 void vf();
 char *cap[5],ca[10]={ 0,1,2,3,4 };
 const short *excsp,excs=9999;
 struct sttag *exstp;
 volatile  int exv;
 volatile short const int exvcs;
 extern char cax[];

 const struct sttag exst2;
 long int exli;
 volatile const int *exvcp;
 char unsigned exuc[5];

 int i,*j,k[5];
 long double ld;
 extern char ca[10];
 struct sttag2 { int a; short b; } st = { 255 };
 union untag2 { int x; int y; } ;
 enum entag2 { ena, enb } en;
 struct sttag2 stfnc();
 void vf();
 void *vp;
 struct sttag2 *stp;
 volatile  int v = 0;
 const volatile double cvd;
 extern char ccax[];

 long int long lli;
 volatile signed vs[5];
 union untag2 un = { 0xffffffff };
 struct sttag3 { int a; } volatile st3;
 double long const ldca = 0.1234567890123456789l;
int 
main (void)
 {
 printf(" ***  TEST START ***\n");
 test1();
 test2();
 printf(" ***  TEST END ***\n");
 }

 int 
test1 (void)
 {
 if (ex1 != -100)
     printf(" ***  TEST 1-1 NG ***\n");

 if (ex2 != 10)
     printf(" ***  TEST 1-2 NG ***\n");

 if (ex3 != -10)
     printf(" ***  TEST 1-2.5 NG ***\n");

 if (exs[0][0] != 0 || exs[4][4] != 0)
     printf(" ***  TEST 1-3 NG ***\n");

 if (exst.a != 0 || exst.b != 0)
     printf(" ***  TEST 1-4 NG ***\n");

 if (exun.x != 0 || exun.y != 0)
     printf(" ***  TEST 1-5 NG ***\n");

 if (exen != 0 || en1 != 0 || en2 != 1)
     printf(" ***  TEST 1-6 NG ***\n");

 lfp = lf;
 if ((*lfp)() != 12345 || ex1 != 200)
     printf(" ***  TEST 1-7 NG ***\n");

 vf();
 if (ex1 != 100)
     printf(" ***  TEST 1-8 NG ***\n");

 cap[0]=ca; cap[1]=ca+1; cap[2]=ca+2;
 if (*cap[0] != 0 || *cap[1] !=1 || *cap[2] != 2)
     printf(" ***  TEST 1-9 NG ***\n");

 excsp = &excs;
 if (*excsp != 9999)
     printf(" ***  TEST 1-10 NG ***\n");

 exst.a = 256;
 exstp = &exst;
 if (exstp->a != 256)
     printf(" ***  TEST 1-11 NG ***\n");

 if (exv != 0)
     printf(" ***  TEST 1-12 NG ***\n");

 if (exvcs != 0)
     printf(" ***  TEST 1-13 NG ***\n");

 memcpyx(cax,ca,2);
 if (cax[0] != 0 || cax[1] != 1 || cax[2] != 0)
     printf(" ***  TEST 1-14 NG ***\n");

 if (exst2.a != 0 || exst2.b != 0)
     printf(" ***  TEST 1-15 NG ***\n");

 if ((exli *= exli) != 0)
     printf(" ***  TEST 1-16 NG ***\n");

 if ((int)exvcp != 0)
     printf(" ***  TEST 1-17 NG ***\n");

 memcpyx(exuc,ca,5);
 if (exuc[0] != 0 || exuc[1] != 1 || exuc[2] != 2 ||
     exuc[3] != 3 || exuc[4] != 4)
     printf(" ***  TEST 1-18 NG ***\n");

 }

 int 
test2 (void)
 {
 int a;
 extern int i,*j,k[5],l;
 extern int i,*j,k[5],l;
 extern long double ld;
 extern char ca[10];
 extern struct sttag2 st;
 extern enum entag2 en;
 extern struct sttag2 stfnc();
 extern void vf();
 extern void *vp;
 extern struct sttag2 *stp;
 extern volatile  int v;
 extern const volatile double cvd;
 extern char ccax[];

 int long long extern lli;
 signed volatile extern vs[5];
 union untag2 extern un;
 struct sttag3 extern volatile st3;
 extern long double const ldca;

 a=100;
 j=&a;
 if (i+*j+k[3]+l != 100)
     printf(" ***  TEST 2-1 NG ***\n");

 if (ld**j != 0)
     printf(" ***  TEST 2-2 NG ***\n");

 memsetx(ca,0x01,5);
 if (*ca != 1 || ca[5] != 0)
     printf(" ***  TEST 2-3 NG ***\n");

 if (st.a != 255 || st.b != 0)
     printf(" ***  TEST 2-4 NG ***\n");

 if (en != 0 || ena != 0 || enb != 1)
     printf(" ***  TEST 2-5 NG ***\n");

 if (stfnc().a != 10 || stfnc().b != 20)
     printf(" ***  TEST 2-6 NG ***\n");

 vf();
 if (ex1 != 100)
     printf(" ***  TEST 2-7 NG ***\n");

 if (vp != 0 || stp != 0)
     printf(" ***  TEST 2-8 NG ***\n");

 stp = &st;
 if (stp->a != 255)
     printf(" ***  TEST 2-9 NG ***\n");

 if (++v != 1)
     printf(" ***  TEST 2-10 NG ***\n");

 if (cvd != 0)
     printf(" ***  TEST 2-11 NG ***\n");

 if (cvd != lli)
     printf(" ***  TEST 2-12 NG ***\n");

 memcpyx(vs,ca,8);
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 if (vs[0] != 0x01010101 || vs[1] != 0x01 ||
     vs[2] || vs[3] || vs[4])
#else
 if (vs[0] != 0x01010101 || vs[1] != 0x01000000 ||
     vs[2] || vs[3] || vs[4])
#endif
     printf(" ***  TEST 2-13 NG ***\n");

 if (un.y != 0xffffffff)
     printf(" ***  TEST 2-14 NG ***\n");

 st3 = *((struct sttag3 *)&st);
 if (st3.a != 255)
     printf(" ***  TEST 2-15 NG ***\n");

 if (ldca != 0.1234567890123456789l)
     printf(" ***  TEST 2-16 NG ***\n");

 }

 int 
test3 (void)
 {
 extern int exa1;
 exa1 = 1;
   {
   int extern exa1;
     {
     int extern exa1;
     if (exa1 != 1)
         printf(" ***  TEST 3-1 NG ***\n");
     }
   exa1+=exa1;
   if (exa1 != 2)
       printf(" ***  TEST 3-2 NG ***\n");
   }
 if (exa1 != 2)
     printf(" ***  TEST 3-3 NG ***\n");
 }

 long 
lf (void)
 {
 extern int ex1;
 ex1 = 200;
 return 12345;
 }

 void 
vf (void)
 {
 extern  int ex1;
 ex1 = 100;
 return;
 }

 extern struct sttag2 
stfnc (void)
 {
 struct sttag2 st;
 st.a=10;
 st.b=20;
 return st;
 }

 extern 
 int memcpyx (char *c1, char *c2, int l)
 {
 for(;l>0;l--,c1++,c2++)  *c1 = *c2;
 }

 extern 
 int memsetx (char *c1, int c2, int l)
 {
 for(;l>0;l--,c1++)  *c1 = c2;
 }
