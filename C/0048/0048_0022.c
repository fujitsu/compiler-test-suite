
#include<stdio.h>
#include<string.h>
int m3edc310 (void);
int scood01 (void);
int m3elge01 (void);
int scoprl1 (void);
int m3edc319 (void);
int m3mpsi09 (void);
int m3edc304 (void);
int scops02 (void);
int m3edc175 (void);
int m3mptr02 (void);
int scohd03 (void);
int m3edc169 (void);
int 
main (void)
{

   printf("***  **** START ***\n");

   m3edc169();  
   scohd03();   
   m3mptr02();  
   m3edc175();  
   scops02();   
   m3edc304();  
   m3mpsi09();  
   m3edc319();  
   scoprl1();   
   m3elge01();  
   scood01();   
   m3edc310();  

   printf("***  ****  END  ***\n");

}



struct t255 {
              char c[255]                                       ;
            }                                                    ;
struct t256 {
              char c[256]                                       ;
            }                                                    ;

struct t255 f255( int i,char c )                                  ;
struct t256 f256( int i,char c )                                  ;

int 
scops02 (void)
{
  struct t255 s255                                                ;
  struct t256 s256                                                ;

  printf("********** SCOPS02 TEST STARTED **********\n")      ;


  s255 = f255(1,'p')                                              ;
  if (s255.c[1] == 1)
    printf("********** SCOPS02 - 01 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 01 NG **********\n")         ;

  s255 = f255(2,'m')                                              ;
  if (s255.c[2] == 2)
    printf("********** SCOPS02 - 02 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 02 NG **********\n")         ;

  s255 = f255(3,'s')                                              ;
  if (s255.c[3] == 3)
    printf("********** SCOPS02 - 03 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 03 NG **********\n")         ;

  s255 = f255(4,'a')                                              ;
  if (s255.c[4] == 4)
    printf("********** SCOPS02 - 04 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 04 NG **********\n")         ;



  s256 = f256(5,'p')                                              ;
  if (s256.c[5] == 5)
    printf("********** SCOPS02 - 05 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 05 NG **********\n")         ;

  s256 = f256(6,'m')                                              ;
  if (s256.c[6] == 6)
    printf("********** SCOPS02 - 06 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 06 NG **********\n")         ;

  s256 = f256(7,'s')                                              ;
  if (s256.c[7] == 7)
    printf("********** SCOPS02 - 07 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 07 NG **********\n")         ;

  s256 = f256(8,'a')                                              ;
  if (s256.c[8] == 8)
    printf("********** SCOPS02 - 08 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 08 NG **********\n")         ;



  printf("********** SCOPS02 TEST ENDED **********\n")         ;

}
struct t255 f255(int i,char c)
{
  struct t255 s,*p,m[10]                                        ;
  struct t255_m{
                 struct t255 t255_m[10]                         ;
               } sm,*psm                                         ;
  int         j                                                   ;

  for (j = 0 ; j < 255 ; s.c[j] = m[7].c[j] =
                               sm.t255_m[7].c[j] = i,j++)  ;
  p   = &s                                                        ;
  psm = &sm                                                       ;
  switch (c){
    case 'p':
      return *p                                                   ;
    case 'm':
      return m[7]                                               ;
    case 's':
      return psm->t255_m[7]                                     ;
    default:
      return s                                                    ;
  }
}

struct t256 f256(int i,char c)
{
  struct t256 s,*p,m[10]                                        ;
  struct t256_m{
                 struct t256 t256_m[10]                         ;
               } sm,*psm                                         ;
  int         j                                                   ;

  for (j = 0 ; j < 256 ; s.c[j] = m[7].c[j] =
                              sm.t256_m[7].c[j] = i,j++)  ;
  p   = &s                                                        ;
  psm = &sm                                                       ;
  switch (c){
    case 'p':
      return *p                                                   ;
    case 'm':
      return m[7]                                               ;
    case 's':
      return psm->t256_m[7]                                     ;
    default:
      return s                                                    ;
  }
}





 extern struct f1stag1 {
       short  s;
       long   l;
 } f1st1;
 union f1utag1 {
       int    i;
       long   l;
 } f1un1,f1un12;
 typedef enum f1etag1 {
       f1ena, f1enb, f1enc
 } f1tpen;

