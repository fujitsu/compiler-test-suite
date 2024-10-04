

#include<stdio.h>
#include<string.h>
int mpfnc1 (void);
int m3edc163 (void);
int m3mprd04 (void);
int m3edc170 (void);
int m3edc125 (void);
int m3edc143 (void);
int scohd01 (void);
int m3edc156 (void);
int scoprl1 (void);
int m3edc133 (void);
int m3edc180 (void);
int m3edc112 (void);
int m3mpcm05 (void);
int 
main (void)
{
   m3mpcm05();  
   m3edc112();  
   m3edc180();  
   m3edc133();  
   scoprl1();   
   m3edc156();  
   scohd01();   
   m3edc143();  
   m3edc125();  
   m3edc170();  
   m3mprd04();  
   m3edc163();  


}



 long unsigned fe1a4;
 static unsigned char fe1a7[2];
 extern char signed fe1a8=10;
 signed long fe1a5;

int 
m3edc112 (void)
{

   {
     auto short signed a1;
     register unsigned int a2=0,b2=1;
     static int signed a3[2]={2,3};
     extern unsigned long fe1a4;
     extern long signed   fe1a5;
     typedef unsigned short t_ul;
     t_ul  a6;


     printf("*** M3EDC111 ** MK3 TEST FOR DCL ** STARTED ***\n");

     a1 = -1;
     if (a1!=-1)
         printf(" *** M3EDC111 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC111 TEST-01 OK ***\n");

     if (a2!=0 || b2!=1)
         printf(" *** M3EDC111 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC111 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC111 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC111 TEST-03 OK ***\n");

     if (fe1a4!=0)
         printf(" *** M3EDC111 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC111 TEST-04 OK ***\n");

     if (fe1a5!=0)
         printf(" *** M3EDC111 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC111 TEST-05 OK ***\n");

     a6 = 0xffff;
     if (a6!=65535)
         printf(" *** M3EDC111 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC111 TEST-06 OK ***\n");

     fe1a7[0] = 0xff;
     if (fe1a7[0]!=255 || fe1a7[1]!=0)
         printf(" *** M3EDC111 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC111 TEST-07 OK ***\n");

     if (fe1a8!=10)
         printf(" *** M3EDC111 TEST-08 ERROR ***\n");
     else
         printf(" *** M3EDC111 TEST-08 OK ***\n");
   }

   printf("*** M3EDC111 TEST ENDED ***\n");
   return 0;
}



