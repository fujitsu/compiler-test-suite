

#include<stdio.h>
void m3egct08();
void m3edtr06();
void scodv01();
void m3edc105();
void scobe06();
void m3mpcm02();
void scocv03();
void m3edc096();
void m3edc095();
void m3edc094();
int main()
{
   m3edc094();  
   m3edc095();  
   m3edc096();  
   scocv03();   
   m3mpcm02();  
   scobe06();   
   m3edc105();  
   scodv01();   
   m3edtr06();  
   m3egct08();  


}


void scobe06()
{
   struct tag
   {
      signed char         b1 :  8;
      signed short int    b2 : 16;
      signed long int     b3 : 32;
      unsigned char       b4 :  8;
      unsigned short int  b5 : 16;
      unsigned long int   b6 : 32;
   } a;

   struct tag *x;

   signed char        c1;
   signed short int   c2;
   signed long int    c3;
   unsigned char      c4;
   unsigned short int c5;
   unsigned long  int c6;

   printf ("********\n");

   a.b1 = 0x01;
   c1 = a.b1;
   if (c1==1)
      printf ("BLOAD1(I1,I1) OK\n");
   else
      printf ("BLOAD1(I1,I1) NG\n");
   c4 = a.b1;
   if (c4==1)
      printf ("BLOAD1(U1,I1) OK\n");
   else
      printf ("BLOAD1(U1,I1) NG\n");

   a.b2 = 1;
   c1 = a.b2;
   if (c1==1)
      printf ("BLOAD2(I1,I2) OK\n");
   else
      printf ("BLOAD2(I1,I2) NG\n");
   c2 = a.b2;
   if (c2==1)
      printf ("BLOAD1(I2,I2) OK\n");
   else
      printf ("BLOAD1(I2,I2) NG\n");
   c4 = a.b2;
   if (c4==1)
      printf ("BLOAD2(U1,I2) OK\n");
   else
      printf ("BLOAD2(U1,I2) NG\n");
   c5 = a.b2;
   if (c5==1)
      printf ("BLOAD1(U2,I2) OK\n");
   else
      printf ("BLOAD1(U2,I2) NG\n");

   a.b3 = 1;
   c1 = a.b3;
   if (c1==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c2 = a.b3;
   if (c2==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c3 = a.b3;
   if (c3==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");
   c4 = a.b3;
   if (c4==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c5 = a.b3;
   if (c5==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c6 = a.b3;
   if (c6==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");

   a.b4 = 0x01;
   c1 = a.b4;
   if (c1==1)
      printf ("BLOAD1(I1,U1) OK\n");
   else
      printf ("BLOAD1(I1,U1) NG\n");
   c4 = a.b4;
   if (c4==1)
      printf ("BLOAD1(U1,U1) OK\n");
   else
      printf ("BLOAD1(U1,U1) NG\n");

   a.b5 = 1;
   c1 = a.b5;
   if (c1==1)
      printf ("BLOAD3(I1,U2) OK\n");
   else
      printf ("BLOAD3(I1,U2) NG\n");
   c2 = a.b5;
   if (c2==1)
      printf ("BLOAD1(I2,U2) OK\n");
   else
      printf ("BLOAD1(I2,U2) NG\n");
   c4 = a.b5;
   if (c4==1)
      printf ("BLOAD3(U1,U2) OK\n");
   else
      printf ("BLOAD3(U1,U2) NG\n");
   c5 = a.b5;
   if (c5==1)
      printf ("BLOAD1(U2,U2) OK\n");
   else
      printf ("BLOAD1(U2,U2) NG\n");

   a.b6 = 1;
   c1 = a.b6;
   if (c1==1)
      printf ("BLOAD4(I1,U4) OK\n");
   else
      printf ("BLOAD4(I1,U4) NG\n");
   c2 = a.b6;
   if (c2==1)
      printf ("BLOAD4(I2,U4) OK\n");
   else
      printf ("BLOAD4(I2,U4) NG\n");
   c3 = a.b6;
   if (c3==1)
      printf ("BLOAD1(I4,U4) OK\n");
   else
      printf ("BLOAD1(I4,U4) NG\n");
   c4 = a.b6;
   if (c4==1)
      printf ("BLOAD4(U1,U4) OK\n");
   else
      printf ("BLOAD4(U1,U4) NG\n");
   c5 = a.b6;
   if (c5==1)
      printf ("BLOAD4(U2,U4) OK\n");
   else
      printf ("BLOAD4(U2,U4) NG\n");
   c6 = a.b6;
   if (c6==1)
      printf ("BLOAD1(U4,U4) OK\n");
   else
      printf ("BLOAD1(U4,U4) NG\n");


   printf ("********\n");

   x = &a;

   x->b1 = 0x01;
   c1 = x->b1;
   if (c1==1)
      printf ("BLOAD1(I1,I1) OK\n");
   else
      printf ("BLOAD1(I1,I1) NG\n");
   c4 = x->b1;
   if (c4==1)
      printf ("BLOAD1(U1,I1) OK\n");
   else
      printf ("BLOAD1(U1,I1) NG\n");

   x->b2 = 1;
   c1 = x->b2;
   if (c1==1)
      printf ("BLOAD2(I1,I2) OK\n");
   else
      printf ("BLOAD2(I1,I2) NG\n");
   c2 = x->b2;
   if (c2==1)
      printf ("BLOAD1(I2,I2) OK\n");
   else
      printf ("BLOAD1(I2,I2) NG\n");
   c4 = x->b2;
   if (c4==1)
      printf ("BLOAD2(U1,I2) OK\n");
   else
      printf ("BLOAD2(U1,I2) NG\n");
   c5 = x->b2;
   if (c5==1)
      printf ("BLOAD1(U2,I2) OK\n");
   else
      printf ("BLOAD1(U2,I2) NG\n");

   x->b3 = 1;
   c1 = x->b3;
   if (c1==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c2 = x->b3;
   if (c2==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c3 = x->b3;
   if (c3==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");
   c4 = x->b3;
   if (c4==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c5 = x->b3;
   if (c5==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c6 = x->b3;
   if (c6==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");

   x->b4 = 0x01;
   c1 = x->b4;
   if (c1==1)
      printf ("BLOAD1(I1,U1) OK\n");
   else
      printf ("BLOAD1(I1,U1) NG\n");
   c4 = x->b4;
   if (c4==1)
      printf ("BLOAD1(U1,U1) OK\n");
   else
      printf ("BLOAD1(U1,U1) NG\n");

   x->b5 = 1;
   c1 = x->b5;
   if (c1==1)
      printf ("BLOAD3(I1,U2) OK\n");
   else
      printf ("BLOAD3(I1,U2) NG\n");
   c2 = x->b5;
   if (c2==1)
      printf ("BLOAD1(I2,U2) OK\n");
   else
      printf ("BLOAD1(I2,U2) NG\n");
   c4 = x->b5;
   if (c4==1)
      printf ("BLOAD3(U1,U2) OK\n");
   else
      printf ("BLOAD3(U1,U2) NG\n");
   c5 = x->b5;
   if (c5==1)
      printf ("BLOAD1(U2,U2) OK\n");
   else
      printf ("BLOAD1(U2,U2) NG\n");

   x->b6 = 1;
   c1 = x->b6;
   if (c1==1)
      printf ("BLOAD4(I1,U4) OK\n");
   else
      printf ("BLOAD4(I1,U4) NG\n");
   c2 = x->b6;
   if (c2==1)
      printf ("BLOAD4(I2,U4) OK\n");
   else
      printf ("BLOAD4(I2,U4) NG\n");
   c3 = x->b6;
   if (c3==1)
      printf ("BLOAD1(I4,U4) OK\n");
   else
      printf ("BLOAD1(I4,U4) NG\n");
   c4 = x->b6;
   if (c4==1)
      printf ("BLOAD4(U1,U4) OK\n");
   else
      printf ("BLOAD4(U1,U4) NG\n");
   c5 = x->b6;
   if (c5==1)
      printf ("BLOAD4(U2,U4) OK\n");
   else
      printf ("BLOAD4(U2,U4) NG\n");
   c6 = x->b6;
   if (c6==1)
      printf ("BLOAD1(U4,U4) OK\n");
   else
      printf ("BLOAD1(U4,U4) NG\n");
}

void scocv03()
{
  int f(char c)                                                 ;

  printf("*** SCOCV03  START ***\n")                  ;

  if (f('a'))
    printf("*** OK  1 ***\n")                     ;
  else
    printf("*** NG  1 ***\n")                     ;

  printf("*** SCOCV03  END ***\n")                    ;

}
int f( char c )
{
  return (c =='a') ? 1 : 0                                      ;
}

void scodv01()
{
  volatile signed   char  be1i1_1,be1i1_2,be1i1_3                ;
  volatile unsigned char  be1ui1_1,be1ui1_2,be1ui1_3             ;
  volatile unsigned short int be1ui2_1,be1ui2_2,be1ui2_3         ;

  printf("*** SCODV01  STRT ***\n")                    ;


  be1i1_2 = 7                                                    ;
  be1i1_3 = 5                                                    ;

  be1i1_1 = be1i1_2 * be1i1_3                   ;
  if (be1i1_1 == 35)
    printf("*** OK  1 ***\n")                      ;
  else
    printf("*** NG  1 ***\n")                      ;

  be1i1_1 = be1i1_2 - be1i1_3                    ;
  if (be1i1_1 == 2)
    printf("*** OK  2 ***\n")                      ;
  else
    printf("*** NG  2 ***\n")                      ;

  be1i1_1 = be1i1_2 / be1i1_3                    ;
  if (be1i1_1 == 1)
    printf("*** OK  3 ***\n")                      ;
  else
    printf("*** NG  3 ***\n")                      ;

  be1i1_1 = be1i1_2 % be1i1_3                    ;
  if (be1i1_1 == 2)
    printf("*** OK  4 ***\n")                      ;
  else
    printf("*** NG  4 ***\n")                      ;


  be1ui1_2 = 7                                                ;
  be1ui1_3 = 5                                                   ;

  be1ui1_1 = be1ui1_2 * be1ui1_3                 ;
  if (be1ui1_1 == 35)
    printf("*** OK  5 ***\n")                      ;
  else
    printf("*** NG  5 ***\n")                      ;

  be1ui1_1 = be1ui1_2 - be1ui1_3                ;
  if (be1ui1_1 == 2)
    printf("*** OK  6 ***\n")                      ;
  else
    printf("*** NG  6 ***\n")                      ;

  be1ui1_1 = be1ui1_2 / be1ui1_3                ;
  if (be1ui1_1 == 1)
    printf("*** OK  7 ***\n")                      ;
  else
    printf("*** NG  7 ***\n")                      ;

  be1ui1_1 = be1ui1_2 % be1ui1_3                 ;
  if (be1ui1_1 == 2)
    printf("*** OK  8 ***\n")                      ;
  else
    printf("*** NG  8 ***\n")                      ;


  be1ui2_2 = 7                                                   ;
  be1ui2_3 = 5                                                   ;

  be1ui2_1 = be1ui2_2 * be1ui2_3                 ;
  if (be1ui2_1 == 35)
    printf("*** OK  9 ***\n")                      ;
  else
    printf("*** NG  9 ***\n")                      ;

  be1ui2_1 = be1ui2_2 - be1ui2_3                 ;
  if (be1ui2_1 == 2)
    printf("*** OK 10 ***\n")                      ;
  else
    printf("*** NG 10 ***\n")                      ;

  be1ui2_1 = be1ui2_2 / be1ui2_3                 ;
  if (be1ui2_1 == 1)
    printf("*** OK 11 ***\n")                      ;
  else
    printf("*** NG 11 ***\n")                      ;

  be1ui2_1 = be1ui2_2 % be1ui2_3                ;
  if (be1ui2_1 == 2)
    printf("*** OK 12 ***\n")                      ;
  else
    printf("*** NG 12 ***\n")                      ;


  printf("*** SCODV01  END ***\n")                     ;

}



 volatile unsigned fe1a4;
 const unsigned fe1a5;

void m3edc094()
{

   volatile unsigned *addrv1,*addrv2;
   const unsigned *addrc1,*addrc2;

   printf("*** M3EDC094 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile unsigned a1=0, b1=0;
     register volatile unsigned a2=0;
     static const unsigned a3[2]={20,3};
     extern volatile unsigned fe1a4;
     extern const unsigned fe1a5;
     typedef const unsigned type1;
     type1 a6=0;


     addrv1 = &a1;  addrv2 = &b1;
     if (a1!=*addrv1 || b1!=*addrv2)
         printf(" *** M3EDC094 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC094 TEST-01 OK ***\n");

     if (a2)
         printf(" *** M3EDC094 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC094 TEST-02 OK ***\n");

     if (a3[0]!=20 || a3[1]!=3)
         printf(" *** M3EDC094 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC094 TEST-03 OK ***\n");

     if (fe1a4!=0)
         printf(" *** M3EDC094 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC094 TEST-04 OK ***\n");

     if (fe1a5!=0)
         printf(" *** M3EDC094 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC094 TEST-05 OK ***\n");

     addrc1 = &a6;
     if (a6!=*addrc1)
         printf(" *** M3EDC094 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC094 TEST-06 OK ***\n");
   }

   printf("*** M3EDC094 TEST ENDED ***\n");
}




 volatile  int fe2a4;
 const  int fe2a5;
 typedef volatile  int fe2tp1;

void m3edc095()
{

   const  int *addrc1=NULL, *addrc2=NULL;
   volatile  int *addrv1=NULL, *addrv2=NULL;

   auto const  int a1=0, b1=0;
   register volatile  int a2=0xff;
   static const  int a3[2]={2,3};
   extern volatile  int fe2a4;
   extern const  int fe2a5;
   fe2tp1 a6=0;


   printf("*** M3EDC095 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrc1 = &a1;  addrc2 = &b1;
   if (a1!=*addrc1 || b1!=*addrc2)
       printf(" *** M3EDC095 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC095 TEST-01 OK ***\n");

   if (a2!=255)
       printf(" *** M3EDC095 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC095 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC095 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC095 TEST-03 OK ***\n");

   if (fe2a4!=0)
       printf(" *** M3EDC095 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC095 TEST-04 OK ***\n");

   if (fe2a5!=0)
       printf(" *** M3EDC095 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC095 TEST-05 OK ***\n");

   addrv1 = &a6;
   if (a6!=*addrv1)
       printf(" *** M3EDC095 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC095 TEST-06 OK ***\n");

   printf("*** M3EDC095 TEST ENDED ***\n");
}


 volatile int  fe3a4=1;
 const int  fe3a5;

void m3edc096()
{

   const int  *addrc1=NULL, *addrc2=NULL;
   volatile int  *addrv1=NULL, *addrv2=NULL;

   {
     auto const int  a1=0, b1=0;
     register volatile int  a2=-1;
     static const int  a3[2]={2,3};
     extern volatile int  fe3a4;
     extern const int  fe3a5;
     typedef volatile int  type1;
     type1 a6=0;


     printf("*** M3EDC096 ** MK3 TEST FOR DCL ** STARTED ***\n");

     addrc1 = &a1;  addrc2 = &b1;
     if (a1!=*addrc1 || b1!=*addrc2)
         printf(" *** M3EDC096 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC096 TEST-01 OK ***\n");

     if (a2!=-1)
         printf(" *** M3EDC096 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC096 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC096 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC096 TEST-03 OK ***\n");

     if (fe3a4!=1)
         printf(" *** M3EDC096 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC096 TEST-04 OK ***\n");

     if (fe3a5!=0)
         printf(" *** M3EDC096 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC096 TEST-05 OK ***\n");

     addrv1 = &a6;
     if (a6!=*addrv1)
         printf(" *** M3EDC096 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC096 TEST-06 OK ***\n");
   }

   printf("*** M3EDC096 TEST ENDED ***\n");
}




 extern long int signed fe4a4[2]={7,8};
 int signed long fe4a5;
 typedef int long unsigned fe4tp1;

void m3edc105()
{
   signed long int *addr11=NULL;
   unsigned long int *addr21=NULL;

   auto signed long int a1=0;
   register signed int long a2=0,b2=-1;
   static long unsigned int a3[2];
   extern long int signed fe4a4[2];
   extern int signed long fe4a5;
   fe4tp1 a6=0;

   printf("*** M3EDC105 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr11 = &a1;
   if (a1!=*addr11)
       printf(" *** M3EDC105 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC105 TEST-01 OK ***\n");

   if (a2 || b2!=-1)
       printf(" *** M3EDC105 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC105 TEST-02 OK ***\n");

   addr21 = a3;
   if (a3[0]!=*addr21)
       printf(" *** M3EDC105 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC105 TEST-03 OK ***\n");

   if (fe4a4[0]!=7 || fe4a4[1]!=8)
       printf(" *** M3EDC105 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC105 TEST-04 OK ***\n");

   if (fe4a5!=0)
       printf(" *** M3EDC105 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC105 TEST-05 OK ***\n");

   addr21 = &a6;
   if (a6!=*addr21)
       printf(" *** M3EDC105 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC105 TEST-06 OK ***\n");

   printf("*** M3EDC105 TEST ENDED ***\n");
}




void m3edtr06()
{
  int a = 10,*aa = &a,**aaa = &aa;

  int *volatile const a01 = (int *volatile const)aa;
  int *volatile *const a02 = (int *volatile *const)aaa;
  int *const *volatile a03 = (int *const *volatile)aaa;
  int *volatile a04 = (int *volatile)aa;
  int *const a05 = (int *const)aa;

  if (*a01 == 10)
      printf("***** M3EDTR06 - 01 ***** O K *****\n");
    else
      printf("***** M3EDTR06 - 01 ***** N G *****\n");

  if (**a02 == 10)
      printf("***** M3EDTR06 - 02 ***** O K *****\n");
    else
      printf("***** M3EDTR06 - 02 ***** N G *****\n");

  if (**a03 == 10)
      printf("***** M3EDTR06 - 03 ***** O K *****\n");
    else
      printf("***** M3EDTR06 - 03 ***** N G *****\n");

  if (*a04 == 10)
      printf("***** M3EDTR06 - 04 ***** O K *****\n");
    else
      printf("***** M3EDTR06 - 04 ***** N G *****\n");

  if (*a05 == 10)
      printf("***** M3EDTR06 - 05 ***** O K *****\n");
    else
      printf("***** M3EDTR06 - 05 ***** N G *****\n");
}



void m3egct08()
{
  signed long int        a = 1;
  signed long int        sli  = 1;
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

  printf("******************************\n");

#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + sli ) == 8 )
    printf("TEST01 --> OK \n");
  if ( sizeof ( a + li ) == 8 )
    printf("TEST02 --> OK \n");
  if ( sizeof ( a + usi ) == 8 )
    printf("TEST03 --> OK \n");
  if ( sizeof ( a + si ) == 8 )
    printf("TEST04 --> OK \n");
  if ( sizeof ( a + i ) == 8 )
    printf("TEST05 --> OK \n");
  if ( sizeof ( a + usshi ) == 8 )
    printf("TEST06 --> OK \n");
  if ( sizeof ( a + sshi ) == 8 )
    printf("TEST07 --> OK \n");
  if ( sizeof ( a + shi ) == 8 )
    printf("TEST08 --> OK \n");
  if ( sizeof ( a + usc ) == 8 )
    printf("TEST09 --> OK \n");
  if ( sizeof ( a + sc ) == 8 )
    printf("TEST10 --> OK \n");
  if ( sizeof ( a + c ) == 8 )
    printf("TEST11 --> OK \n");
#else
  if ( sizeof ( a + sli ) == 4 )
    printf("TEST01 --> OK \n");
  if ( sizeof ( a + li ) == 4 )
    printf("TEST02 --> OK \n");
  if ( sizeof ( a + usi ) == 4 )
    printf("TEST03 --> OK \n");
  if ( sizeof ( a + si ) == 4 )
    printf("TEST04 --> OK \n");
  if ( sizeof ( a + i ) == 4 )
    printf("TEST05 --> OK \n");
  if ( sizeof ( a + usshi ) == 4 )
    printf("TEST06 --> OK \n");
  if ( sizeof ( a + sshi ) == 4 )
    printf("TEST07 --> OK \n");
  if ( sizeof ( a + shi ) == 4 )
    printf("TEST08 --> OK \n");
  if ( sizeof ( a + usc ) == 4 )
    printf("TEST09 --> OK \n");
  if ( sizeof ( a + sc ) == 4 )
    printf("TEST10 --> OK \n");
  if ( sizeof ( a + c ) == 4 )
    printf("TEST11 --> OK \n");
#endif
}


#if INT64
#define int __int32
#endif

 int   mouti1,mouti2;
 float moutf1,moutf2;
void m3mpcm02()
 {
   int *pi,*qi;
   int ai,bi,ci,di,ei,fi,gi;
   int i;
   float *pf,*qf;
   float af,bf,cf,df,ef,ff;

   struct array {
     int aa[10];
     int bb[10];
   };
   struct array  xs;
   struct array *ps;

   union alis {
     int xi;
     float xf;
     int cc[10];
     struct array as;
   };
   union alis  xu,yu;
   union alis *pu;

   ai=10;
   bi=20;
   ci=30;
   di=40;
   ei=50;
   fi=60;

   pu=&xu;
   for(i=0;i<10;i++) {
     pu->as.aa[i]=(i+1)*10;
     pu->as.bb[i]=(i+1)*10;
   }

   fi=pu->as.aa[0];
   xu.xi=200;
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("ERROR OF B-1-1 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("ERROR OF B-1-1 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-1\n");
     }
   }
   ai=10;
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->xi=200;
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("ERROR OF B-1-2 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("ERROR OF B-1-2 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-2\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->xf=200.0;
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=pu->xf+bi;
     printf("ERROR OF B-1-3 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("ERROR OF B-1-3 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-3\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xf=200.0;
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=xu.xf+bi;
     printf("ERROR OF B-1-4 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("ERROR OF B-1-4 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-4\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.cc[0]=200;
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("ERROR OF B-1-5 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("ERROR OF B-1-5 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-5\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->cc[0]=200;
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("ERROR OF B-1-6 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("ERROR OF B-1-6 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-6\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xi=200;
   ei=pu->as.aa[0];
   if(ei!=200) {
     printf("ERROR                 \n");
   }
 }
#if INT64
#undef int
#endif
