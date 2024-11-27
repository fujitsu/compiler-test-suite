#include <stdlib.h>
#include <math.h>
  
 
 
 
 
 
 


#include<stdio.h>
int m3mprd02();
int m3egpt01();
int m3edc111();
int m3egct09();
int scocv03();
int m3edc150();
int m3mpcm03();
int m3edc141();
int m3edc160();
int m3edc123();
int scobe08();
int m3edc131();
int m3edc106();
int func1();
int main()
{
   m3edc106();   
   m3edc131();   
   scobe08();    
   m3edc123();   
   m3mprd02();   
   m3edc160();   
   m3edc141();   
   m3mpcm03();   
   m3edc150();   
   scocv03();    
   m3egct09();   
   m3edc111();   
   m3egpt01();   


exit (0);
}

 
 
 

 extern long int signed fe1a4[2]={7,8};
 int signed long fe1a5;

int m3edc106()
{
   signed long int *addr11;
   unsigned long int *addr21;

   printf("*** M3EDC106 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto signed long int a1=0;
     register signed int long a2=0x7fffffff,b2=-1;
     static long unsigned int a3[2]={0, 0};
     extern long int signed fe1a4[2];
     extern int signed long fe1a5;
     typedef int long unsigned type1;
     type1  a6=0;

     addr11 = &a1;
     if (a1!=*addr11)
         printf(" *** M3EDC106 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-01 OK ***\n");

     if (a2!=2147483647 || b2!=-1)
         printf(" *** M3EDC106 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-02 OK ***\n");

     addr21 = a3;
     if (a3[0]!=*addr21)
         printf(" *** M3EDC106 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-03 OK ***\n");

     if (fe1a4[0]!=7 || fe1a4[1]!=8)
         printf(" *** M3EDC106 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-04 OK ***\n");

     if (fe1a5!=0)
         printf(" *** M3EDC106 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-05 OK ***\n");

     addr21 = &a6;
     if (a6!=*addr21)
         printf(" *** M3EDC106 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-06 OK ***\n");
   }

   printf("*** M3EDC106 TEST ENDED ***\n");
   return 0;
}

 
 
 


 long unsigned fe2a4;
 static unsigned char fe2a7[2];
 extern char signed fe2a8=10;
 signed long fe2a5;
 typedef unsigned short fe2t_ul;

int m3edc111()
{

   auto short signed a1=0;
   register unsigned int a2=0,b2=1;
   static int signed a3[2]={2,3};
   extern unsigned long fe2a4;
   extern long signed   fe2a5;
   fe2t_ul a6=0;


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

   if (fe2a4!=0)
       printf(" *** M3EDC111 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC111 TEST-04 OK ***\n");

   if (fe2a5!=0)
       printf(" *** M3EDC111 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC111 TEST-05 OK ***\n");

   a6 = 0xffff;
   if (a6!=65535)
       printf(" *** M3EDC111 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC111 TEST-06 OK ***\n");

   fe2a7[0] = 0xff;
   if (fe2a7[0]!=255 || fe2a7[1]!=0)
       printf(" *** M3EDC111 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC111 TEST-07 OK ***\n");

   if (fe2a8!=10)
       printf(" *** M3EDC111 TEST-08 ERROR ***\n");
   else
       printf(" *** M3EDC111 TEST-08 OK ***\n");

   printf("*** M3EDC111 TEST ENDED ***\n");
   return 0;
}

 
 
 