int 
m3edc169 (void)
{
   auto enum f1etag1 f1ena1;
   auto struct f1stag2 {
         char  c;
         int   i;
   } f1st2;
   register enum entag2 {
         f1enx=-1, f1eny, f1enz=100
   } f1en1 = f1enz;
   static union f1utag2 {
         signed  s;
         unsigned u;
   } f1un2[2] = { { -1 }, { 0 } };

   extern struct f1stag1 f1st1;
   extern union f1utag1 f1un1,f1un12;
   f1tpen f1en2,*addren2;

   printf("*** M3EDC169 ** MK3 TEST FOR DCL ** STARTED ***\n");

   if (f1st1.s!=0 || f1st1.l!=0)
       printf(" *** M3EDC169 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC169 TEST-01 OK ***\n");

   if (f1un1.i!=0 || f1un1.l!=0 || f1un12.i!=0 || f1un12.l!=0)
       printf(" *** M3EDC169 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC169 TEST-02 OK ***\n");

   f1en2 = f1ena;
   if (f1en2!=0 || f1ena!=0 || f1enb!=1 || f1enc!=2)
       printf(" *** M3EDC169 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC169 TEST-03 OK ***\n");

   f1ena1 = f1enc;
   if (f1ena1!=2)
       printf(" *** M3EDC169 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC169 TEST-04 OK ***\n");

   f1st2.c=0x7f; f1st2.i=0x7fffffff;
   if (f1st2.c!=127 || f1st2.i!=2147483647)
       printf(" *** M3EDC169 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC169 TEST-05 OK ***\n");

   if (f1en1!=100 || f1enx!=-1 || f1eny!=0 || f1enz!=100)
       printf(" *** M3EDC169 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC169 TEST-06 OK ***\n");

#if INT64
   if (f1un2[0].s!=-1 || f1un2[0].u!=18446744073709551615 ||
       f1un2[1].s!=0 || f1un2[1].u!=0)
#else
   if (f1un2[0].s!=-1 || f1un2[0].u!=4294967295 ||
       f1un2[1].s!=0 || f1un2[1].u!=0)
#endif
       printf(" *** M3EDC169 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC169 TEST-07 OK ***\n");

   printf("*** M3EDC169 TEST ENDED ***\n");
}
struct f1stag1 f1st1={0,0};



 struct f2stag1 {
       short  s;
       long   l;
 } f2st1;
 union untag1 {
       int    i;
       long   l;
 } f2un1,f2un12;
 enum f2etag1 {
       f2ena, f2enb, f2enc
 } f2en1;

int 
m3edc175 (void)
{
   struct f2stag1 stx={0, 0},*stxp=NULL;
   static struct f2stag2 {
         char  c;
         int   i;
   } f2st2 = { 0x7f, 0x7fffffff };
   enum entag2 {
         f2enx=-1, f2eny, f2enz=100
   } f2en1 = f2enz;
   static union untag2 {
         signed  s;
         unsigned u;
   } f2un2[2] = { { -1 }, { 0 } };


   printf("*** M3EDC175 ** MK3 TEST FOR DCL ** STARTED ***\n");

   if (f2st1.s!=0 || f2st1.l!=0)
       printf(" *** M3EDC175 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC175 TEST-01 OK ***\n");

   if (f2un1.i!=0 || f2un1.l!=0 || f2un12.i!=0 || f2un12.l!=0)
       printf(" *** M3EDC175 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC175 TEST-02 OK ***\n");

   if (f2en1!=100 || f2ena!=0 || f2enb!=1 || f2enc!=2)
       printf(" *** M3EDC175 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC175 TEST-03 OK ***\n");

   stxp = &stx;
   if (stx.s!=stxp->s || stx.l!=stxp->l)
       printf(" *** M3EDC175 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC175 TEST-04 OK ***\n");

   if (f2st2.c!=127 || f2st2.i!=2147483647)
       printf(" *** M3EDC175 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC175 TEST-05 OK ***\n");

   if (f2en1!=100 || f2enx!=-1 || f2eny!=0 || f2enz!=100)
       printf(" *** M3EDC175 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC175 TEST-06 OK ***\n");

#if INT64
   if (f2un2[0].s!=-1 || f2un2[0].u!=18446744073709551615 ||
       f2un2[1].s!=0 || f2un2[1].u!=0)
#else
   if (f2un2[0].s!=-1 || f2un2[0].u!=4294967295 ||
       f2un2[1].s!=0 || f2un2[1].u!=0)
#endif
       printf(" *** M3EDC175 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC175 TEST-07 OK ***\n");

   printf("*** M3EDC175 TEST ENDED ***\n");
}



 typedef int inttype;


