

#include<stdio.h>
int m1fnc(int *j);
int m3edc311();
int scood01();
int m3edc187();
int m3mprd07();
int m3edc315();
int m3edc195();
int m3edc184();
int m3edc174();
int m3mpsi04();
int m3edc305();
int scoprl1();
int m3edc179();
int m3edc148();
int m3mpcm09();
int m3edc166();
int m3edc117();
int m3edc320();
int main()
{

   printf("***  **** START ***\n");

   m3edc320();  
   m3edc117();  
   m3edc166();  
   m3mpcm09();  
   m3edc148();  
   m3edc179();  
   scoprl1();   
   m3edc305();  
   m3mpsi04();  
   m3edc174();  
   m3edc184();  
   m3edc195();  
   m3edc315();  
   m3mprd07();  
   m3edc187();  
   scood01();   
   m3edc311();  

   printf("***  **** END ***\n");

}



 int  fe1a4[2];
 int fe1a5;

int m3edc117()
{

   auto   int a1;
   register  int a2,b2=-1;
   static   int a3[2]={-1,1};
   extern   int fe1a4[2];
   extern int  fe1a5;


   printf("*** M3EDC117 ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = 100;
   if (a1!=100)
       printf(" *** M3EDC117 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-01 OK ***\n");

   a2 = -1;
   if (a2!=-1 || b2!=-1)
       printf(" *** M3EDC117 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-02 OK ***\n");

   if (a3[0]!=-1 || a3[1]!=1)
       printf(" *** M3EDC117 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-03 OK ***\n");

   if (fe1a4[0]!=0 || fe1a4[1]!=0)
       printf(" *** M3EDC117 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-04 OK ***\n");

   if (fe1a5)
       printf(" *** M3EDC117 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-05 OK ***\n");

   printf("*** M3EDC117 TEST ENDED ***\n");
   return 0;
}




 int m3edc148()
{

   const void    *addrv1;
   const char    *addrc1,*addrc2;
   const long    *addrl1;
   const signed  *addrs1,*addrs2;
   const unsigned  *addru1,*addru2;

   printf("*** M3EDC148 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     const void     *a1=NULL;
     volatile char   a2=0, b2=0;
     const int       a3=1,b3=a3;
     volatile short  a6[2]={0,0}, b6=1;
     const long      a7=0;
     volatile signed a8=0, b8=0, c8=0;
     unsigned        a9[2]={0,0}, b9=1, c9=0;

     a6[0] = -1;
     a6[1] = 0;

     addrv1 = a1;
     if (a1 != addrv1)
         printf(" *** M3EDC148 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC148 TEST-01 OK ***\n");

     a2 = 0x7f;  b2 = 0;
     if (a2!=127 || b2!=0)
         printf(" *** M3EDC148 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC148 TEST-02 OK ***\n");

     if (a3!=1 || b3!=1)
         printf(" *** M3EDC148 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC148 TEST-03 OK ***\n");
     if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
         printf(" *** M3EDC148 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC148 TEST-06 OK ***\n");

     addrl1 = &a7;
     if (a7!=*addrl1)
         printf(" *** M3EDC148 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC148 TEST-07 OK ***\n");

     a8 = 1;  b8 = a8-1;  c8 = b8-1;
     if (a8!=1 || b8!=0 || c8!=-1)
         printf(" *** M3EDC148 TEST-08 ERROR ***\n");
     else
         printf(" *** M3EDC148 TEST-08 OK ***\n");

     a9[0] = 0xffffffff;  a9[1] = a9[0]+1;  c9 = 1;
#if INT64
	 if (a9[0]!=4294967295 || a9[1]!=4294967296  || b9!=1 || c9!=1)
#else
     if (a9[0]!=4294967295 || a9[1]!=0 || b9!=1 || c9!=1)
#endif
         printf(" *** M3EDC148 TEST-09 ERROR ***\n");
     else
         printf(" *** M3EDC148 TEST-09 OK ***\n");
   }

   printf("*** M3EDC148 TEST ENDED ***\n");
   return 0;
}



 volatile const struct f1stag1 {
       short  s;
       long   l;
 } f1exst1;
 volatile const union f1utag1 {
       int    i;
       long   l;
 } f1exun1,f1exun12;

 int m3edc166()
{
   printf("*** M3EDC166 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const struct f1stag1 st1,*st1p;
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

     extern volatile const struct f1stag1 f1exst1;
     extern volatile const union f1utag1 f1exun1,f1exun12;

     typedef volatile const enum tagen1 {
           ena,  enb,  enc
     } typeen;
     typeen  en2,*addren2;

     st1p = &st1;
     if (st1.s!=st1p->s || st1.l!=st1p->l)
         printf(" *** M3EDC166 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC166 TEST-01 OK ***\n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** M3EDC166 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC166 TEST-02 OK ***\n");

     if (en1!=100 || enx!=-1 || eny!=0 || enz!=100)
         printf(" *** M3EDC166 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC166 TEST-03 OK ***\n");

#if INT64
	 if (un2[0].s!=-1 || un2[0].u!=18446744073709551615 ||
			  un2[1].s!=0 || un2[1].u!=0)
#else
     if (un2[0].s!=-1 || un2[0].u!=4294967295 ||
         un2[1].s!=0 || un2[1].u!=0)
#endif
         printf(" *** M3EDC166 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC166 TEST-04 OK ***\n");

     if (f1exst1.s || f1exst1.l)
         printf(" *** M3EDC166 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC166 TEST-05 OK ***\n");

     if (f1exun1.i || f1exun1.l || f1exun12.i || f1exun12.l)
         printf(" *** M3EDC166 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC166 TEST-06 OK ***\n");

     addren2 = &en2;
     if (en2!=*addren2 || ena!=0 || enb!=1 || enc!=2)
         printf(" *** M3EDC166 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC166 TEST-07 OK ***\n");
   }

   printf("*** M3EDC166 TEST ENDED ***\n");
   return 0;
}



 int m3edc174()
{
   printf("*** M3EDC174 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     const struct f2stag1 {
           short  s;
           long   l;
     } f2st1={0,0};
     const struct f2stag1 *f2st1p;
     volatile union f2utag1 {
           int    i;
           long   l;
     } f2un1={.i=0}, f2un12={.i=0};
     const enum f2etag1 {
           f2ena=0,  f2enb=1,  f2enc=2
     } f2en1=0, *f2en1p=NULL;

     volatile struct f2stag2 {
           char  c;
           int   i;
     } f2st2={0,0} ;
     const enum entag2 {
           f2enx=-1, f2eny, f2enz=100
     } f2en2 = f2enz;
     volatile union f2utag2 {
           signed  s;
           unsigned u;
     } f2un2[2] ;


     f2st2.c = 0x7f;
     f2st2.i = 0x7fffffff;
     f2un2[0].s = -1;
     f2un2[1].u = 0 ;

     f2st1p = &f2st1;
     if (f2st1.s!=f2st1p->s || f2st1.l!=f2st1p->l)
         printf(" *** M3EDC174 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC174 TEST-01 OK ***\n");

     f2un1 = f2un12;
     if (f2un1.i!=f2un12.i || f2un1.l!=f2un12.l)
         printf(" *** M3EDC174 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC174 TEST-02 OK ***\n");

     f2en1p = &f2en1;
     if (f2en1!=*f2en1p || f2ena!=0 || f2enb!=1 || f2enc!=2)
         printf(" *** M3EDC174 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC174 TEST-03 OK ***\n");

     if (f2st2.c!=127 || f2st2.i!=2147483647)
         printf(" *** M3EDC174 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC174 TEST-04 OK ***\n");

     if (f2en2!=100 || f2enx!=-1 || f2eny!=0 || f2enz!=100)
         printf(" *** M3EDC174 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC174 TEST-05 OK ***\n");

#if INT64
	 if (f2un2[0].s!=-1 || f2un2[0].u!=18446744073709551615 ||
		  f2un2[1].s!=0 || f2un2[1].u!=0)
#else
     if (f2un2[0].s!=-1 || f2un2[0].u!=4294967295 ||
         f2un2[1].s!=0 || f2un2[1].u!=0)
#endif
         printf(" *** M3EDC174 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC174 TEST-06 OK ***\n");
   }

   printf("*** M3EDC174 TEST ENDED ***\n");
   return 0;
}



 typedef int inttype;

 extern volatile inttype  fe3a5;
 const inttype           fe3a6;
 typedef volatile inttype  inttype2;

 int m3edc179()
{
   volatile int  *addrv1=NULL, *addrv2=NULL;
   const int     *addrc1=NULL, *addrc2=NULL;

   auto const inttype  a1=0;
   auto volatile inttype  a2=0, b2=0;
   register const inttype  a3=0;
   static volatile inttype  a4[2]={-1,0x7fffffff};

   extern volatile inttype  fe3a5;
   extern const inttype   fe3a6;
   inttype2  a7=0;

   printf("*** M3EDC179 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrc1 = &a1;
   if (a1!=*addrc1)
       printf(" *** M3EDC179 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC179 TEST-01 OK ***\n");

   addrv1 = &a2;  addrv2 = &b2;
   if (a2!=*addrv1 || b2!=*addrv2)
       printf(" *** M3EDC179 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC179 TEST-02 OK ***\n");

   if (a3!=0)
       printf(" *** M3EDC179 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC179 TEST-03 OK ***\n");

   if (a4[0]!=-1 || a4[1]!=2147483647)
       printf(" *** M3EDC179 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC179 TEST-04 OK ***\n");

   if (fe3a5)
       printf(" *** M3EDC179 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC179 TEST-05 OK ***\n");

   if (fe3a6)
       printf(" *** M3EDC179 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC179 TEST-06 OK ***\n");

   addrv1 = &a7;
   if (a7!=*addrv1)
       printf(" *** M3EDC179 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC179 TEST-07 OK ***\n");

   printf("*** M3EDC179 TEST ENDED ***\n");
   return 0;
}
volatile inttype fe3a5=0;



 int m3edc184()
{
   volatile const int  *addr,*addr2;

   printf("*** M3EDC184 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     volatile const inttype  a1;
     volatile const inttype  a2,b2;
     volatile const inttype  a3=0;
     volatile const inttype  a4[2]={-1,0x7fffffff};

     addr = &a1;
     if (a1!=*addr)
         printf(" *** M3EDC184 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC184 TEST-01 OK ***\n");

     addr = &a2;  addr2 = &b2;
     if (a2!=*addr || b2!=*addr2)
         printf(" *** M3EDC184 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC184 TEST-02 OK ***\n");

     if (a3!=0)
         printf(" *** M3EDC184 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC184 TEST-03 OK ***\n");

     if (a4[0]!=-1 || a4[1]!=2147483647)
         printf(" *** M3EDC184 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC184 TEST-04 OK ***\n");
   }

   printf("*** M3EDC184 TEST ENDED ***\n");
   return 0;
}



 int m3edc187()
{
   inttype  a1;
   inttype  a2,b2;
   inttype  a3=0;
   inttype  a4[2];

   printf("*** M3EDC187 ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = -1;
   if (a1!=-1)
       printf(" *** M3EDC187 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC187 TEST-01 OK ***\n");

   a2 = b2 = 1;
   if (a2!=1 || b2!=1)
       printf(" *** M3EDC187 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC187 TEST-02 OK ***\n");

   if (a3!=0)
       printf(" *** M3EDC187 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC187 TEST-03 OK ***\n");

   a4[0]=-1; a4[1]=0x7fffffff;
   if (a4[0]!=-1 || a4[1]!=2147483647)
       printf(" *** M3EDC187 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC187 TEST-04 OK ***\n");

   printf("*** M3EDC187 TEST ENDED ***\n");
   return 0;
}



 int  m3edc195()
 {

   auto volatile const struct f5stag {
       int i;
       char c;
   } f5st;
   volatile const enum f5etag {
       f5en1, f5en2=10, f5en3
   } f5en01;
   volatile struct f5stag2 {
       signed s;
       unsigned u;
   } f5st2;
   enum f5etag2 {
       f5en4=-1, f5en5, f5en6
   } f5en02 ;

   printf("*** M3EDC195 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {

         printf(" *** M3EDC195 TEST OK ***\n");
   }

   printf("*** M3EDC195 TEST ENDED ***\n");
   return 0;
}



void f6fnc3(volatile const unsigned long int,int);
void f6fnc2(volatile const unsigned int,int);
void f6fnc1(volatile const int,int);
void f6fnc0(volatile const int ,int);

 int m3edc305()
{
  f6fnc3(1ul,2);
  f6fnc2(1u,2);
  f6fnc1(1,2);
  f6fnc0(1,2);
  return 0;
}

void f6fnc3(volatile const unsigned long int a,int b)
{
  if (a == 1ul)
      printf("***** M3EDC305 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC305 - 01 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC305 - 02 ***** O K *****\n");
    else
      printf("***** M2EDC305 - 02 ***** N G *****\n");
}

void f6fnc2(volatile const unsigned int a,int b)
{
  if (a == 1u)
      printf("***** M3EDC305 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC305 - 03 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC305 - 04 ***** O K *****\n");
    else
      printf("***** M2EDC305 - 04 ***** N G *****\n");
}

void f6fnc1(volatile const int a,int b)
{
  if (a == 1)
      printf("***** M3EDC305 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC305 - 05 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC305 - 06 ***** O K *****\n");
    else
      printf("***** M2EDC305 - 06 ***** N G *****\n");
}

void f6fnc0(volatile const int  a,int b)
{
  if (a == 1)
      printf("***** M3EDC305 - 07 ***** O K *****\n");
    else
      printf("***** M3EDC305 - 07 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC305 - 08 ***** O K *****\n");
    else
      printf("***** M2EDC305 - 08 ***** N G *****\n");
}



void f7f3(register volatile const unsigned long int);
void f7f2(register volatile const unsigned int);
void f7f1(register volatile const int);
void f7f0(register volatile const int );

 int m3edc311()
{
  f7f3(1ul);
  f7f2(1u);
  f7f1(1);
  f7f0(1);
  return 0;
}

void f7f3(a)
register volatile const unsigned long int a;
{
  if (a == 1ul)
      printf("***** M3EDC311 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC311 - 01 ***** N G *****\n");
}

void f7f2(a)
register volatile const unsigned int a;
{
  if (a == 1u)
      printf("***** M3EDC311 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC311 - 02 ***** N G *****\n");
}

void f7f1(a)
register volatile const int a;
{
  if (a == 1)
      printf("***** M3EDC311 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC311 - 03 ***** N G *****\n");
}

void f7f0(a)
register volatile const int  a;
{
  if (a == 1)
      printf("***** M3EDC311 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC311 - 04 ***** N G *****\n");
}



void f8f3(volatile unsigned long int);
void f8f2(volatile unsigned int);
void f8f1(volatile int);
void f8f0(volatile int );

 int m3edc315()
{
  f8f3(1ul);
  f8f2(1u);
  f8f1(1);
  f8f0(1);
  return 0;
}

void f8f3(a)
volatile unsigned long int a;
{
  if (a == 1ul)
      printf("***** M3EDC315 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC315 - 01 ***** N G *****\n");
}

void f8f2(a)
volatile unsigned int a;
{
  if (a == 1u)
      printf("***** M3EDC315 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC315 - 02 ***** N G *****\n");
}

void f8f1(a)
volatile int a;
{
  if (a == 1)
      printf("***** M3EDC315 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC315 - 03 ***** N G *****\n");
}

void f8f0(a)
volatile int  a;
{
  if (a == 1)
      printf("***** M3EDC315 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC315 - 04 ***** N G *****\n");
}



typedef int type;

struct f9tag
{
  volatile const unsigned long int f9a01;
  volatile const unsigned int f9a02;
  volatile const int f9a03;
  volatile const int  f9a04;
  volatile unsigned long int f9a05;
  volatile unsigned int f9a06;
  volatile int f9a07;
  volatile int  f9a08;
  unsigned long int f9a09;
  unsigned int f9a10,f9a00:1;
  int f9a11;
  volatile const struct { int ss0; } f9a12;
  volatile struct { int ss1; } f9a13;
  struct { int ss2; } f9a14;
  volatile const type f9a15;
  volatile type f9a16;
  type f9a17;
} f9a = { 1, 2, 3, 4,
          5, 6, 7, 8,
          9, 10, 1, 11,
          { 12 }, { 13 }, { 14 },
          15, 16, 17 } ;

 int m3edc320()
{
  if (f9a.f9a00 == 1)
      printf("***** M3EDC320 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 01 ***** N G *****\n");

  if (f9a.f9a01 == 1)
      printf("***** M3EDC320 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 02 ***** N G *****\n");

  if (f9a.f9a02 == 2)
      printf("***** M3EDC320 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 03 ***** N G *****\n");

  if (f9a.f9a03 == 3)
      printf("***** M3EDC320 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 04 ***** N G *****\n");

  if (f9a.f9a04 == 4)
      printf("***** M3EDC320 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 05 ***** N G *****\n");

  if (f9a.f9a05 == 5)
      printf("***** M3EDC320 - 06 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 06 ***** N G *****\n");

  if (f9a.f9a06 == 6)
      printf("***** M3EDC320 - 07 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 07 ***** N G *****\n");

  if (f9a.f9a07 == 7)
      printf("***** M3EDC320 - 08 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 08 ***** N G *****\n");

  if (f9a.f9a08 == 8)
      printf("***** M3EDC320 - 09 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 09 ***** N G *****\n");

  if (f9a.f9a09 == 9)
      printf("***** M3EDC320 - 10 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 10 ***** N G *****\n");

  if (f9a.f9a10 == 10)
      printf("***** M3EDC320 - 11 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 11 ***** N G *****\n");

  if (f9a.f9a11 == 11)
      printf("***** M3EDC320 - 12 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 12 ***** N G *****\n");

  if (f9a.f9a12.ss0 == 12)
      printf("***** M3EDC320 - 13 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 13 ***** N G *****\n");

  if (f9a.f9a13.ss1 == 13)
      printf("***** M3EDC320 - 14 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 14 ***** N G *****\n");

  if (f9a.f9a14.ss2 == 14)
      printf("***** M3EDC320 - 15 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 15 ***** N G *****\n");

  if (f9a.f9a15 == 15)
      printf("***** M3EDC320 - 16 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 16 ***** N G *****\n");

  if (f9a.f9a16 == 16)
      printf("***** M3EDC320 - 17 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 17 ***** N G *****\n");

  if (f9a.f9a17 == 17)
      printf("***** M3EDC320 - 18 ***** O K *****\n");
    else
      printf("***** M3EDC320 - 18 ***** N G *****\n");
  return 0;
}



 int  m3mpcm09()
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   pi=&ai;
   fi=*pi;
   if(bi==20)
   {
     ei=*pi;
   }
   if(fi==10 && ei==10)
     printf("*** M3MPCM09 OK ***\n");
   else
     printf("*** M3MPCM09 NG *** EI=%d fi=%d\n",ei,fi);
   return 0;
 }


int m1fnc(int *);
int m3mprd07()
   { struct mpt3 {
    int mpt3a;
    int mpt3aa[61];
   };
   struct mpt3 st,*stp;
   int a,b,c,*p;
   stp=0;
   a=b=c=0;
   p=0;
   stp=&st;
   p=&st.mpt3aa[0];
   *p=10;
   a=st.mpt3aa[0];
   p=&(stp->mpt3aa[0]);
   p+=5;
   *p=30;
   m1fnc(&c);
   b=stp->mpt3aa[c];
   st.mpt3aa[1]=40;
   stp->mpt3aa[c]=b; 
   stp->mpt3aa[c]=b*2; 
   if(a==10) b=stp->mpt3aa[c];
   else b=stp->mpt3aa[c];
   if(a==10 && b==60)
   printf("M3MPRD07 OK\n");
   else printf("M3MPRD07 NG A=%d b=%d\n",a,b);
   stp->mpt3aa[b]=b; 
   return 0;
  }
 int   m1fnc(j)
  int *j;
  {
  *j=5;
  return 0;
  }



 int   m3mpsi04(){
 struct m2tag {
  int mema;
  int memb;
  char memc[4];
  };
 struct m2tag var1,var2,var3,*pint;
 int a[10];
 int x,y;
 pint=&var3;
 pint->mema=5;
 pint->memb=15;
 a[4]=5;
 a[pint->mema]=3;
 pint=&var2;
 pint->memb=4;
 x=pint->memb;
 pint->memb=a[4];
 x=pint->memb;
 pint=&var3;
 y=x;
 a[1]=y;
 pint=&var3;
 pint->memc[1]=y+pint->memb;
 if (pint->memc[1]==20) printf("M3MPSI04 OK\n");
 else
 printf("M3MPSI04 NG\n");
 return 0;
 }



 int scoprl1()
{
    int i1,i2,i3,i4,*pi,ii                                      ;
    short int *p1,*p2                                           ;

    printf("********** SCOPRL1 STARTED *********\n")  ;

    i1     = 1                                                  ;
    i2     = 2                                                  ;

    p1     =  (short int*) &i1                                  ;
    p2     =  (short int*) &i2                                  ;
    pi     =  &i1                                               ;

    i3     = *(int *)p1                                         ;
    i4     = *(int *)p2                                         ;
    ii     = *pi                                                ;

    if (i3 == 1 )
        printf("********** SCOPRL1 -01 OK **********\n")    ;
    else
        printf("********** SCOPRL1 -01 NG **********\n")    ;

    if (ii == 1 )
        printf("********** SCOPRL1 -01.5 OK **********\n")  ;
    else
        printf("********** SCOPRL1 -01.5 NG **********\n")  ;

    if (i4 == 2 )
        printf("********** SCOPRL1 -02 OK **********\n")    ;
    else
        printf("********** SCOPRL1 -02 NG **********\n")    ;

    printf("********** SCOPRL1 ENDED **********\n")    ;
    return 0;
}


 int scood01()
{
    int    i,k                                                ;



    printf("********** SCOOD01 STARTED *********\n");

    i = 1                                                     ;
    k = 2                                                     ;

    switch (i) {
    case 1:
        printf("********** SCOOD01 -01 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 5:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    }



    if ( i<k || ((k>i)==(i<k)) )
        printf("********** SCOOD01 -02 OK **********\n")  ;
    else
        printf("********** SCOOD01 -02 NG **********\n")  ;

    printf("********** SCOOD01 ENDED **********\n")  ;
    return 0;
}