int m3edc123()
{
   const volatile signed long int    *addrs1,*addrs2;
   const volatile unsigned long int  *addru1,*addru2;

   const volatile signed long int    a1=0;
   const volatile unsigned int long  a2=0, b2=0;
   volatile const long unsigned int  a3=1,b3=0;
   static volatile const long int signed    a4[2]={2,3};
   static volatile const int signed long    a5[2]={4,5}, b5=0;
   static volatile const int long unsigned  a6=0, b6[2]={6};

   printf("*** M3EDC123 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;
   if (a1!=*addrs1)
       printf(" *** M3EDC123 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC123 TEST-01 OK ***\n");

   addru1 = &a2;  addru2 = &b2;
   if (a2!=*addru1 || b2!=*addru2)
       printf(" *** M3EDC123 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC123 TEST-02 OK ***\n");

   addru1 = &b3;
   if (a3!=1 || b3!=*addru1)
       printf(" *** M3EDC123 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC123 TEST-03 OK ***\n");

   if (a4[0]!=2 || a4[1]!=3)
       printf(" *** M3EDC123 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC123 TEST-04 OK ***\n");

   addrs1 = &b5;
   if (a5[0]!=4 || a5[1]!=5 || b5!=*addrs1)
       printf(" *** M3EDC123 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC123 TEST-05 OK ***\n");

   addru1 = &a6;  addru2 = &b6[1];
   if (a6!=*addru1 || b6[0]!=6 || b6[1]!=*addru2)
       printf(" *** M3EDC123 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC123 TEST-06 OK ***\n");

   printf("*** M3EDC123 TEST ENDED ***\n");
   return 0;
}

 
 
 


int m3edc131()
{

   volatile const void    *addrv1;
   volatile const char    *addrc1,*addrc2;
 
 
   volatile const long    *addrl1;
   volatile const signed  *addrs1,*addrs2,*addrs3;
   volatile const unsigned  *addru1,*addru2;

   volatile const void *a1=NULL;
   volatile const char a2=0, b2=0;
   volatile const int a3=1,b3=a3;
 
 
   volatile const short a6[2]={-1,0},b6=1;
   volatile const long a7=0;
   volatile const signed a8=0, b8=0, c8=0;
   volatile const unsigned a9[2]={0,0}, b9=1, c9=0;


   printf("*** M3EDC131 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrv1 = a1;
   if (a1 != addrv1)
       printf(" *** M3EDC131 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC131 TEST-01 OK ***\n");

   addrc1 = &a2;  addrc2 = &b2;
   if (a2!=*addrc1 || b2!=*addrc2)
       printf(" *** M3EDC131 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC131 TEST-02 OK ***\n");

   if (a3!=1 || b3!=1)
       printf(" *** M3EDC131 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC131 TEST-03 OK ***\n");
   if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
       printf(" *** M3EDC131 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC131 TEST-04 OK ***\n");

   addrl1 = &a7;
   if (a7!=*addrl1)
       printf(" *** M3EDC131 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC131 TEST-05 OK ***\n");

   addrs1 = &a8;  addrs2 = &b8;  addrs3 = &c8;
   if (a8!=*addrs1 || b8!=*addrs2 || c8!=*addrs3)
       printf(" *** M3EDC131 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC131 TEST-06 OK ***\n");

   addru1 = a9;  addru2 = &c9;
   if (a9[0]!=*addru1 || b9!=1 || c9!=*addru2)
       printf(" *** M3EDC131 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC131 TEST-07 OK ***\n");

   printf("*** M3EDC131 TEST ENDED ***\n");
   return 0;
}

 
 
 


int m3edc141()
{
   const signed short int   *addrs1,*addrs2;
   const unsigned short int *addru1,*addru2;

   const signed short int   a1=0;
   volatile unsigned int short a2=0, b2=0;
   const short unsigned int a3=1, b3=0;
   const int signed short   b5=0;
   volatile int short unsigned a6=0;

   printf("*** M3EDC141 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;
   if (a1!=*addrs1)
       printf(" *** M3EDC141 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC141 TEST-01 OK ***\n");

   a2 = 0x7fff;  b2 = 0xffff;
   if (a2!=32767 || b2!=65535)
       printf(" *** M3EDC141 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC141 TEST-02 OK ***\n");

   addru1 = &b3;
   if (a3!=1 || b3!=*addru1)
       printf(" *** M3EDC141 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC141 TEST-03 OK ***\n");

   addrs1 = &b5;
   if (b5!=*addrs1)
       printf(" *** M3EDC141 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC141 TEST-05 OK ***\n");

   a6 = 0x7fff;
   if (a6!=32767)
       printf(" *** M3EDC141 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC141 TEST-06 OK ***\n");

   printf("*** M3EDC141 TEST ENDED ***\n");
   return 0;
}

 
 
 


int m3edc150()
{

   const   int *addr1,*addr2;

   printf("*** M3EDC150 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     const      int a1=0;
     volatile   int a2=0;
     const      int a3=0, b3=0;
     static volatile int   a4[2]={1,2};          
     static const int      a5[2]={3,4},b5=1;  


     addr1 = &a1;
     if (a1!=*addr1)
         printf(" *** M3EDC150 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC150 TEST-01 OK ***\n");

     if (a2)
         printf(" *** M3EDC150 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC150 TEST-02 OK ***\n");

     addr1 = &a3;  addr2 = &b3;
     if (a3!=*addr1 || b3!=*addr2)
         printf(" *** M3EDC150 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC150 TEST-03 OK ***\n");

     if (a4[0]!=1 || a4[1]!=2)
         printf(" *** M3EDC150 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC150 TEST-04 OK ***\n");

     if (a5[0]!=3 || a5[1]!=4 || b5!=1)
         printf(" *** M3EDC150 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC150 TEST-05 OK ***\n");
   }

   printf("*** M3EDC150 TEST ENDED ***\n");
   return 0;
}

 
 
 


 int m3edc160()
{

   printf("*** M3EDC160 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     signed long     a1=0;
     long unsigned   a2=0, b2=0;
     signed short    a3=-1, b3=0;
     unsigned short  a4[2]={0,0};
     int unsigned    a5=0, b5[2]={0,0};
     signed int      a6[2]={0,0}, b6=8;
     char unsigned   a7,b7,c7;
     signed char     a8,b8=1,c8[2];

     a4[0]=2; a4[1]=3;
     b5[0]=4; b5[1]=5;
     a6[0]=6; a6[1]=7;
     c8[0]=9; c8[1]=0;


     a1 = 0;
     if (a1!=0)
         printf(" *** M3EDC160 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC160 TEST-01 OK ***\n");

     a2 = 0;  b2 = 1;
     if (a2!=0 || b2!=1)
         printf(" *** M3EDC160 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC160 TEST-02 OK ***\n");

     b3 = -1;
     if (a3!=-1 || b3!=-1)
         printf(" *** M3EDC160 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC160 TEST-03 OK ***\n");

     if (a4[0]!=2 || a4[1]!=3)
         printf(" *** M3EDC160 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC160 TEST-04 OK ***\n");

     a5 = 0xffffffff;
     if (a5!=4294967295 || b5[0]!=4 || b5[1]!=5)
         printf(" *** M3EDC160 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC160 TEST-05 OK ***\n");

     if (a6[0]!=6 || a6[1]!=7 || b6!=8)
         printf(" *** M3EDC160 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC160 TEST-06 OK ***\n");

     a7 = b7 = c7 = 0xff;
     if (a7!=255 || b7!=255 || c7!=255)
         printf(" *** M3EDC160 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC160 TEST-07 OK ***\n");

     a8 = -1;
     if (a8!=-1 || b8!=1 || c8[0]!=9 || c8[1]!=0)
         printf(" *** M3EDC160 TEST-08 ERROR ***\n");
     else
         printf(" *** M3EDC160 TEST-08 OK ***\n");
   }

   printf("*** M3EDC160 TEST ENDED ***\n");
   return 0;
}

 
 
 


 int m3egct09()
{
  long int               a = 1;
  long int               li   = 1;
  unsigned int           usi = 1;
  signed int             si  = 1;
  int                    i   = 1;
  unsigned short int     usshi = 1;
  signed short int       sshi  = 1;
  short int              shi   = 1;
  unsigned char          usc = 'a';
  signed char            sc  = 'a';
  char                   c   = 'a';

    printf("*************\n");


 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + li ) == 4 )
#else A64
  if ( sizeof ( a + li ) == 8 )
#endif
    printf("TEST01 --> OK \n");
 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + usi ) == 4 )