int 
m3edc125 (void)
{
   const volatile signed short int   *addrs1,*addrs2;
   const volatile unsigned short int *addru1,*addru2;

   const volatile signed short int   a1=0, b5=0;
   const volatile unsigned int short a2=0, b2=0;
   volatile const short unsigned int a3=1, b3=0;
   volatile const short int signed   a4[2]={-2,3};
   volatile const int signed short   a5[2]={4,5};
   volatile const int short unsigned a6=0, b6[2]={6,100};


   printf("*** M3EDC125 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;
   if (a1!=*addrs1)
       printf(" *** M3EDC125 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC125 TEST-01 OK ***\n");

   addru1 = &a2;  addru2 = &b2;
   if (a2!=*addru1 || b2!=*addru2)
       printf(" *** M3EDC125 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC125 TEST-02 OK ***\n");

   addru1 = &b3;
   if (a3!=1 || b3!=*addru1)
       printf(" *** M3EDC125 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC125 TEST-03 OK ***\n");

   if (a4[0]!=-2 || a4[1]!=3)
       printf(" *** M3EDC125 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC125 TEST-04 OK ***\n");

   addrs1 = &b5;
   if (a5[0]!=4 || a5[1]!=5 || b5!=*addrs1)
       printf(" *** M3EDC125 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC125 TEST-05 OK ***\n");

   addru1 = &a6;  addru2 = &b6[1];
   if (a6!=*addru1 || b6[0]!=6 || b6[1]!=*addru2)
       printf(" *** M3EDC125 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC125 TEST-06 OK ***\n");

   printf("*** M3EDC125 TEST ENDED ***\n");
   return 0;
}



int 
m3edc133 (void)
{

   volatile const   int *addr1=NULL, *addr2=NULL;

   volatile const   int a1=0;
   volatile const   int a2=0;
   volatile const   int a3=0, b3=0;


   printf("*** M3EDC133 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr1 = &a1;
   if (a1!=*addr1)
       printf(" *** M3EDC133 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC133 TEST-01 OK ***\n");

   if (a2)
       printf(" *** M3EDC133 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC133 TEST-02 OK ***\n");

   addr1 = &a3;  addr2 = &b3;
   if (a3!=*addr1 || b3!=*addr2)
       printf(" *** M3EDC133 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC133 TEST-03 OK ***\n");

  printf(" *** M3EDC133 TEST ENDED ***\n");
  return 0;
}



int 
m3edc143 (void)
{

   const signed long     *addrsl1,*addrsl2;
   const unsigned long   *addrul1,*addrul2;
   const signed short    *addrss1,*addrss2;
   const unsigned short  *addrus1,*addrus2;
   const signed int      *addrsi1,*addrsi2;
   const unsigned int    *addrui1,*addrui2;
   const signed char     *addrsc1,*addrsc2,*addrsc3;
   const unsigned char   *addruc1,*addruc2,*addruc3;

   volatile signed long    a1=0;
   const long unsigned     a2=0, b2=0;
   volatile signed short   a3=-1, b3=0;
   const unsigned short    a4[2]={2,3};
   volatile int unsigned   a5=0, b5[2]={4,5};
   const signed int        a6[2]={6,7},b6=8;
   volatile char unsigned  a7=0, b7=0, c7=0;
   const signed char       a8=0, b8=1, c8[2]={9,0};


   printf("*** M3EDC143 ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = 0;
   if (a1!=0)
       printf(" *** M3EDC143 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC143 TEST-01 OK ***\n");

   addrul1 = &a2;  addrul2 = &b2;
   if (a2!=*addrul1 || b2!=*addrul2)
       printf(" *** M3EDC143 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC143 TEST-02 OK ***\n");

   b3 = -1;
   if (a3!=-1 || b3!=-1)
       printf(" *** M3EDC143 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC143 TEST-03 OK ***\n");

   if (a4[0]!=2 || a4[1]!=3)
       printf(" *** M3EDC143 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC143 TEST-04 OK ***\n");

   a5 = 0xffffffff;
   if (a5!=4294967295 || b5[0]!=4 || b5[1]!=5)
       printf(" *** M3EDC143 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC143 TEST-05 OK ***\n");

   if (a6[0]!=6 || a6[1]!=7 || b6!=8)
       printf(" *** M3EDC143 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC143 TEST-06 OK ***\n");

   a7 = b7 = c7 = 0x7f;
   if (a7!=127 || b7!=127 || c7!=127)
       printf(" *** M3EDC143 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC143 TEST-07 OK ***\n");

   addrsc1 = &a8;
   if (a8!=*addrsc1 || b8!=1 || c8[0]!=9 || c8[1]!=0)
       printf(" *** M3EDC143 TEST-08 ERROR ***\n");
   else
       printf(" *** M3EDC143 TEST-08 OK ***\n");

   printf("*** M3EDC143 TEST ENDED ***\n");
   return 0;
}



int 
m3edc156 (void)
{
   printf("*** M3EDC156 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     signed long int    a1=0;
     unsigned int long  a2=0, b2=0;
     long unsigned int  a3=1, b3=0;
     long int signed    a4[2]={0,0};
     int signed long    a5[2]={0,0}, b5=0;
     int long unsigned  a6=0, b6[2]={0,0};

     a4[0]=2; a4[1]=3;
     a5[0]=4; a5[1]=5;
     b6[0]=6; b6[1]=-1;

     a1 = -1;
     if (a1!=-1)
         printf(" *** M3EDC156 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC156 TEST-01 OK ***\n");

     a2 = a1+1;  b2 = a1-1;
     if (a2!=0 || b2!=-2)
         printf(" *** M3EDC156 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC156 TEST-02 OK ***\n");

     b3 = 0xffffffff;
     if (a3!=1 || b3!=4294967295)
         printf(" *** M3EDC156 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC156 TEST-03 OK ***\n");

     if (a4[0]!=2 || a4[1]!=3)
         printf(" *** M3EDC156 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC156 TEST-04 OK ***\n");

     b5 = a5[0];
     if (a5[0]!=4 || a5[1]!=5 || b5!=4)
         printf(" *** M3EDC156 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC156 TEST-05 OK ***\n");

     a6 = b6[1] = -1;
     if (a6!=-1 || b6[0]!=6 || b6[1]!=-1)
         printf(" *** M3EDC156 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC156 TEST-06 OK ***\n");
   }

   printf("*** M3EDC156 TEST ENDED ***\n");
   return 0;
}



int 
m3edc163 (void)
{

   void     *a1=NULL, *addrv=NULL;
   char      a2=0, b2=0;
   int       a3=1,b3=a3;
   short     a6[2]={0,0},b6=1;
   long      a7=0;
   signed    a8=0, b8=0, c8=0;
   unsigned  a9[2]={0,0}, b9=1, c9=0;

   a6[0] = -1;
   a6[1] = 0;

   printf("*** M3EDC163 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrv = a1;
   if (a1 != addrv)
       printf(" *** M3EDC163 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC163 TEST-01 OK ***\n");

   a2 = 0x7f;  b2 = 0;
   if (a2!=127 || b2!=0)
       printf(" *** M3EDC163 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC163 TEST-02 OK ***\n");

   if (a3!=1 || b3!=1)
       printf(" *** M3EDC163 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC163 TEST-03 OK ***\n");
   if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
       printf(" *** M3EDC163 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC163 TEST-04 OK ***\n");

   a7 = 12345;
   if (a7!=12345)
       printf(" *** M3EDC163 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC163 TEST-05 OK ***\n");

   a8 = 1;  b8 = a8-1;  c8 = b8-1;
   if (a8!=1 || b8!=0 || c8!=-1)
       printf(" *** M3EDC163 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC163 TEST-06 OK ***\n");

   a9[0] = 0xffffffff;  a9[1] = a9[0]+1;  c9 = 1;
#if INT64
   if (a9[0]!=4294967295 || a9[1]!=4294967296 || b9!=1 || c9!=1)
#else
   if (a9[0]!=4294967295 || a9[1]!=0 || b9!=1 || c9!=1)
#endif
       printf(" *** M3EDC163 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC163 TEST-07 OK ***\n");

   printf("*** M3EDC163 TEST ENDED ***\n");
   return 0;
}



 struct fe3tag1 {
       short  s;
       long   l;
 } fe3exs1;
 union fe3utag1 {
       int    i;
       long   l;
 } fe3exu1,fe3exu12;

int 
m3edc170 (void)
{
   printf("*** M3EDC170 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto struct fe3tag1 st1,*st1p;
     auto struct fe3tag2 {
           char  c;
           int   i;
     } st2 ;
     register enum entag2 {
           enx=-1,  eny,  enz=100
     } en1 = enz;
     static union fe3utag2 {
           signed  s;
           unsigned u;
     } un2[2] = { { -1 }, { 0 } };

     extern struct fe3tag1 fe3exs1;
     extern union fe3utag1 fe3exu1,fe3exu12;

     typedef enum tagen1 {
           ena,  enb,  enc
     } typeen;
     typeen  en2;

     st1.s = -1;  st1.l = 0x7fffffff;
     st2.c = 0x7f;  st2.i = 0x7fffffff;

     if (st1.s!=-1 || st1.l!=2147483647)
         printf(" *** M3EDC170 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-01 OK ***\n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** M3EDC170 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-02 OK ***\n");

     if (en1!=100 || enx!=-1 || eny!=0 || enz!=100)
         printf(" *** M3EDC170 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-03 OK ***\n");

#if INT64
     if (un2[0].s!=-1 || un2[0].u!=18446744073709551615 ||
         un2[1].s!=0 || un2[1].u!=0)
#else
     if (un2[0].s!=-1 || un2[0].u!=4294967295 ||
         un2[1].s!=0 || un2[1].u!=0)
#endif
         printf(" *** M3EDC170 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-04 OK ***\n");

     if (fe3exs1.s || fe3exs1.l)
         printf(" *** M3EDC170 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-05 OK ***\n");

     if (fe3exu1.i || fe3exu1.l || fe3exu12.i || fe3exu12.l)
         printf(" *** M3EDC170 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-06 OK ***\n");

     en2 = enb;
     if (en2!=1 || ena!=0 || enb!=1 || enc!=2)
         printf(" *** M3EDC170 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-07 OK ***\n");
   }

   printf("*** M3EDC170 TEST ENDED ***\n");
   return 0;
}



 typedef int inttype;

 extern volatile inttype  fe4a5;
 const inttype           fe4a6;

int 
m3edc180 (void)
{
   printf("*** M3EDC180 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     volatile int  *addrv1,*addrv2;
     const int     *addrc1,*addrc2;

     auto const inttype  a1=0;
     auto volatile inttype  a2=0, b2=0;
     register const inttype  a3=0;
     static volatile inttype  a4[2]={-1,0x7fffffff};

     extern volatile inttype  fe4a5;
     extern const inttype   fe4a6;
     typedef volatile inttype  inttype2;
     inttype2  a7=0;

     addrc1 = &a1;
     if (a1!=*addrc1)
         printf(" *** M3EDC180 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC180 TEST-01 OK ***\n");

     addrv1 = &a2;  addrv2 = &b2;
     if (a2!=*addrv1 || b2!=*addrv2)
         printf(" *** M3EDC180 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC180 TEST-02 OK ***\n");

     if (a3!=0)
         printf(" *** M3EDC180 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC180 TEST-03 OK ***\n");

     if (a4[0]!=-1 || a4[1]!=2147483647)
         printf(" *** M3EDC180 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC180 TEST-04 OK ***\n");

     if (fe4a5)
         printf(" *** M3EDC180 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC180 TEST-05 OK ***\n");

     if (fe4a6)
         printf(" *** M3EDC180 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC180 TEST-06 OK ***\n");

     addrv1 = &a7;
     if (a7!=*addrv1)
         printf(" *** M3EDC180 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC180 TEST-07 OK ***\n");
   }

   printf("*** M3EDC180 TEST ENDED ***\n");
   return 0;
}
volatile inttype fe4a5 = 0;



int 
m3edc190 (void)
{
   printf("*** M3EDC190 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     struct sttag1;
     union  untag1;

     struct sttag1 {
           short  s;
           long   l;
     } ;
     union untag1 {
           int    i;
           long   l;
     } ;
     enum entag1 {
           ena,  enb,  enc
     } ;

     static volatile const struct sttag1 st1={-1,0};
     static volatile const union untag1 un1={-1};
     static volatile enum entag1 en1=ena;
     static struct sttag1 st2={0x7fff,0x7fffffff};


     if (st1.s!=-1 || st1.l!=0)
         printf(" *** M3EDC190 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC190 TEST-01 OK ***\n");

     if (un1.i!=-1 || un1.l!=-1)
         printf(" *** M3EDC190 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC190 TEST-02 OK ***\n");

     if (en1!=0 || ena!=0 || enb!=1 || enc!=2)
         printf(" *** M3EDC190 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC190 TEST-03 OK ***\n");

     if (st2.s!=32767 || st2.l!=2147483647)
         printf(" *** M3EDC190 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC190 TEST-04 OK ***\n");
   }

   printf("*** M3EDC190 TEST ENDED ***\n");
   return 0;
}



int 
m3mpcm05 (void)
{
  unsigned short int     s1 = 1;
  signed short int       s2 = 1;
  short int              s3 = 1;
  unsigned char          c1 = 'b';
  signed char            c2 = 'b';
  char                   c3 = 'b';
  unsigned short int     usshi = 1;
  signed short int       sshi  = 1;
  short int              shi   = 1;
  unsigned char          usc = 'a';
  signed char            sc  = 'a';
  char                   c   = 'a';

    printf("*************\n");


#if INT64
  if ( sizeof ( s1 + usshi ) == 8 )
#else
  if ( sizeof ( s1 + usshi ) == 4 )
#endif
    printf("TEST01 --> OK \n");
#if INT64
  if ( sizeof ( s1 + sshi ) == 8 )
#else
  if ( sizeof ( s1 + sshi ) == 4 )
#endif
    printf("TEST02 --> OK \n");
#if INT64
  if ( sizeof ( s1 + shi ) == 8 )
#else
  if ( sizeof ( s1 + shi ) == 4 )
#endif
    printf("TEST03 --> OK \n");
#if INT64
  if ( sizeof ( s1 + usc ) == 8 )
#else
  if ( sizeof ( s1 + usc ) == 4 )
#endif
    printf("TEST04 --> OK \n");
#if INT64
  if ( sizeof ( s1 + sc ) == 8 )
#else
  if ( sizeof ( s1 + sc ) == 4 )
#endif
    printf("TEST05 --> OK \n");
#if INT64
  if ( sizeof ( s1 + c ) == 8 )
#else
  if ( sizeof ( s1 + c ) == 4 )
#endif
    printf("TEST06 --> OK \n");
#if INT64
  if ( sizeof ( s2 + sshi ) == 8 )
#else
  if ( sizeof ( s2 + sshi ) == 4 )
#endif
    printf("TEST07 --> OK \n");
#if INT64
  if ( sizeof ( s2 + shi ) == 8 )
#else
  if ( sizeof ( s2 + shi ) == 4 )
#endif
    printf("TEST08 --> OK \n");
#if INT64
  if ( sizeof ( s2 + usc ) == 8 )
#else
  if ( sizeof ( s2 + usc ) == 4 )
#endif
    printf("TEST09 --> OK \n");
#if INT64
  if ( sizeof ( s2 + sc ) == 8 )
#else
  if ( sizeof ( s2 + sc ) == 4 )
#endif
    printf("TEST10 --> OK \n");
#if INT64
  if ( sizeof ( s2 + c ) == 8 )
#else
  if ( sizeof ( s2 + c ) == 4 )
#endif
    printf("TEST11 --> OK \n");
#if INT64
  if ( sizeof ( s3 + shi ) == 8 )
#else
  if ( sizeof ( s3 + shi ) == 4 )
#endif
    printf("TEST12 --> OK \n");
#if INT64
  if ( sizeof ( s3 + usc ) == 8 )
#else
  if ( sizeof ( s3 + usc ) == 4 )
#endif
    printf("TEST13 --> OK \n");
#if INT64
  if ( sizeof ( s3 + sc ) == 8 )
#else
  if ( sizeof ( s3 + sc ) == 4 )
#endif
    printf("TEST14 --> OK \n");
#if INT64
  if ( sizeof ( s3 + c ) == 8 )
#else
  if ( sizeof ( s3 + c ) == 4 )
#endif
    printf("TEST15 --> OK \n");
#if INT64
  if ( sizeof ( c1 + usc ) == 8 )
#else
  if ( sizeof ( c1 + usc ) == 4 )
#endif
    printf("TEST16 --> OK \n");
#if INT64
  if ( sizeof ( c1 + sc ) == 8 )
#else
  if ( sizeof ( c1 + sc ) == 4 )
#endif
    printf("TEST17 --> OK \n");
#if INT64
  if ( sizeof ( c1 + c ) == 8 )
#else
  if ( sizeof ( c1 + c ) == 4 )
#endif
    printf("TEST18 --> OK \n");
#if INT64
  if ( sizeof ( c2 + sc ) == 8 )
#else
  if ( sizeof ( c2 + sc ) == 4 )
#endif
    printf("TEST19 --> OK \n");
#if INT64
  if ( sizeof ( c2 + c ) == 8 )
#else
  if ( sizeof ( c2 + c ) == 4 )
#endif
    printf("TEST20 --> OK \n");
#if INT64
  if ( sizeof ( c3 + c ) == 8 )
#else
  if ( sizeof ( c3 + c ) == 4 )
#endif
    printf("TEST21 --> OK \n");
  return 0;
}



struct estr {
float x;
int y;
int a[10];
};
struct west {
int b[10];
int z;
float w;
};
int 
m3mprd04 (void)
{
  printf("M3MPRD04 START\n");
  mpfnc1();                          
  printf("M3MPRD04 END  \n");
  return 0;
}
int 
mpfnc1 (void)
{
  char *ap ;
  struct estr ea;
  struct west eb;
  struct estr *pint1;
  struct estr *pint2;
  struct west *pint3;
  float  ff;
  int num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=1;
  pint1->a[num]=20;
  pint3->b[num]=20;
  pint1->x=1.0;
  pint1->y=10;
  pint3->w=pint1->x;
  pint1->a[num]=10;
  pint2->a[num]=pint1->a[num];
  if (pint1->a[num]==10) printf("m3mprd01 ok\n");
  else
  printf("m3mprd01 ng\n");
  if (pint3->w==1.0 ) printf("m3mprd01 ok\n");
  else
  printf("m3mprd01 ng\n");
  return 0;
}



int 
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
  return 0;
}



int 
scoprl1 (void)
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
