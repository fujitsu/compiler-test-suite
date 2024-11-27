#include <stdlib.h>
#include <math.h>
  
 
 
 
 
 
 



#include<stdio.h>
#include<string.h>
int mp2sub (void);
int mp1fnc (int *j);
void m3edc173 (void);
void m3edc165 (void);
void m3edc147 (void);
void m3edc183 (void);
void m3edc139 (void);
void scohd01 (void);
int m3mpsi03 (void);
void m3edc127 (void);
void m3mprd06 (void);
void m3edc182 (void);
void scodv01 (void);
void m3edc192 (void);
void m3edc158 (void);
void m3mpyt03 (void);
void m3edc301 (void);
void m3edc116 (void);
int
main (void)
{
   m3edc116();   
   m3edc301();   
   m3mpyt03();   
   m3edc158();   
   m3edc192();   
   scodv01();    
   m3edc182();   
   m3mprd06();   
   m3edc127();   
   m3mpsi03();   
   scohd01();    
   m3edc139();   
   m3edc183();   
   m3edc147();   
   m3edc165();   
   m3edc173();   


exit (0);
}

 
 
 


 long  fe1a7;
 signed           fe1a8;

void
m3edc116 (void)
{

   {
     auto void *a1=NULL;
     auto char  a2=0, b2=0;
     register int a3=1,b3=a3;
  
  
     static short a6[2]={-1,0},b6=1;
     extern long  fe1a7;
     extern signed fe1a8;
     typedef unsigned type1;
     type1   a9;


     printf("*** M3EDC116 ** MK3 TEST FOR DCL ** STARTED ***\n");

     a1 = (void *)0;
     if ((long)a1!=0)
         printf(" *** M3EDC116 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-01 OK ***\n");

     a2 = 0x7f;  b2 = 0;
     if (a2!=127 || b2!=0)
         printf(" *** M3EDC116 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-02 OK ***\n");

     if (a3!=1 || b3!=1)
         printf(" *** M3EDC116 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-03 OK ***\n");
     if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
         printf(" *** M3EDC116 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-04 OK ***\n");

     if (fe1a7)
         printf(" *** M3EDC116 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-05 OK ***\n");

     fe1a8 = -1;
     if (fe1a8!=-1)
         printf(" *** M3EDC116 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-06 OK ***\n");

     a9 = 1;
     if (a9!=1)
         printf(" *** M3EDC116 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-07 OK ***\n");
   }

   printf("*** M3EDC116 TEST ENDED ***\n");
}

 
 
 