#else A64
  if ( sizeof ( a + usi ) == 8 )
#endif
    printf("TEST02 --> OK \n");
 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + si ) == 4 )
#else A64
  if ( sizeof ( a + si ) == 8 )
#endif
    printf("TEST03 --> OK \n");
 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + i ) == 4 )
#else A64
  if ( sizeof ( a + i ) == 8 )
#endif
    printf("TEST04 --> OK \n");
 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + usshi ) == 4 )
#else A64
  if ( sizeof ( a + usshi ) == 8 )
#endif
    printf("TEST05 --> OK \n");
 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + sshi ) == 4 )
#else A64
  if ( sizeof ( a + sshi ) == 8 )
#endif
    printf("TEST06 --> OK \n");
 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + shi ) == 4 )
#else A64
  if ( sizeof ( a + shi ) == 8 )
#endif
    printf("TEST07 --> OK \n");
 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + usc ) == 4 )
#else A64
  if ( sizeof ( a + usc ) == 8 )
#endif
    printf("TEST08 --> OK \n");
 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + sc ) == 4 )
#else A64
  if ( sizeof ( a + sc ) == 8 )
#endif
    printf("TEST09 --> OK \n");
 
#if (A32 || I64 || LLP) 
  if ( sizeof ( a + c ) == 4 )
