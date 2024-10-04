#include <stdio.h>
int test3(void);
int test2(void);
int test1 (void);

 extern int memcpyx(),memsetx();
 int ex1=-100,exa1=1;
 char cax[5],ccax[5];
 extern  int ex0=0;
 extern int ex1;
 extern int ex2=10;
 extern short exs[5][5]={{0,0},{0,0},{0,0},{0,0},{0,0}};
 extern struct sttag { int a; short b; } exst={0,0};
 extern union untag { short x; unsigned short y; } exun={0};
 extern enum entag { en1, en2 } exen={0};
 extern long int lf(),(*lfp)()=0;
 extern void vf();
 extern char ca[10]={ 0,1,2,3,4 },*cap[5]={ca,ca,ca,ca,ca};
 extern const short excs=9999,*excsp=&excs;
 extern struct sttag *exstp=&exst;
 extern volatile  int exv=0;
 extern volatile short const int exvcs=0;
 extern char cax[]={0,0,0,0,0};

 const struct sttag extern exst2={0,0};
 long int extern exli=0;
 int extern ex1;
 volatile extern const int *exvcp=0;
 char extern unsigned exuc[5]={0};

 extern  int a1=0;
 extern int i=0,*j=&i,k[5]={0,0,0,0,0};
 extern long double ld=0;
 extern char ca[10];
 extern struct sttag2 { int a; short b; } st = { 255 };
 extern struct sttag3 { int a;  } volatile stx = { 255 };
 extern union untag2 { int x; int y; } un;
 extern enum entag2 { en3, en4 } en=0;
 extern struct sttag2 stfnc();
 extern void vf();
 extern void *vp=0;
 extern struct sttag2 *stp=0;
 extern volatile  int v=0;
 extern const volatile double cvd=0;
 extern char ccax[]={0,0,0,0,0};
 long int long extern lli=0;
 volatile signed extern vs[5]={0,0,0,0,0};
 union untag2 extern un = { 0xffffffff };                 
 struct sttag3  extern volatile *st3=&stx;
 double extern long const ldca = 0.12345678901;
int 
main (void)
 {
 printf(" ***  TEST START ***\n");
 test1();
 test2();
 test3();
 printf(" ***  TEST END ***\n");
 }

 int 