int 
m3edc186 (void)
{
   const int  *addrc1,*addrc2;
   volatile int  *addrv1,*addrv2;

   printf("*** M3EDC186 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     volatile inttype  a1;
     const inttype  a2,b2;
     volatile inttype  a3=0;
     const inttype  a4[2]={-1,0x7fffffff};

     addrv1 = &a1;
     if (a1!=*addrv1)
         printf(" *** M3EDC186 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC186 TEST-01 OK ***\n");

     addrc1 = &a2;  addrc2 = &b2;
     if (a2!=*addrc1 || b2!=*addrc2)
         printf(" *** M3EDC186 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC186 TEST-02 OK ***\n");

     if (a3!=0)
         printf(" *** M3EDC186 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC186 TEST-03 OK ***\n");

     if (a4[0]!=-1 || a4[1]!=2147483647)
         printf(" *** M3EDC186 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC186 TEST-04 OK ***\n");
   }

   printf("*** M3EDC186 TEST ENDED ***\n");
}



void f3f3(register unsigned long int,int);
void f3f2(register unsigned int,int);
void f3f1(register int,int);
void f3f0(register int ,int);

int 
m3edc304 (void)
{
  f3f3(1ul,2);
  f3f2(1u,2);
  f3f1(1,2);
  f3f0(1,2);
}

void f3f3(register unsigned long int a,int b)
{
  if (a == 1ul)
      printf("***** M3EDC304 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC304 - 01 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC304 - 02 ***** O K *****\n");
    else
      printf("***** M2EDC304 - 02 ***** N G *****\n");
}

void f3f2(register unsigned int a,int b)
{
  if (a == 1u)
      printf("***** M3EDC304 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC304 - 03 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC304 - 04 ***** O K *****\n");
    else
      printf("***** M2EDC304 - 04 ***** N G *****\n");
}

void f3f1(register int a,int b)
{
  if (a == 1)
      printf("***** M3EDC304 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC304 - 05 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC304 - 06 ***** O K *****\n");
    else
      printf("***** M2EDC304 - 06 ***** N G *****\n");
}

void f3f0(register  int a,int b)
{
  if (a == 1)
      printf("***** M3EDC304 - 07 ***** O K *****\n");
    else
      printf("***** M3EDC304 - 07 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC304 - 08 ***** O K *****\n");
    else
      printf("***** M2EDC304 - 08 ***** N G *****\n");
}



union f4tag
{
  signed long int a;
  unsigned long int b;
} ;

typedef int type;