#else A64
  if ( sizeof ( a + c ) == 8 )
#endif
    printf("TEST10 --> OK \n");
  return 0;
}

 
 
 


 int m3egpt01()
{
  printf("********** M3EGPT01 TEST START **********\n");
  {
    char *cp,c = 1;

    cp = &c;
    if (*cp == 1)
        printf("***** M3EGPT01 - 01 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 01 ***** N G *****\n");
  }
  {
    int *ip,i = 2;

    ip = &i;
    if (*ip == 2)
        printf("***** M3EGPT01 - 02 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 02 ***** N G *****\n");
  }
  {
    long int *ilp,il = 3;

    ilp = &il;
    if (*ilp == 3)
        printf("***** M3EGPT01 - 03 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 03 ***** N G *****\n");
  }
  {
    short int *isp,is = 4;

    isp = &is;
    if (*isp == 4)
        printf("***** M3EGPT01 - 04 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 04 ***** N G *****\n");
  }
  {
    signed char *scp,sc = 5;

    scp = &sc;
    if (*scp == 5)
        printf("***** M3EGPT01 - 05 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 05 ***** N G *****\n");
  }
  {
    signed int *sip,si = 6;

    sip = &si;
    if (*sip == 6)
        printf("***** M3EGPT01 - 06 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 06 ***** N G *****\n");
  }
  {
    signed long int *silp,sil = 7;

    silp = &sil;
    if (*silp == 7)
        printf("***** M3EGPT01 - 07 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 07 ***** N G *****\n");
  }
  {
    signed short int *sisp,sis = 8;

    sisp = &sis;
    if (*sisp == 8)
        printf("***** M3EGPT01 - 08 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 08 ***** N G *****\n");
  }
  {
    unsigned char *ucp,uc = 9;

    ucp = &uc;
    if (*ucp == 9)
        printf("***** M3EGPT01 - 09 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 09 ***** N G *****\n");
  }
  {
    unsigned int *uip,ui = 10;

    uip = &ui;
    if (*uip == 10)
        printf("***** M3EGPT01 - 10 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 10 ***** N G *****\n");
  }
  {
    unsigned long int *uilp,uil = 11;

    uilp = &uil;
    if (*uilp == 11)
        printf("***** M3EGPT01 - 11 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 11 ***** N G *****\n");
  }
  {
    unsigned short int *uisp,uis = 12;

    uisp = &uis;
    if (*uisp == 12)
        printf("***** M3EGPT01 - 12 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 12 ***** N G *****\n");
  }
  {
    int (*vecp)[2]; static int vec[2] = { 13,14 };

    vecp = &vec;
    if ((*vecp)[0] == 13)
        printf("***** M3EGPT01 - 13 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 13 ***** N G *****\n");
  }
  {
    int  i = 2;
    int **ptrp,*ptr = &i;

    ptrp = &ptr;
    if (**ptrp == 2)
        printf("***** M3EGPT01 - 14 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 14 ***** N G *****\n");
  }
  {
    struct { int a; } *stp,st;

    st.a=5;
    stp = &st;
    if (stp->a == 5)
        printf("***** M3EGPT01 - 15 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 15 ***** N G *****\n");
  }
  {
    union { int a; } *unp,un ;

    un.a=16;
    unp = &un;
    if (unp->a == 16)
        printf("***** M3EGPT01 - 16 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 16 ***** N G *****\n");
  }
  {
    enum { emem1  } *enp,en = 0;

    enp = &en;
    if (*enp == emem1)
        printf("***** M3EGPT01 - 17 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 17 ***** N G *****\n");
  }
  {
    int (*fnp)(),fn();

    fnp = &fn;
    if ((*fnp)() == 18)
        printf("***** M3EGPT01 - 18 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 18 ***** N G *****\n");
  }
  {
    int *vecp; static int vec[2] = { 19,20 };

    vecp = vec;
    if (*vecp == 19)
        printf("***** M3EGPT01 - 19 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 19 ***** N G *****\n");
  }
  {
    int (*fnp)(),fnc();

    fnp = fnc;
    if ((*fnp)() == 20)
        printf("***** M3EGPT01 - 20 ***** O K *****\n");
      else
        printf("***** M3EGPT01 - 20 ***** N G *****\n");
  }
  printf("********** M3EGPT01 TEST  END  **********\n");
  return 0;
}