test1 (void)
 {
 if (ex0 != 0 || sizeof(ex0) != 4)
     printf(" ***  TEST 1-1 NG ***\n");

 if (ex1 != -100)
     printf(" ***  TEST 1-2 NG ***\n");

 if (ex2 != 10)
     printf(" ***  TEST 1-3 NG ***\n");

 if (exs[0][0] != 0 || exs[4][4] != 0)
     printf(" ***  TEST 1-4 NG ***\n");

 if (exst.a != 0 || exst.b != 0)
     printf(" ***  TEST 1-5 NG ***\n");

 if (exun.x != 0 || exun.y != 0)
     printf(" ***  TEST 1-6 NG ***\n");

 if (exen != 0 || en1 != 0 || en2 != 1)
     printf(" ***  TEST 1-7 NG ***\n");

 lfp = lf;
 if ((*lfp)() != 12345 || ex1 != 200)
     printf(" ***  TEST 1-8 NG ***\n");

 vf();
 if (ex1 != 100)
     printf(" ***  TEST 1-9 NG ***\n");

 cap[0]=ca; cap[1]=ca+1; cap[2]=ca+2;
 if (*cap[0] != 0 || *cap[1] !=1 || *cap[2] != 2 ||
     *cap[3] != *cap[4])
     printf(" ***  TEST 1-10 NG ***\n");

 excsp = &excs;
 if (*excsp != 9999)
     printf(" ***  TEST 1-11 NG ***\n");

 exst.a = 256;
 exstp = &exst;
 if (exstp->a != 256)
     printf(" ***  TEST 1-12 NG ***\n");

 if (exv != 0)
     printf(" ***  TEST 1-13 NG ***\n");

 if (exvcs != 0)
     printf(" ***  TEST 1-14 NG ***\n");

 memcpyx(cax,ca,2);
 if (cax[0] != 0 || cax[1] != 1 || cax[2] != 0)
     printf(" ***  TEST 1-15 NG ***\n");

 if (exst2.a != 0 || exst2.b != 0)
     printf(" ***  TEST 1-16 NG ***\n");

 if ((exli *= exli) != 0)
     printf(" ***  TEST 1-17 NG ***\n");

 if ((int)exvcp != 0)
     printf(" ***  TEST 1-18 NG ***\n");

 memcpyx(exuc,ca,5);
 if (exuc[0] != 0 || exuc[1] != 1 || exuc[2] != 2 ||
     exuc[3] != 3 || exuc[4] != 4)
     printf(" ***  TEST 1-19 NG ***\n");

 }

  int test2()
 {
 int a;
 extern  int a1;
 extern  int a1;
 extern int i,*j,k[5];
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
 struct sttag3 extern volatile *st3;
 extern long double const ldca;

 a=100;
 if (a1+a != 100)
     printf(" ***  TEST 2-1 NG ***\n");

 j=&a;
 if (i+*j+k[3] != 100)
     printf(" ***  TEST 2-2 NG ***\n");

 if (ld**j != 0)
     printf(" ***  TEST 2-3 NG ***\n");

 memsetx(ca,0x01,5);
 if (*ca != 1 || ca[4] != 1 || ca[5])
     printf(" ***  TEST 2-4 NG ***\n");

 if (st.a != 255 || st.b != 0)
     printf(" ***  TEST 2-5 NG ***\n");
 if (en != 0 || en3 != 0 || en4 != 1)
     printf(" ***  TEST 2-6 NG ***\n");
 if (stfnc().a != 10 || stfnc().b != 20)
     printf(" ***  TEST 2-7 NG ***\n");

 vf();
 if (ex1 != 100)
     printf(" ***  TEST 2-8 NG ***\n");

 if (vp != 0 || stp != 0)
     printf(" ***  TEST 2-9 NG ***\n");

 stp = &st;
 if (stp->a != 255)
     printf(" ***  TEST 2-10 NG ***\n");

 if (++v != 1)
     printf(" ***  TEST 2-11 NG ***\n");

 if (cvd != 0)
     printf(" ***  TEST 2-12 NG ***\n");

 if (cvd != lli)
     printf(" ***  TEST 2-13 NG ***\n");

 memcpyx(vs,ca,8);
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 if (vs[0] != 0x01010101 || vs[1] != 0x01 ||
     vs[2] || vs[3] || vs[4]){
#else
 if (vs[0] != 0x01010101 || vs[1] != 0x01000000 ||
     vs[2] || vs[3] || vs[4]){
#endif
     printf(" ***  TEST 2-14 NG ***\n");
     printf("vs[0]: %x\n",vs[0]);
     printf("vs[1]: %x\n",vs[1]);
     printf("vs[2]: %x\n",vs[2]);
     printf("vs[3]: %x\n",vs[3]);
     printf("vs[4]: %x\n",vs[4]);
 }

 if (un.y != 0xffffffff)                                 
     printf(" ***  TEST 2-15 NG ***\n");

 st3 = (struct sttag3 volatile *)&stx;
 if (st3->a != 255)
     printf(" ***  TEST 2-16 NG ***\n");

 if (ldca <= 0.12345678901-1e-11 || ldca >= 0.12345678901+1e-11)
     printf(" ***  TEST 2-17 NG ***\n");

 }

  int test3()
 {
 extern int exa1;
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

 long lf()
 {
 extern int ex1;
 ex1 = 200;
 return 12345;
 }

 void extern vf()
 {
 extern int ex1;
 ex1 = 100;
 return;
 }

 extern struct sttag2 stfnc( )
 {
 struct sttag2 st;
 st.a=10;
 st.b=20;
 return st;
 }

 extern  int memcpyx(c1,c2,l)
 char *c1,*c2;
 int l;
 {
 for(;l>0;l--,c1++,c2++)  *c1 = *c2;
 }

 extern  int memsetx(c1,c2,l)
 char *c1,c2;
 int l;
 {
 for(;l>0;l--,c1++)  *c1 = c2;
 }