int 
m3edc310 (void)
{
  volatile       unsigned long int a01;
  volatile       unsigned int a02;
  volatile       int a03;
  volatile        int a04;
  volatile unsigned long int a05;
  volatile unsigned int a06;
  volatile int a07;
  volatile  int a08;
  unsigned long int a09;
  unsigned int a10;
  volatile       union f4tag a11={1};
  volatile union f4tag a12;
  union f4tag a13;
  volatile       type a14;
  volatile type a15;
  type a16;

  char b = 100;
  unsigned int c;


  a01 = (volatile const unsigned long int) b;
  if (a01 == 100ul)
      printf("***** M3EDC310 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 01 ***** N G *****\n");

  a02 = (volatile       unsigned int) b;
  if (a02 == 100u)
      printf("***** M3EDC310 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 02 ***** N G *****\n");

  a03 = (volatile       int) b;
  if (a03 == 100)
      printf("***** M3EDC310 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 03 ***** N G *****\n");

  a04 = (volatile       int ) b;
  if (a04 == 100)
      printf("***** M3EDC310 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 04 ***** N G *****\n");

  a05 = (volatile unsigned long int) b;
  if (a05 == 100ul)
      printf("***** M3EDC310 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 05 ***** N G *****\n");

  a06 = (volatile unsigned int) b;
  if (a06 == 100u)
      printf("***** M3EDC310 - 06 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 06 ***** N G *****\n");

  a07 = (volatile int) b;
  if (a07 == 100)
      printf("***** M3EDC310 - 07 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 07 ***** N G *****\n");

  a08 = (volatile int ) b;
  if (a08 == 100)
      printf("***** M3EDC310 - 08 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 08 ***** N G *****\n");

  a09 = (unsigned long int) b;
  if (a09 == 100ul)
      printf("***** M3EDC310 - 09 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 09 ***** N G *****\n");

  a10 = (unsigned int) b;
  if (a10 == 100)
      printf("***** M3EDC310 - 10 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 10 ***** N G *****\n");

  a11.a = (signed long int )b;
  if (a11.b == 100u)
      printf("***** M3EDC310 - 11 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 11 ***** N G *****\n");

  a12.a = (signed long int )b;
  if (a12.b == 100u)
      printf("***** M3EDC310 - 12 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 12 ***** N G *****\n");

  a13.a = (signed long int )b;
  if (a13.b == 100u)
      printf("***** M3EDC310 - 13 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 13 ***** N G *****\n");

  a14 = (volatile       type) b;
  if (a14 == 100)
      printf("***** M3EDC310 - 14 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 14 ***** N G *****\n");

  a15 = (volatile type) b;
  if (a15 == 100)
      printf("***** M3EDC310 - 15 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 15 ***** N G *****\n");

  a16 = (type) b;
  if (a16 == 100)
      printf("***** M3EDC310 - 16 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 16 ***** N G *****\n");

  c = sizeof(type);
  if (c == sizeof(int))
      printf("***** M3EDC310 - 17 ***** O K *****\n");
    else
      printf("***** M3EDC310 - 17 ***** N G *****\n");
}



void f(int);

int 
m3edc319 (void)
{
  f(1);
}

void 
f (int a)
{
  if (a == 1)
      printf("***** M3EDC319 ***** O K *****\n");
    else
      printf("***** M3EDC319 ***** N G *****\n");
}



