#include <string.h>
#include <stdio.h>
void test2 (void);
void test1 (void);

 int a=-100;
 int a1=10;
int 
main (void)
 {
 printf(" ***  TEST START *** \n");
 test1();
 test2();
 printf(" ***  TEST END *** \n");
 }

void
test1 (void)
 {
 int a=0;
 auto  int a1=0;
 auto int i=0, *j=NULL, k[5]={0};
 auto long double ld=0;
 auto char ca[10]={0};
 auto struct sttag { int a; } st = { 255 };
 auto union  untag { int x; int y; } dummy_un={.x=0};
 auto enum   entag { en1, en2 } en;
 auto void *vp=NULL;
 auto struct sttag *stp=NULL;
 auto volatile  int v=0;
 auto const volatile double cvd = 0.0;

 long int long auto lli=0;
 volatile signed auto vs[5]={0};
 union untag auto un = { 0xffffffff };
 struct sttag3 { int a; } auto volatile st3={0};
 double auto long const ldca = 0.1234567890123456789;

 a=100;
 a1 = ++a;
 if (a1 != 101)
     printf(" ***  TEST-1 NG *** \n");

 i = a1 + a1;
 if (i != 202)
     printf(" ***  TEST-2 NG *** \n");

 j = &i;
 if (*j != 202)
     printf(" ***  TEST-3 NG *** \n");

 k[0]=k[1]=k[2]=k[3]=k[4]=1;
 if (k[0]+k[1]+k[2]+k[3]+k[4] != 5)
     printf(" ***  TEST-4 NG *** \n");

 ld = 12.5/(--a);
 if (ld != .125)
     printf(" ***  TEST-5 NG *** \n");

 memset(ca,0x01,10);
 if (*ca != 1 || ca[9] != 1)
     printf(" ***  TEST-6 NG *** \n");

 if (st.a != 255)
     printf(" ***  TEST-7 NG *** \n");

 en = en2;
 if (en != 1)
     printf(" ***  TEST-8 NG *** \n");

 vp = stp;
 if (vp != (void *)stp)
     printf(" ***  TEST-9 NG *** \n");

 stp = &st;
 if (stp->a != 255)
     printf(" ***  TEST-10 NG *** \n");

 v = a;
 if (v != 100)
     printf(" ***  TEST-11 NG *** \n");

 if (cvd != 0)
     printf(" ***  TEST-12 NG *** \n");

 lli = v + a;
 if (lli != 200)
     printf(" ***  TEST-13 NG *** \n");

 memcpy(vs,ca,8);
 if (vs[0] != 16843009 || vs[1] != 16843009)
     printf(" ***  TEST-14 NG *** \n");

 if (un.y != 0xffffffff)
     printf(" ***  TEST-15 NG *** \n");

 st3 = *((struct sttag3 *)&st);
 if (st3.a != 255)
     printf(" ***  TEST-16 NG *** \n");

 if (ldca != 0.1234567890123456789)
     printf(" ***  TEST-17 NG *** \n");

 }

void
test2 (void)
 {
 auto int a=1;
   {
   int auto a=2;
     {
     const int auto a=3;
     if (a != 3)
         printf(" ***  TEST-18 NG *** \n");
     }
   a+=a;
   if (a != 4)
       printf(" ***  TEST-19 NG *** \n");
   }
 if (a != 1)
     printf(" ***  TEST-20 NG *** \n");
 }
