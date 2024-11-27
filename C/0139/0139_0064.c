#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int test2 (void);
int test1 (void);
  
  
  
  
  
  
  
  


 int a=-100;
 int a1=10;
int main (void)
 {
 printf(" *** \n");
 test1();
 test2();
 printf(" *** \n");
exit (0);
 }

 int test1 (void)
 {
 int a;
 auto  int a1;
 auto int i,*j,k[5];
 auto long double ld;
 auto char ca[10];
 auto struct sttag { int a; } st = { 255 };
 auto union  untag { int x; int y; } dummy_un;
 auto enum   entag { en1, en2 } en;
 auto void *vp;
 auto struct sttag *stp;
 auto volatile  int v;
 auto const volatile double cvd = 0.0;

 long int long auto lli;
 volatile signed auto vs[5];
 union untag auto un = { 0xffffffff };
 struct sttag3 { int a; } auto volatile st3;
 double auto long const ldca = 0.1234567890123456789;

 a=100;
 a1 = ++a;
 if (a1 != 101)
     printf(" *** \n");

 i = a1 + a1;
 if (i != 202)
     printf(" *** \n");

 j = &i;
 if (*j != 202)
     printf(" *** \n");

 k[0]=k[1]=k[2]=k[3]=k[4]=1;
 if (k[0]+k[1]+k[2]+k[3]+k[4] != 5)
     printf(" *** \n");

 ld = 12.5/(--a);
 if (ld != .125)
     printf(" *** \n");

 memset(ca,0x01,10);
 if (*ca != 1 || ca[9] != 1)
     printf(" *** \n");

 if (st.a != 255)
     printf(" *** \n");

 en = en2;
 if (en != 1)
     printf(" *** \n");
 stp = &st;
 if (stp->a != 255)
     printf(" *** \n");

 v = a;
 if (v != 100)
     printf(" *** \n");

 if (cvd != 0)
     printf(" *** \n");

 lli = v + a;
 if (lli != 200)
     printf(" *** \n");

 memcpy(vs,ca,8);
 if (vs[0] != 16843009 || vs[1] != 16843009)
     printf(" *** \n");

 if (un.y != 0xffffffff)
     printf(" *** \n");

 st3 = *((struct sttag3 *)&st);
 if (st3.a != 255)
     printf(" *** \n");

 if (ldca != 0.1234567890123456789)
     printf(" *** \n");

 }

 int test2 (void)
 {
 auto int a=1;
   {
   int auto a=2;
     {
     const int auto a=3;
     if (a != 3)
         printf(" *** \n");
     }
   a+=a;
   if (a != 4)
       printf(" *** \n");
   }
 if (a != 1)
     printf(" *** \n");
 }