int 
m3elge01 (void)
{
  int                    a;
  char                   c;
  signed char            sc;
  unsigned char          usc;
  short int              shi;
  signed short int       sshi;
  unsigned short int     usshi;
  int                    i;
  signed int             si;
  unsigned int           usi;
  long int               li;
  signed long int        sli;
  unsigned long int      usli;

    printf("*************\n");





  a = sizeof sc;
  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  a = sizeof sshi;
  if ( a==2 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  a = sizeof si;
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  a = sizeof sli;
#if INT64 || LONG64 || __x86_64__  || __aarch64__
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  a = sizeof c;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  a = sizeof shi;
  if ( a==2 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  a = sizeof i;
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  a = sizeof li;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  a = sizeof usc;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  a = sizeof usshi;
  if ( a==2 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  a = sizeof usi;
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  a = sizeof usli;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

}



int 
m3mpsi09 (void)
{
 int a;
 char c;
 signed char sc;
 unsigned char usc;
 short int shi;
 signed short int sshi;
 unsigned short int usshi;
 int i;
 signed int si;
 unsigned int usi;
 long int li;
 signed long int sli;
 unsigned long int usli;

   printf("**************\n");


 a = sizeof sc;
 if ( a==1 )
 printf("TEST01 --> OK \n");
 else
 printf("TEST01 --> NG \n");

 a = sizeof sshi;
 if ( a==2 )
 printf("TEST02 --> OK \n");
 else
 printf("TEST02 --> NG \n");

 a = sizeof si;
#if INT64 
 if ( a==8 )
#else
 if ( a==4 )
#endif
 printf("TEST03 --> OK \n");
 else
 printf("TEST03 --> NG \n");

 a = sizeof sli;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
 if ( a==8 )
#else
 if ( a==4 )
#endif
 printf("TEST04 --> OK \n");
 else
 printf("TEST04 --> NG \n");

 a = sizeof c;
 if ( a==1 )
 printf("TEST05 --> OK \n");
 else
 printf("TEST05 --> NG \n");

 a = sizeof shi;
 if ( a==2 )
 printf("TEST06 --> OK \n");
 else
 printf("TEST06 --> NG \n");

 a = sizeof i;
#if INT64
 if ( a==8 )
#else
 if ( a==4 )
#endif
 printf("TEST07 --> OK \n");
 else
 printf("TEST07 --> NG \n");

 a = sizeof li;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
 if ( a==8 )
#else
 if ( a==4 )
#endif
 printf("TEST08 --> OK \n");
 else
 printf("TEST08 --> NG \n");

 a = sizeof usc;
 if ( a==1 )
 printf("TEST09 --> OK \n");
 else
 printf("TEST09 --> NG \n");

 a = sizeof usshi;
 if ( a==2 )
 printf("TEST10 --> OK \n");
 else
 printf("TEST10 --> NG \n");

 a = sizeof usi;
#if INT64
 if ( a==8 )
#else
 if ( a==4 )
#endif
 printf("TEST11 --> OK \n");
 else
 printf("TEST11 --> NG \n");

 a = sizeof usli;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
 if ( a==8 )
#else
 if ( a==4 )
#endif
 printf("TEST12 --> OK \n");
 else
 printf("TEST12 --> NG \n");

}



int 
m3mptr02 (void)
{
  int a,b,c,d,e,f,flag;
  c=25;
  a=10;
  b=3;
  c=35;
  a=5;
  d=100;
  d=200;
  e=300;
  e=400;
  f=60;
  f=80;
  flag=0;
  if(a!=c){
    flag=1;
  }
  if(b<=b){
    if(c>=a){
    b=e;
    flag++;
    }
  }
  if(b==b){
    b=f;
    flag++;
  }
  a=2000;
  b=5000;
  c=10000;
  d=100;
  e=300;
  f=60;
  if(flag==3){
    printf("*****  OK  *****\n");
  }
  else {
    printf("*****  NG  *****\n");
  }
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

}


int 
scood01 (void)
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

}



int 
scohd03 (void)
{
  char *ct =
             "0000000000000000000011111111111111111111"
             "2222222222222222222233333333333333333333"
             "4444444444444444444455555555555555555555"
             "6666666666666666666677777777777777777777"
             "8888888888888888888899999999999999999999"
             "aaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbb"
             "ccccccccccccccccccccdddddddddddddddddddd"
             "eeeeeeeeeeeeeeeeeeee"                               ;
  int  iz = 0, isi = 1 ,iss = 256 ,il =257                        ;
  char s[300] = {'\0'}                                       ;

  printf("********** SCOHD03 TEST STARTED **********\n")      ;


  if ( *(char *)memcpy(s,ct,iz) == '\0' )
    printf("********** SCOHD03 -01 OK **********\n")          ;
  else
    printf("********** SCOHD03 -01 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,isi) == '0' )
    printf("********** SCOHD03 -02 OK **********\n")          ;
  else
    printf("********** SCOHD03 -02 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,iss) == 'c' )
    printf("********** SCOHD03 -03 OK **********\n")          ;
  else
    printf("********** SCOHD03 -03 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,il) == 'c' )
    printf("********** SCOHD03 -04 OK **********\n")          ;
  else
    printf("********** SCOHD03 -04 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,0) == '\0' )
    printf("********** SCOHD03 -05 OK **********\n")          ;
  else
    printf("********** SCOHD03 -05 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,1) == '0' )
    printf("********** SCOHD03 -06 OK **********\n")          ;
  else
    printf("********** SCOHD03 -06 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,256) == 'c' )
    printf("********** SCOHD03 -07 OK **********\n")          ;
  else
    printf("********** SCOHD03 -07 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,257) == 'c' )
    printf("********** SCOHD03 -08 OK **********\n")          ;
  else
    printf("********** SCOHD03 -08 OK **********\n")          ;


  printf("********** SCOHD03 TEST ENDED **********\n")        ;

}
