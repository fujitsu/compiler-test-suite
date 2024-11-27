#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub10 (void);
int sub9 (void);
int sub8 (void);
int sub7 (void);
int sub6 (void);
int sub5 (void);
int sub4 (void);
int sub3 (void);
int sub2 (void);
int sub1 (void);
int sub (void);
int sub0 (void);
int m3esad58 (void);
int m3mptr05 (void);
int m3esad05 (void);
int scobe06 (void);
int m3ermv05 (void);
int m3mptg01 (void);
int scosn01 (void);
int m3edc178 (void);
int mptest01 (void);
int m3elge02 (void);
  
 
 
 
 
 
 

int 
main (void)
{

   printf("*** \n");

   m3esad58();   
   m3elge02();   
   mptest01();   
   m3edc178();   
   scosn01();    
   m3mptg01();   
   m3ermv05();   
   scobe06();    
   m3esad05();   
   m3mptr05();   

   printf("*** \n");

exit (0);
}

 
 
 


int 
m3esad58 (void)
  {
printf("*** M3ESAD58 ****** START ***  \n");
 
 
 
{
  int   volatile   a=1;
  int   volatile   b=2;
  a+=b;
  if(a==3)
    printf("*** M3ESAD58-01 *****     O    K     *****\n");
  else
    printf("*** M3ESAD58-01 *** N G ********** N G ***\n");
}
 
 
 
{
  int   volatile   a=1;
  int   const   b=2;
  a+=b;
  if(a==3)
    printf("*** M3ESAD58-02 *****     O    K     *****\n");
  else
    printf("*** M3ESAD58-02 *** N G ********** N G ***\n");
}
 
 
 
{
  int   volatile   a=1;
  int   volatile const   b=2;
  a+=b;
  if(a==3)
    printf("*** M3ESAD58-03 *****     O    K     *****\n");
  else
    printf("*** M3ESAD58-03 *** N G ********** N G ***\n");
}
 
 
 
{
  int   volatile   a=1;
  int   const volatile   b=2;
  a+=b;
  if(a==3)
    printf("*** M3ESAD58-04 *****     O    K     *****\n");
  else
    printf("*** M3ESAD58-04 *** N G ********** N G ***\n");
}
printf("*** M3ESAD58 ****** END *** \n");
 return 0;
  }

 
 
 


 typedef int inttype;

 extern volatile const inttype  fe1a5;
 volatile const inttype           fe1a6;

int 
m3edc178 (void)
{
   volatile const int  *addr,*addr2;

   printf("*** M3EDC178 **** START ***\n");

   {
     auto volatile const inttype  a1;
     auto volatile const inttype  a2,b2;
     register volatile const inttype  a3=0;
     static volatile const inttype  a4[2]={-1,0x7fffffff};

     extern volatile const inttype  fe1a5;
     extern volatile const inttype   fe1a6;
     typedef volatile const inttype  inttype2;
     inttype2  a7;

     addr = &a1;
     if (a1!=*addr)
         printf(" *** M3EDC178 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC178 TEST-01 OK ***\n");

     addr = &a2;  addr2 = &b2;
     if (a2!=*addr || b2!=*addr2)
         printf(" *** M3EDC178 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC178 TEST-02 OK ***\n");

     if (a3!=0)
         printf(" *** M3EDC178 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC178 TEST-03 OK ***\n");

     if (a4[0]!=-1 || a4[1]!=2147483647)
         printf(" *** M3EDC178 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC178 TEST-04 OK ***\n");

     if (fe1a5)
         printf(" *** M3EDC178 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC178 TEST-05 OK ***\n");

     if (fe1a6)
         printf(" *** M3EDC178 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC178 TEST-06 OK ***\n");

     addr = &a7;
     if (a7!=*addr)
         printf(" *** M3EDC178 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC178 TEST-07 OK ***\n");
   }

   printf("*** M3EDC178 **** END ***\n");
   return 0;
}
volatile const inttype fe1a5=0;

 
 
 