void
m3edc127 (void)
{

   volatile const signed long     *addrsl1,*addrsl2;
   volatile const unsigned long   *addrul1,*addrul2;
   volatile const signed short    *addrss1,*addrss2;
   volatile const unsigned short  *addrus1,*addrus2;
   volatile const signed int      *addrsi1,*addrsi2;
   volatile const unsigned int    *addrui1,*addrui2;
   volatile const signed char     *addrsc1,*addrsc2,*addrsc3;
   volatile const unsigned char   *addruc1,*addruc2,*addruc3;

   volatile const signed long    a1;
   volatile const long unsigned  a2,b2;
   volatile const signed short   a3=-1,b3;
   volatile const int unsigned   a5;
   volatile const signed int     b6=8;
   volatile const char unsigned  a7,b7,c7;
   volatile const signed char    a8,b8=1;


   printf("*** M3EDC127 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrsl1 = &a1;
   if (a1!=*addrsl1)
       printf(" *** M3EDC127 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-01 OK ***\n");

   addrul1 = &a2;  addrul2 = &b2;
   if (a2!=*addrul1 || b2!=*addrul2)
       printf(" *** M3EDC127 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-02 OK ***\n");

   addrss1 = &b3;
   if (a3!=-1 || b3!=*addrss1)
       printf(" *** M3EDC127 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-03 OK ***\n");

   addrui1 = &a5;
   if (a5!=*addrui1)
       printf(" *** M3EDC127 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-05 OK ***\n");

   if (b6!=8)
       printf(" *** M3EDC127 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-06 OK ***\n");

   addruc1 = &a7;  addruc2 = &b7;  addruc3 = &c7;
   if (a7!=*addruc1 || b7!=*addruc2 || c7!=*addruc3)
       printf(" *** M3EDC127 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-07 OK ***\n");

   addrsc1 = &a8;
   if (a8!=*addrsc1 || b8!=1)
       printf(" *** M3EDC127 TEST-08 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-08 OK ***\n");

   printf("*** M3EDC127 TEST ENDED ***\n");
}

 
 
 


void
m3edc139 (void)
{
   const signed long int    *addrs1,*addrs2;
   const unsigned long int  *addru1,*addru2;

   volatile signed long int    a1=0;
   const unsigned int long     a2=0, b2=0;
   volatile long unsigned int  a3=1, b3=0;
   const long int signed       a4[2]={2,3};
   volatile int signed long    a5[2]={4,5},b5;
   const int long unsigned     a6=0, b6[2]={6};


   printf("*** M3EDC139 ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = -1;
   if (a1!=-1)
       printf(" *** M3EDC139 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC139 TEST-01 OK ***\n");

   addru1 = &a2;  addru2 = &b2;
   if (a2!=*addru1 || b2!=*addru2)
       printf(" *** M3EDC139 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC139 TEST-02 OK ***\n");

   b3 = 0xffffffff;
   if (a3!=1 || b3!=4294967295)
       printf(" *** M3EDC139 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC139 TEST-03 OK ***\n");

   if (a4[0]!=2 || a4[1]!=3)
       printf(" *** M3EDC139 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC139 TEST-04 OK ***\n");

   b5 = a5[0];
   if (a5[0]!=4 || a5[1]!=5 || b5!=4)
       printf(" *** M3EDC139 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC139 TEST-05 OK ***\n");

   addru1 = &a6;  addru2 = &b6[1];
   if (a6!=*addru1 || b6[0]!=6 || b6[1]!=*addru2)
       printf(" *** M3EDC139 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC139 TEST-06 OK ***\n");

   printf("*** M3EDC139 TEST ENDED ***\n");
}

 
 
 


void
m3edc147 (void)
{

   const void    *addrv1;
   const char    *addrc1,*addrc2;
  
   const long    *addrl1;
   const signed  *addrs1,*addrs2,*addrs3;
   const unsigned  *addru1,*addru2;

   const void     *a1=NULL;
   volatile char   a2=0, b2=0;
   const int       a3=1,b3=a3;
 
 
   volatile short  a6[2]={0}, b6=1;
   const long      a7=0;
   volatile signed a8=0, b8=0, c8=0;
   unsigned  a9[2]={0}, b9=1, c9=0;

   a6[0] = -1;
   a6[1] = 0;

   printf("*** M3EDC147 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrv1 = a1;
   if (a1 != addrv1)
       printf(" *** M3EDC147 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC147 TEST-01 OK ***\n");

   a2 = 0x7f;  b2 = 0;
   if (a2!=127 || b2!=0)
       printf(" *** M3EDC147 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC147 TEST-02 OK ***\n");

   if (a3!=1 || b3!=1)
       printf(" *** M3EDC147 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC147 TEST-03 OK ***\n");
   if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
       printf(" *** M3EDC147 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC147 TEST-04 OK ***\n");

   addrl1 = &a7;
   if (a7!=*addrl1)
       printf(" *** M3EDC147 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC147 TEST-05 OK ***\n");

   a8 = 1;  b8 = a8-1;  c8 = b8-1;
   if (a8!=1 || b8!=0 || c8!=-1)
       printf(" *** M3EDC147 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC147 TEST-06 OK ***\n");

   a9[0] = 0xffffffff;  a9[1] = a9[0]+1;  c9 = 1;
   if (a9[0]!=4294967295 || a9[1]!=0 || b9!=1 || c9!=1)
       printf(" *** M3EDC147 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC147 TEST-07 OK ***\n");

   printf("*** M3EDC147 TEST ENDED ***\n");
}

 
 
 


void
m3edc158 (void)
{
   printf("*** M3EDC158 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     signed short int   a1;
     unsigned int short a2,b2;
     short unsigned int a3=1,b3;
     short int signed   a4[2];
     int signed short   a5[2],b5;
     int short unsigned a6,b6[2];

     a4[0] = -2;
     a4[1] = 3;
     a5[0] = 4;
     a5[1] = 5;
     b6[0] = 6;

     a1 = 0;
     if (a1!=0)
         printf(" *** M3EDC158 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC158 TEST-01 OK ***\n");

     a2 = 0x7fff;  b2 = 0xffff;
     if (a2!=32767 || b2!=65535)
         printf(" *** M3EDC158 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC158 TEST-02 OK ***\n");

     b3 = a3;
     if (a3!=1 || b3!=1)
         printf(" *** M3EDC158 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC158 TEST-03 OK ***\n");

     if (a4[0]!=-2 || a4[1]!=3)
         printf(" *** M3EDC158 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC158 TEST-04 OK ***\n");

     b5 = -1;
     if (a5[0]!=4 || a5[1]!=5 || b5!=-1)
         printf(" *** M3EDC158 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC158 TEST-05 OK ***\n");

     a6 = 0x7fff;  b6[1] = a6+1;
     if (a6!=32767 || b6[0]!=6 || b6[1]!=32768)
         printf(" *** M3EDC158 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC158 TEST-06 OK ***\n");
   }

   printf("*** M3EDC158 TEST ENDED ***\n");
}

 
 
 

 extern volatile const struct f1stag1 {
       short  s;
       long   l;
 } st1;
 volatile const union f1utag1 {
       int    i;
       long   l;
 } un1,un12;
 typedef volatile const enum f1etag1 {
       ena,  enb,  enc
 } typeen;

void
m3edc165 (void)
{
   auto volatile const union f1utag1 unx,*unxp;
   auto volatile const struct f1stag2 {
         char  c;
         int   i;
   } st2={0x7f,0x7fffffff};
   register volatile const enum entag2 {
         enx=-1,  eny,  enz=100
   } en1 = enz;
   static volatile const union f1utag2 {
         signed  s;
         unsigned u;
   } un2[2] = { { -1 }, { 0 } };

   extern volatile const struct f1stag1 st1;
   extern volatile const union f1utag1 un1,un12;
   typeen  en2,*addren2;

   printf("*** M3EDC165 ** MK3 TEST FOR DCL ** STARTED ***\n");

   if (st1.s!=0 || st1.l!=0)
       printf(" *** M3EDC165 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC165 TEST-01 OK ***\n");

   if (un1.i!=0 || un1.l!=0 || un12.i!=0 || un12.l!=0)
       printf(" *** M3EDC165 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC165 TEST-02 OK ***\n");

   addren2 = &en2;
   if (en2!=*addren2 || ena!=0 || enb!=1 || enc!=2)
       printf(" *** M3EDC165 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC165 TEST-03 OK ***\n");

   unxp = &unx;
   if (unx.i!=unxp->i || unx.l!=unxp->l)
       printf(" *** M3EDC165 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC165 TEST-04 OK ***\n");

   if (st2.c!=127 || st2.i!=2147483647)
       printf(" *** M3EDC165 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC165 TEST-05 OK ***\n");

   if (en1!=100 || enx!=-1 || eny!=0 || enz!=100)
       printf(" *** M3EDC165 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC165 TEST-06 OK ***\n");

   if (un2[0].s!=-1 || un2[0].u!=4294967295 ||
       un2[1].s!=0  || un2[1].u!=0)
       printf(" *** M3EDC165 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC165 TEST-07 OK ***\n");

   printf("*** M3EDC165 TEST ENDED ***\n");
}
volatile const struct f1stag1 st1={0,0};

 
 
 


 volatile struct f2stag1 {
       short  s;
       long   l;
 } f2st1;
 const union f2utag1 {
       int    i;
       long   l;
 } f2un1,f2un12;
 volatile enum f2etag1 {
       f2ena, f2enb, f2enc
 } f2en1;

void
m3edc173 (void)
{
   const struct f2stag1 stx={0}, *stxp=NULL;
   volatile struct f2stag2 {
         char  c;
         int   i;
   } f2st2 = {0};
   const enum entag2 {
         f2enx=-1, f2eny, f2enz=100
   } f2en1 = f2enz;
   static volatile union f2utag2 {
         signed  s;
         unsigned u;
   } f2un2[2] = { -1 , 0  };


   printf("*** M3EDC173 ** MK3 TEST FOR DCL ** STARTED ***\n");

   if (f2st1.s!=0 || f2st1.l!=0)
       printf(" *** M3EDC173 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC173 TEST-01 OK ***\n");

   if (f2un1.i!=0 || f2un1.l!=0 || f2un12.i!=0 || f2un12.l!=0)
       printf(" *** M3EDC173 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC173 TEST-02 OK ***\n");

   if (f2en1!=100 || f2ena!=0 || f2enb!=1 || f2enc!=2)
       printf(" *** M3EDC173 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC173 TEST-03 OK ***\n");

   stxp = &stx;
   if (stx.s!=stxp->s || stx.l!=stxp->l)
       printf(" *** M3EDC173 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC173 TEST-04 OK ***\n");

   f2st2.c=0x7f; f2st2.i=-1;
   if (f2st2.c!=127 || f2st2.i!=-1)
       printf(" *** M3EDC173 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC173 TEST-05 OK ***\n");

   if (f2en1!=100 || f2enx!=-1 || f2eny!=0 || f2enz!=100)
       printf(" *** M3EDC173 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC173 TEST-06 OK ***\n");

   f2un2[0].s=-1; f2un2[1].u=0;
   if (f2un2[0].s!=-1 || f2un2[0].u!=4294967295 ||
       f2un2[1].s!=0 || f2un2[1].u!=0)
       printf(" *** M3EDC173 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC173 TEST-07 OK ***\n");

   printf("*** M3EDC173 TEST ENDED ***\n");
}

 
 
 


 typedef int f3inttp;


void
m3edc183 (void)
{
   volatile const int  *addr,*addr2;

   volatile const f3inttp  a1;
   volatile const f3inttp  a2,b2;
   volatile const f3inttp  a3=0;
   static volatile const f3inttp  a4[2]={-1,0x7fffffff};

   printf("*** M3EDC183 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;
   if (a1!=*addr)
       printf(" *** M3EDC183 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC183 TEST-01 OK ***\n");

   addr = &a2;  addr2 = &b2;
   if (a2!=*addr || b2!=*addr2)
       printf(" *** M3EDC183 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC183 TEST-02 OK ***\n");

   if (a3!=0)
       printf(" *** M3EDC183 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC183 TEST-03 OK ***\n");

   if (a4[0]!=-1 || a4[1]!=2147483647)
       printf(" *** M3EDC183 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC183 TEST-04 OK ***\n");

   printf("*** M3EDC183 TEST ENDED ***\n");
}

 
 
 


 typedef int inttype;

 extern inttype    a5;
 inttype           a6;

void
m3edc182 (void)
{
   printf("*** M3EDC182 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto inttype a1;
     auto inttype a2,b2;
     register inttype a3=0;
     static inttype   a4[2]={-1,0x7fffffff};

     extern inttype  a5;
     extern inttype a6;
     typedef inttype   inttype2;
     inttype2  a7;

     a1 = 0;
     if (a1!=0)
         printf(" *** M3EDC182 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC182 TEST-01 OK ***\n");

     a2 = b2 = -1;
     if (a2!=-1 || b2!=-1)
         printf(" *** M3EDC182 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC182 TEST-02 OK ***\n");

     if (a3!=0)
         printf(" *** M3EDC182 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC182 TEST-03 OK ***\n");

     if (a4[0]!=-1 || a4[1]!=2147483647)
         printf(" *** M3EDC182 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC182 TEST-04 OK ***\n");

     if (a5)
         printf(" *** M3EDC182 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC182 TEST-05 OK ***\n");

     if (a6)
         printf(" *** M3EDC182 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC182 TEST-06 OK ***\n");

     a7 = 100;
     if (a7!=100)
         printf(" *** M3EDC182 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC182 TEST-07 OK ***\n");
   }

   printf("*** M3EDC182 TEST ENDED ***\n");
}
inttype a5 = 0;

 
 
 


 void
m3edc192 (void)
 {

   auto volatile const char  c,c2;
   volatile const short s;
   volatile int   i;
   long  l;


   printf("*** M3EDC192 ** MK3 TEST FOR DCL ** STARTED ***\n");

       printf(" *** M3EDC192 TEST OK ***\n");

   printf("*** M3EDC192 TEST ENDED ***\n");
}

 
 
 


void fefnc(int,int);

void
m3edc301 (void)
{
  fefnc(1,2);
}

void 
fefnc (int a, int b)
{
  if (a == 1)
      printf("***** M3EDC301 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC301 - 01 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC301 - 02 ***** O K *****\n");
    else
      printf("***** M2EDC301 - 02 ***** N G *****\n");
}

 
 
 


void
m3mprd06 (void)
{ struct t3 {
   int t3a;
   int t3aa[30];
   };
   struct t3 st,*stp;
   int a,b,c,*p;
   stp=0;
   a=b=c=0;
   p=0;
   stp=&st;
   p=&st.t3aa[0];
   *p=10;
   a=st.t3aa[0];
   p=&(stp->t3aa[0]);
   p+=5;
   *p=20;
   mp1fnc(&c);
   b=stp->t3aa[c];
   st.t3aa[1]=40;
   stp->t3aa[c]=b;
   if(a==10 && b==20)
        printf("M3MPRD06 OK\n");
   else printf("M3MPRD06 NG A=%d B=%d\n",a,b);
}
int 
mp1fnc (int *j)
{
*j=5;
return 0;
}

 
 
 


 struct estr {
 int *p1;
 int  q1;
 int  q2;
 };
 struct estr *p;
 struct estr *pint;
int mp2fnc (struct estr ea);
 int 
m3mpsi03 (void)
 {
 struct estr eea;
   mp2fnc(eea);
   return 0;
 }
 int
mp2fnc (struct estr ea)
 {
 int j[8],w[8],xx[8];
 int  a,b,c;
 p=&ea;
 a=1;
 c=2;
 p->q1=1;
 b=p->q1;
 j[b]=a;
 w[b]=p->q2;
 pint=&ea;
 pint->q2=c;
 xx[p->q2]=w[b];
 j[pint->q1]=p->q1;
 mp2sub();
 c=p->q1;
 switch (c)   {
   case 1:
        printf("*** M2MPSI03 TEST-1 C-VALUE:OK***\n");
        break;
   default:
        printf("*** M2MPSI03 TEST-1 C-VALUE:NG***\n");
        return 0;
              }
 switch (pint->q2)   {
   case 2:
        printf("*** M2MPSI03 TEST-2 Q2-VALUE:OK***\n");
        break;
   default:
        printf("*** M2MPSI03 TEST-2 Q2-VALUE:NG***\n");
        return 0;
              }
 switch (j[pint->q1])  {
   case 1:
        printf("*** M2MPSI03 TEST-3 J-VALUE:OK***\n");
        break;
   default:
        printf("*** M2MPSI03 TEST-3 J-VALUE:NG***\n");
        return 0;
              }
 switch (b)  {
   case 1:
        printf("*** M2MPSI03 TEST-4 b-VALUE:OK***\n");
        break;
   default:
        printf("*** M2MPSI03 TEST-4 b-VALUE:NG***\n");
        return 0;
              }
 return 0;
 }
 int 
mp2sub (void) {
 p->p1=&(p->q1);
 return 0;
 }

 
 
 


struct sort
{
   int data ;
   struct sort *head ;
} ;
void relative (struct sort *now, struct sort *add);
void
m3mpyt03 (void)
{
   struct sort num[50] ;
   struct sort *first ;
   struct sort *last ;
   static int allnum[20]={0,1,2,3,4,5,6,7,8,9,10,20,
                           30,40,50,60,70,80,90,100};
   int nums[20] ;
   int n ;
   int i ;
   nums[0]=100 ;
   nums[1]=6 ;
   nums[2]=30 ;
   nums[3]=10 ;
   nums[4]=2 ;
   nums[5]=0 ;
   nums[6]=4 ;
   nums[7]=40 ;
   nums[8]=7 ;
   nums[9]=80 ;
   nums[10]=3 ;
   nums[11]=50 ;
   nums[12]=1 ;
   nums[13]=90 ;
   nums[14]=20 ;
   nums[15]=9 ;
   nums[16]=70 ;
   nums[17]=8 ;
   nums[18]=60 ;
   nums[19]=5 ;
   first=num ;
   last=num ;
   first->data=nums[0] ;
   first->head=0 ;
   i=1;
   printf ("*****  SORT *****\n");
   while (i<=19)
      {
         last++ ;
         last->head=0 ;
         last->data=nums[i] ;
         if (first->data > last->data)
           {
             last->head=first ;
             first=last;
           }
         else
             relative (first,last);
         i++;
       }
    n=0;
    while (first != 0)
       {
         printf ("*****  LIST DATA : %2d\n",first->data );
         nums[n]=first->data ;
         first=first->head ;
         n++;
       }
   if (memcmp(nums,allnum,80)==0)
        printf ("***** OK *****\n");
   else
        printf ("***** NG *****\n");
}
void
relative (struct sort *now, struct sort *add)
{
    if ((now->head->data)<(add->data) && now->head!=0)
      {
        relative (now->head,add);
      }
    else
     {
        add->head=now->head;
        now->head=add ;
     }
}

 
 
 

void
scodv01 (void)
{
  volatile signed   char  be1i1_1,be1i1_2,be1i1_3                ;
  volatile unsigned char  be1ui1_1,be1ui1_2,be1ui1_3             ;
  volatile unsigned short int be1ui2_1,be1ui2_2,be1ui2_3         ;

  printf("*** SCODV01  STRT ***\n")                    ;

   
   

  be1i1_2 = 7                                                    ;
  be1i1_3 = 5                                                    ;

  be1i1_1 = be1i1_2 * be1i1_3                     ;
  if (be1i1_1 == 35)
    printf("*** OK  1 ***\n")                      ;
  else
    printf("*** NG  1 ***\n")                      ;

  be1i1_1 = be1i1_2 - be1i1_3                     ;
  if (be1i1_1 == 2)
    printf("*** OK  2 ***\n")                      ;
  else
    printf("*** NG  2 ***\n")                      ;

  be1i1_1 = be1i1_2 / be1i1_3                     ;
  if (be1i1_1 == 1)
    printf("*** OK  3 ***\n")                      ;
  else
    printf("*** NG  3 ***\n")                      ;

  be1i1_1 = be1i1_2 % be1i1_3                     ;
  if (be1i1_1 == 2)
    printf("*** OK  4 ***\n")                      ;
  else
    printf("*** NG  4 ***\n")                      ;

   
   

   
   

  be1ui1_2 = 7                                                ;
  be1ui1_3 = 5                                                   ;

  be1ui1_1 = be1ui1_2 * be1ui1_3                  ;
  if (be1ui1_1 == 35)
    printf("*** OK  5 ***\n")                      ;
  else
    printf("*** NG  5 ***\n")                      ;

  be1ui1_1 = be1ui1_2 - be1ui1_3                  ;
  if (be1ui1_1 == 2)
    printf("*** OK  6 ***\n")                      ;
  else
    printf("*** NG  6 ***\n")                      ;

  be1ui1_1 = be1ui1_2 / be1ui1_3                  ;
  if (be1ui1_1 == 1)
    printf("*** OK  7 ***\n")                      ;
  else
    printf("*** NG  7 ***\n")                      ;

  be1ui1_1 = be1ui1_2 % be1ui1_3                  ;
  if (be1ui1_1 == 2)
    printf("*** OK  8 ***\n")                      ;
  else
    printf("*** NG  8 ***\n")                      ;

   
   

   
   

  be1ui2_2 = 7                                                   ;
  be1ui2_3 = 5                                                   ;

  be1ui2_1 = be1ui2_2 * be1ui2_3                  ;
  if (be1ui2_1 == 35)
    printf("*** OK  9 ***\n")                      ;
  else
    printf("*** NG  9 ***\n")                      ;

  be1ui2_1 = be1ui2_2 - be1ui2_3                  ;
  if (be1ui2_1 == 2)
    printf("*** OK 10 ***\n")                      ;
  else
    printf("*** NG 10 ***\n")                      ;

  be1ui2_1 = be1ui2_2 / be1ui2_3                  ;
  if (be1ui2_1 == 1)
    printf("*** OK 11 ***\n")                      ;
  else
    printf("*** NG 11 ***\n")                      ;

  be1ui2_1 = be1ui2_2 % be1ui2_3                  ;
  if (be1ui2_1 == 2)
    printf("*** OK 12 ***\n")                      ;
  else
    printf("*** NG 12 ***\n")                      ;

   
   

  printf("*** SCODV01  END ***\n")                     ;
}
 
 
 


void
scohd01 (void)
{
  struct tag_s {
                 int         mi1                     ;
                 const int   mci                     ;
               } s,*ps                              ;
  int        i1,*pi                                  ;
  int        i2[10]  ={0,1,2,3,4,5,6,7,8,9}      ;
  const int  ci1 = 7 ,*pci                           ;
  const int  ci2[10] ={0,1,2,3,4,5,6,7,8,9}      ;

  printf("********** SCOHD01 STARTED **********\n")    ;

  s.mi1 = 7    ;
  i1    = 7    ;
  ps    = &s   ;

  if ( *(char *)memchr("abcdefghjk",'g',7) == 'g' )
    printf("********** SCOHD01 -01 OK **********\n")        ;
  else
    printf("********** SCOHD01 -01 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ps->mi1) == 'g' )
    printf("********** SCOHD01 -02 OK **********\n")        ;
  else
    printf("********** SCOHD01 -02 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',i1) == 'g' )
    printf("********** SCOHD01 -04 OK **********\n")        ;
  else
    printf("********** SCOHD01 -04 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',i2[7]) == 'g' )
    printf("********** SCOHD01 -05 OK **********\n")        ;
  else
    printf("********** SCOHD01 -05 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ci1) == 'g' )
    printf("********** SCOHD01 -06 OK **********\n")        ;
  else
    printf("********** SCOHD01 -06 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ci2[7]) == 'g' )
    printf("********** SCOHD01 -07 OK **********\n")        ;
  else
    printf("********** SCOHD01 -07 NG **********\n")        ;

  pi = &i1;
  if ( *(char *)memchr("abcdefghjk",'g',*pi) == 'g' )
    printf("********** SCOHD01 -08 OK **********\n")        ;
  else
    printf("********** SCOHD01 -08 NG **********\n")        ;

  pi = &i2[7] ;
  if ( *(char *)memchr("abcdefghjk",'g',*pi) == 'g' )
    printf("********** SCOHD01 -09 OK **********\n")        ;
  else
    printf("********** SCOHD01 -09 NG **********\n")        ;

  pci = &ci1;
  if ( *(char *)memchr("abcdefghjk",'g',*pci) == 'g' )
    printf("********** SCOHD01 -10 OK **********\n")        ;
  else
    printf("********** SCOHD01 -10 NG **********\n")        ;

  pci = &ci2[7];
  if ( *(char *)memchr("abcdefghjk",'g',*pci) == 'g' )
    printf("********** SCOHD01 -11 OK **********\n")        ;
  else
    printf("********** SCOHD01 -11 NG **********\n")        ;


  printf("********** SCOHD01  ENDED **********\n")    ;

}