int fn()
{
  return 18;
}

int fnc()
{
  return 20;
}

 
 
 


 int   mpouti1,mpouti2;
 int  m3mpcm03()
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
    
   pi=&ai;
   fi=*pi;
   if(bi==20) {
    *pi=15;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("ERROR OF A-2 : EI = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("ERROR OF A-2 : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF A-2\n");
     }
   }
   ai=10;

    
   pi=&ai;
   fi=ai+bi;
   if(bi==20) {
     *pi=15;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("ERROR OF C-2 : EI = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("ERROR OF C-2 : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF C-2\n");
     }
   }
   ai=10;

    
   pi=&ai;
   fi=bi+(*pi);
   if(bi==20) {
     ai=15;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("ERROR OF B-2:EI = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("ERROR OF B-2:EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-2\n");
     }
   }
   ai=10;
   return 0;
 }

 
 
 


struct estr {
int x;
int y;
int a[11];
};
struct west {
int b[10];
int z;
float w;
};
struct estr *pint1;
struct estr *pint2;
struct west *pint3;
 int m3mprd02()
{
  printf("M3MPRD02 START\n");
  func1();                            
  printf("M3MPRD02 END   \n");
  return 0;
}
 int func1()
{
  static char stat1[21] ={0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0         };
  char *ap ;
  struct estr ea;
  struct west eb;
  int num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=5;
  pint1->a[num]=20;
  pint3->b[num]=20;
  num=1;
  pint2->a[num]=10;
  num=pint2->a[num];
  if (num==10) printf("M3MPRD02 OK\n");
  else
  printf("m3mprd02 ng\n");
  pint2->a[num]=10;
  num=pint1->a[num];
  pint3->b[3]=num;
  if (pint3->b[3]==10) printf("M3MPRD02 OK\n");
  else
  printf("M3MPRD02 NG\n");
  return 0;
}


 
 
 



 int scobe08()
{
   struct tag
   {
      signed char        b1 : 1;
      signed short int   b2 : 1;
      signed long  int   b3 : 1;
      unsigned char      b4 : 1;
      unsigned short int b5 : 1;
      unsigned long  int b6 : 1;
   } a;

   struct tag *x;

   signed long long int     c1;
   unsigned long long int   c2;

   printf (" ****** \n");

   a.b1 = 1;
   c1 = a.b1;
   if (c1==-1)
      printf ("BLOAD9(I8,I1) OK\n");
   else
      printf ("BLOAD9(I8,I1) NG\n");
   c2 = a.b1;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I1) OK\n");
   else
      printf ("BLOAD9(U8,I1) NG\n");

   a.b2 = 1;
   c1 = a.b2;
   if (c1==-1)
      printf ("BLOAD9(I8,I2) OK\n");
   else
      printf ("BLOAD9(I8,I2) NG\n");
   c2 = a.b2;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I2) OK\n");
   else
      printf ("BLOAD9(U8,I2) NG\n");

   a.b3 = 1;
   c1 = a.b3;
   if (c1==-1)
      printf ("BLOAD9(I8,I4) OK\n");
   else
      printf ("BLOAD9(I8,I4) NG\n");
   c2 = a.b3;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I4) OK\n");
   else
      printf ("BLOAD9(U8,I4) NG\n");

   a.b4 = 1;
   c1 = a.b4;
   if (c1==1)
      printf ("BLOAD10(I8,U1) OK\n");
   else
      printf ("BLOAD10(I8,U1) NG\n");
   c2 = a.b4;
   if (c2==1)
      printf ("BLOAD10(U8,U1) OK\n");
   else
      printf ("BLOAD10(U8,U1) NG\n");

   a.b5 = 1;
   c1 = a.b5;
   if (c1==1)
      printf ("BLOAD10(I8,U2) OK\n");
   else
      printf ("BLOAD10(I8,U2) NG\n");
   c2 = a.b5;
   if (c2==1)
      printf ("BLOAD10(U8,U2) OK\n");
   else
      printf ("BLOAD10(U8,U2) NG\n");

   a.b6 = 1;
   c1 = a.b6;
   if (c1==1)
      printf ("BLOAD10(I8,U4) OK\n");
   else
      printf ("BLOAD10(I8,U4) NG\n");
   c2 = a.b6;
   if (c2==1)
      printf ("BLOAD10(U8,U4) OK\n");
   else
      printf ("BLOAD10(U8,U4) NG\n");


   x = &a;

   printf (" ****** \n");

   x->b1 = 1;
   c1 = x->b1;
   if (c1==-1)
      printf ("BLOAD9(I8,I1) OK\n");
   else
      printf ("BLOAD9(I8,I1) NG\n");
   c2 = x->b1;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I1) OK\n");
   else
      printf ("BLOAD9(U8,I1) NG\n");

   x->b2 = 1;
   c1 = x->b2;
   if (c1==-1)
      printf ("BLOAD9(I8,I2) OK\n");
   else
      printf ("BLOAD9(I8,I2) NG\n");
   c2 = x->b2;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I2) OK\n");
   else
      printf ("BLOAD9(U8,I2) NG\n");

   x->b3 = 1;
   c1 = x->b3;
   if (c1==-1)
      printf ("BLOAD9(I8,I4) OK\n");
   else
      printf ("BLOAD9(I8,I4) NG\n");
   c2 = x->b3;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I4) OK\n");
   else
      printf ("BLOAD9(U8,I4) NG\n");

   x->b4 = 1;
   c1 = x->b4;
   if (c1==1)
      printf ("BLOAD10(I8,U1) OK\n");
   else
      printf ("BLOAD10(I8,U1) NG\n");
   c2 = x->b4;
   if (c2==1)
      printf ("BLOAD10(U8,U1) OK\n");
   else
      printf ("BLOAD10(U8,U1) NG\n");

   x->b5 = 1;
   c1 = x->b5;
   if (c1==1)
      printf ("BLOAD10(I8,U2) OK\n");
   else
      printf ("BLOAD10(I8,U2) NG\n");
   c2 = x->b5;
   if (c2==1)
      printf ("BLOAD10(U8,U2) OK\n");
   else
      printf ("BLOAD10(U8,U2) NG\n");

   x->b6 = 1;
   c1 = x->b6;
   if (c1==1)
      printf ("BLOAD10(I8,U4) OK\n");
   else
      printf ("BLOAD10(I8,U4) NG\n");
   c2 = x->b6;
   if (c2==1)
      printf ("BLOAD10(U8,U4) OK\n");
   else
      printf ("BLOAD10(U8,U4) NG\n");
   return 0;
}
 
 
 

 int scocv03()
{
  int f(char c)                                                 ;

  printf("*** SCOCV03  START ***\n")                  ;

  if (f('a'))
    printf("*** OK  1 ***\n")                     ;
  else
    printf("*** NG  1 ***\n")                     ;

  printf("*** SCOCV03  END ***\n")                    ;
  return 0;
}
int f( char c )
{
  return (c =='a') ? 1 : 0                                      ;
}