int 
m3ermv05 (void)
{
  printf("********** M3ERMV05 TEST START **********\n");
  {
    int a,b = 1;

    a = b + 1 + 2;
    if (a == 4)
        printf("***** M3ERMV05 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV05 - 01 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b + 1 - 2;
    if (a == 0)
        printf("***** M3ERMV05 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV05 - 02 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b - 1 + 2;
    if (a == 2)
        printf("***** M3ERMV05 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV05 - 03 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b - 1 - 2;
    if (a == -2)
        printf("***** M3ERMV05 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV05 - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 + c;
    if (a == 4)
        printf("***** M3ERMV05 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV05 - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - c;
    if (a == 0)
        printf("***** M3ERMV05 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV05 - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + c;
    if (a == 2)
        printf("***** M3ERMV05 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV05 - 07 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - c;
    if (a == -2)
        printf("***** M3ERMV05 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV05 - 08 ***** N G *****\n");
  }
  printf("********** M3ERMV05 TEST  END  **********\n");
  return 0;
}

 
 
 


int 
m3elge02 (void)
{
  int b;
  int a[ 5 ];
  struct stag {
                 int       s1;
                 short int s2;
                 char      s3;
              } stag;
  union utag  {
                 int       u1;
                 short int u2;
                 char      u3;
              } utag;
  enum etag   { e1, e2, e3 } etag;
  int *p;

    printf("*************\n");

 
  b = sizeof a;
#if ILP
  if ( b==40 )
#else (A32 || I64 || LLP || LP || A64)  
  if ( b==20 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

 
  b = sizeof stag;
#if ILP
  if ( b==16 )
#else (A32 || I64 || LLP || LP || A64)  
  if ( b==8 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

 
  b = sizeof utag;
#if ILP
  if ( b==8 )
#else (A32 || I64 || LLP || LP || A64)  
  if ( b==4 )
#endif
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

 
  b = sizeof etag;
#if ILP
  if ( b==8 )
#else (A32 || I64 || LLP || LP || A64)
  if ( b==4 )
#endif
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

 
  b = sizeof p;
#if (A32 || I64)  
  if ( b==4 )
#else (LLP || LP || ILP)
  if ( b==8 )
#endif
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  return 0;
}

 
 
 


struct fextag1 { int a; int b; };

int 
m3esad05 (void)
{
  printf("********** M3ESAD05 TEST START **********\n");
  {
    int val1 = 1,val2 = 2,c,a = 1;
    int *const p11 = &val1,*const p12 = &val2;

    c = *(a ? p11 : p12);
    if (c == 1)
        printf("***** M3ESAD05 - 01 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 01 ***** N G *****\n");
  }
  {
    static struct fextag1 st1 = { 1,2 },st2 = { 3,4 },c;
    struct fextag1 *const p21 = &st1,*const p22 = &st2;
    int a = 1;

    c = *(a ? p21 : p22);
    if (c.a == 1)
        printf("***** M3ESAD05 - 02 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 02 ***** N G *****\n");
  }
  {
    int volatile const vc31 = 1,vc32 = 2; int c,a = 1;

    c = a ? vc31 : vc32;
    if (c == 1)
        printf("***** M3ESAD05 - 03 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 03 ***** N G *****\n");
  }
  {
    static volatile const struct fextag1 st1={ 1,2 },st2={ 3,4 };
    static struct fextag1 c;
    int a = 1;

    c = (a ? st1 : st2);
    if (c.a == 1)
        printf("***** M3ESAD05 - 04 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 04 ***** N G *****\n");
  }
  {
    int const v51 = 1,v52 = 2; int c,a = 1;

    c = a ? v51 : v52;
    if (c == 1)
        printf("***** M3ESAD05 - 05 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 05 ***** N G *****\n");
  }
  {
    static const struct fextag1 st1 = { 1,2 },st2 = { 3,4 };
    static struct fextag1 c;
    int a = 1;

    c = (a ? st1 : st2);
    if (c.a == 1)
        printf("***** M3ESAD05 - 06 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 06 ***** N G *****\n");
  }
  {
    int val1 = 1,val2 = 2,*c,a = 1;
    int *volatile const p71 = &val1,*volatile const p72 = &val2;

    c = (int *)(a ? p71 : p72);
    if (*c == 1)
        printf("***** M3ESAD05 - 07 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 07 ***** N G *****\n");
  }
  {
    static struct fextag1 st1={ 1,2 },st2={ 3,4 };
    volatile const struct fextag1 *p81 = &st1,*p82 = &st2,*c;
    int a = 1;

    c = (a ? p81 : p82);
    if (c->a == 1)
        printf("***** M3ESAD05 - 08 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 08 ***** N G *****\n");
  }
  {
    int   a=2;
    int   b=3;
    int c=0,i=0;

    i = c ? a : b;
    if (i == 3)
        printf("***** M3ESAD05 - 09 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 09 ***** N G *****\n");
  }
  {
    static  const volatile  struct fextag {int a; int b;}st={2,3},
                                                        sd={4,5};
    static  struct fextag c;
    int a=0;

    c=(a?st:sd);
    if (c.a == 4)
        printf("***** M3ESAD05 - 10 ***** O K *****\n");
      else
        printf("***** M3ESAD05 - 10 ***** N G *****\n");
  }
  printf("********** M3ESAD05 TEST  END  **********\n");
  return 0;
}

 
 
 


int 
m3mptr05 (void)
{
  int a,b,c,d,e,i,j,flag=0;
  i=0;
  a=0;
  a=2;
  c=5;
  if(c>=5){
  }
  while(i<3){
    j=0;
    while(j<=2){
      b=a+j;
      flag++;
      j++;
    }
    flag--;
    i++;
  }
  if(flag==6){
    printf("***** OK  *****\n");
  }
  else {
    printf("***** NG  *****\n");
  }
  a=20;
  b=30;
  return 0;
}

 
 
 

int mpx;
static int mpy;
struct bt{
  unsigned int ba:2;
  unsigned int bb:3;
  unsigned int bc:4;
};
struct t {
  int c;
  int d;
};
int 
mptest01 (void)
{
  int a;
  int b;
  static int i;
  int *p;
  struct t *p1,s,ss;
  struct bt pbt1;
  extern struct bt *pbt;
  extern char str,*pc;
  void ii(),mpf(),mpf1(struct bt*,int);

  printf("\n***** MPTEST01 START *****\n");
  ii();
l1:
  b=1;
  p=&b;
  i=0;
  a=b+1;
l2:
  if (a<10)
  {
   a=*p+1+a;
   goto l2;
  }
  mpx=1;
  mpy=2;
  p=&ss.c;
l3:
  mpf();
  i=i+4;
  s.c=1;
  s.d=mpy;
  p1=&s;
  s.c=p1->d;
  mpy=*p;
  s.d=mpy;
  mpf1(pbt,1);
l4:
  pbt1.ba=pbt->ba;
  pbt1.bb=pbt->bb;
  if(pbt->ba!=0){
    mpx=i+p1->c;
    pbt1.bc=mpx;
  }else{
 
  }
  pbt->bc=pbt1.bc;
  mpf1(&pbt1,2);
  printf("***** MPTEST01 END *****\n");
  return 0;
}
void 
mpf (void)
{
  printf("  IN  ''F'' \n");
  return;
}

 struct bt *pbt,ppbt;
 char str,*pc;

void 
ii (void)
{
  printf("  IN  ''II'' \n");
  pbt=&ppbt;
  if(pbt->ba - ppbt.ba) printf("** NG <1> **\n");
  if(pbt->bb - ppbt.bb) printf("** NG <2> **\n");
  if(pbt->bc - ppbt.bc) printf("** NG <3> **\n");
  return;
}
void 
mpf1 (struct bt *pp, int j)
{
  static int i=0;
  static char *ncc="NG",cc[]="OK";
         char *c;
  printf("  IN  ''F1'' \n");
  if(++i==j) c=cc;
  else       c=ncc;
  printf("  ** %s **\n",c);
}

 
 
 


 int *x;
 int ea;
 int *p;
 struct estr {
 int *p1;
 int  q1;
 };
 struct estr *pp;
 struct estr *qq;
 struct estr1 {
 int ea;
 int eb;
 int ec;
 };
 struct estr1 *ep;
int fun (struct estr ea);
int fun1 (struct estr1 *pp);
int fun2 (struct estr1 *pp);
int fun4 (struct estr1 *ep, struct estr1 ea);
int fun8 (struct estr1 *ep, struct estr1 ea);
 int 
m3mptg01 (void)
 {
 sub1();
 sub2();
 sub3();
 sub4();
 sub5();
 sub6();
 sub7();
 sub8();
 sub9();
 sub10();
 return 0;
}
  
  
 int 
sub1 (void)
 {
 int  a,b,c,d;
 a=1;
 x=&a;
 a=2;
 b=*x;
 sub();
 c=*x;
 if (c==10) printf("%4s\n","OK-1");
 else      printf("%4s\n","NG-1");
 *x=1;
 sub();
 d=*x;
 if (d==10) printf("%4s\n","OK-2");
 else  {  printf("%4s\n","NG-2");
 printf("%d\n",b);
 printf("%d\n",c);
 printf("%d\n",d);      }
 return 0;
}
 int 
sub (void) {
 *x=10;
 return 0;
 }
  
  
 int 
sub2 (void)
 {
 int  a,b,c;
 a=1;
 x=&a;
 a=2;
 b=*x;
 ea=1 ;
 c=*x;
 if (c==2) printf("%4s\n","OK-3");
 else   { printf("%s4\n","NG-3");
 printf("%d\n",b);
 printf("%d\n",c);             }
 return 0;
 }
  
  
 int 
sub3 (void)
 {
 int  *ip,*iq;
 int  a,b,c,d,e;
 b=3;
 c=4;
 iq=&b;
 ip=&d;
 p=&a;
 ip=p;
 a=1;
 b=*p;
 *ip=2;
 c=*p;
 if (c==2) printf("%s\n","OK-4");
 else      printf("%s%d\n","NG-4 C=",c);
 *p=b;
 e=*iq;
 *ip=2+e;
 d=*p;
 if (d==3) printf("%s\n","OK-5");
 else  {  printf("%s%d\n","NG-5 D=",d);
 printf("%d\n",b);
 printf("%d\n",c);
 printf("%d\n",d);    }
 return 0;
 }
  
  
 int 
sub4 (void)
 {
 int  *ip,*iq;
 int  a,b,c,d;
 p=&a;
 ip=p;
 a=1;
 b=*p;
 a=2;
 d=*ip;
 a=3;
 c=*p;
 if ((b+d+c)==6) printf("%s\n","OK-6");
 else   {       printf("%s\n","NG-6");
 printf("%d\n",b);
 printf("%d\n",c);
 printf("%d\n",d);      }
 return 0;
 }
  
  
 int 
sub5 (void)
 {
 int  *ip,*iq;
 int  a,b,c,d;
 d=2;
 p=&a;
 ip=p;
 a=1;
 b=*p;
 ip=&d;
 c=*p;
 if ((b+c)==2) printf("%s\n","OK-7");
 else     {   printf("%s\n","NG-7");
 printf("%d\n",b);
 printf("%d\n",c);              }
 return 0;
 }
  
  
 int 
sub6 (void)
 {
   struct estr eea;
   qq=&eea;
   qq->q1=1;
   fun(eea);
   if (qq->q1==2) printf("%s\n","OK-10");
   else          printf("%s\n","NG-10");
   return 0;
 }
 int 
fun (struct estr ea)
 {
 int  a,b,c;
 pp=&ea;
 a=1;
 b=pp->q1;
 sub0();
 c=pp->q1;
 if (b==1) printf("%s\n","OK-8");
 else {   printf("%s\n","NG-8");
 printf("%d\n",b); }
 if (c==2) printf("%s\n","OK-9");
 else  {  printf("%s\n","NG-9");
 printf("%d\n",c); }
 qq->p1=pp->p1;
 qq->q1=pp->q1;
 return 0;
 }
 int 
sub0 (void) {
 pp->p1=&(pp->q1);
 pp->q1=2;
 return 0;
 }
  
  
 int 
sub7 (void)
 {
 struct estr1 epa;
 struct estr1 *epp;
   epp=&epa;
   epp->ea=1;
   epp->eb=2;
   epp->ec=3;
   fun1(epp);
   return 0;
 }
 int 
fun1 (struct estr1 *pp)
 {
 int  a,b,c;
 ep=pp;
 a=1;
 b=pp->ea;
 ep->eb=1;
 c=pp->ea;
 if (b==1&&c==1) printf("%s\n","OK-11");
 else       {   printf("%s\n","NG-11");
                 printf("%d\n",b); }
 return 0;
 }
  
  
 int 
sub8 (void)
 {
 struct estr1  epa;
 struct estr1 *epp;
   epp=&epa;
   epp->ea=1;
   epp->eb=2;
   epp->ec=3;
   fun2(epp);
   if (epp->ec==2) printf("%s\n","OK-12");
   else            printf("%s\n","OK-12");
   return 0;
 }
 int 
fun2 (struct estr1 *pp)
 {
 struct estr1 *ip;
 int  *iq;
 int  a,b,c;
 iq=&a;
 ip=pp;
 a=1;
 b=pp->ea;
 ip->ec=2;
 a=pp->eb;
 c=pp->ea;
 if (c==1) printf("%s\n","OK-13");
 else {   printf("%s\n","NG-13");
           printf("%d\n",c); }
 return 0;
 }
  
  
 int 
sub9 (void)
 {
 struct estr1 *eep;
 struct estr1 eea;
 eep=&eea;
 eep->ea=1;
 eep->eb=2;
 eep->ec=3;
 fun8(eep,eea);
 return 0;
 }
 int 
fun8 (struct estr1 *ep, struct estr1 ea)
 {
 struct estr1 *ip;
 int  *iq;
 int  a,b,c,d;
 iq=&a;
 ip=ep;
 a=1;
 b=ep->eb;
 d=ip->ec;
 c=ep->eb;
 if (c==2) printf("%s\n","OK-14");
 else {   printf("%s\n","NG-14");
           printf("%d\n",c); }
 return 0;
}
  
  
 int 
sub10 (void)
 {
 struct estr1 *eep;
 struct estr1 eea;
 eep=&eea;
 eep->ea=1;
 eep->eb=2;
 eep->ec=3;
 fun4(eep,eea);
 return 0;
 }
 int 
fun4 (struct estr1 *ep, struct estr1 ea)
 {
 struct estr1 *ip;
 int  *iq;
 int  a,b,c,d;
 iq=&b;
 ip=&ea;
 a=1;
 b=ep->ea;
 *iq=2;
 c=ep->ea;
 if (c==1) printf("%s\n","OK-15");
 else {   printf("%s\n","NG-15");
           printf("c = %d \n",c); }
 return 0;
 }

 
 
 


int 
scosn01 (void)
{
  unsigned       int    ui3 = 3u                                 ;
  unsigned       int    tu                                       ;
  signed         int    ts                                       ;
  signed         int    si3 = 3                                  ;

  const          int    ci3 = 3                                  ;

  const unsigned int    cui1 = 1u                                ;
  const unsigned int    cui8 = 8u                                ;
  const   signed int    csi1 = 1                                 ;
  const   signed int    csi8 = 8                                 ;

  printf("********** SCOSN01 TEST STARTED **********\n")     ;

   
   

  tu = 1u << ui3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 01 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 01 NG **********\n")        ;

   
   

   
   

  ts = 1  << si3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 02 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 02 NG **********\n")        ;

   
   

   
   

  tu = cui1 << 3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 03 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 03 NG **********\n")        ;

   
   

   
   

  ts = csi1 << 3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 04 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 04 NG **********\n")          ;

   
   

   
   

  tu = 1u << ci3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 05 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 05 NG **********\n")          ;

   
   

   
   

  ts = 1  << ci3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 06 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 06 NG **********\n")          ;

   
   

   
   

  tu = 8u >> ui3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 07 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 07 NG **********\n")          ;

   
   

   
   

  ts = 8  >> si3                                                 ;
  if   (ts == 1)
    printf("********** SCOSN01 - 08 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 08 NG **********\n")          ;

   
   

   
   

  tu = cui8 >> 3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 09 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 09 NG **********\n")          ;

   
   

   
   

  ts = csi8  >> 3                                                   ;
  if   (ts == 1)
    printf("********** SCOSN01 - 10 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 10 NG **********\n")          ;

   
   

   
   

  tu = 8u >> ci3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 11 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 11 NG **********\n")          ;

   
   

   
   

  ts = 8  >> ci3                                                 ;
  if   (ts == 1)
    printf("********** SCOSN01 - 12 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 12 NG **********\n")          ;

   
   

  printf("********** SCOSN01 TEST STARTED **********\n")     ;
  return 0;
}
 
 
 

int 
scobe06 (void)
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

 printf (" ****** \n");
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


 printf (" ****** \n");
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
   return 0;
}
