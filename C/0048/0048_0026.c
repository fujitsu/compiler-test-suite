#include <stdio.h>
#include <string.h>
int mpsub (void);
void m3mpsi05 (void);
void scohdi2 (void);
void scosc10 (void);
void m3edc016 (void);
void m3mpcm02 (void);
int fmb (void);
void m3edc308 (void);
void mptest04 (void);
void m3ecas05 (void);
void m3edc168 (void);

int 
main (void)
{

   printf("***  **** START ***\n");

   m3edc168();  
   m3ecas05();  
   mptest04();  
   m3edc308();  
   fmb();       
   m3mpcm02();  
   m3edc016();  
   scosc10();   
   scohdi2();   
   m3mpsi05();  

   printf("***  ****  END  ***\n");

}



 volatile struct f2stag1 {
       short  s;
       long   l;
 } f1exst1;
 const union f1utag1 {
       int    i;
       long   l;
 } f1exun1,f1exun12;

void
m3edc168 (void)
{
   printf("*** M3EDC168 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile struct f2stag1 st1,*st1p;
     auto const struct f2stag2 {
           char  c;
           int   i;
     } st2 = {0x7f,0x7fffffff};
     register volatile enum entag2 {
           f1enx=-1, f1eny,f1enz=100
     } f1en1 = f1enz;
     static const union f1utag2 {
           signed  s;
           unsigned u;
     } f1un2[2] = { { -1 }, { 0 } };

     extern volatile struct f2stag1 f1exst1;
     extern const union f1utag1 f1exun1,f1exun12;

     typedef volatile enum tagf1en1 {
           f1ena, f1enb, f1enc
     } typeen;
     typeen  f1en2;

     st1.s = -1;  st1.l = 0x7fffffff;
     if (st1.s!=-1 || st1.l!=2147483647)
         printf(" *** M3EDC168 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-01 OK ***\n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** M3EDC168 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-02 OK ***\n");

     if (f1en1!=100 || f1enx!=-1 || f1eny!=0 || f1enz!=100)
         printf(" *** M3EDC168 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-03 OK ***\n");

#if INT64
	 if (f1un2[0].s!=-1 || f1un2[0].u!=18446744073709551615 ||
			  f1un2[1].s!=0 || f1un2[1].u!=0)
#else
     if (f1un2[0].s!=-1 || f1un2[0].u!=4294967295 ||
         f1un2[1].s!=0 || f1un2[1].u!=0)
#endif
         printf(" *** M3EDC168 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-04 OK ***\n");

     if (f1exst1.s || f1exst1.l)
         printf(" *** M3EDC168 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-05 OK ***\n");

     if (f1exun1.i || f1exun1.l || f1exun12.i || f1exun12.l)
         printf(" *** M3EDC168 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-06 OK ***\n");

     f1en2 = f1enb;
     if (f1en2!=1 || f1ena!=0 || f1enb!=1 || f1enc!=2)
         printf(" *** M3EDC168 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-07 OK ***\n");
   }

   printf("*** M3EDC168 TEST ENDED ***\n");
}




struct tag
{
  int a;
  int b;
} ;

void fe3fnc1(register volatile const struct tag *,
        register const volatile struct tag *);
void fe3fnc2(register volatile struct tag *);
void fe3fnc3(register struct tag *);
void fe3fnc4(volatile const struct tag *);
void fe3fnc5(volatile struct tag);
void fe3fnc6(struct tag);

void
m3edc308 (void)
{

    volatile const struct tag a = { 1,2 };
    const volatile struct tag b = { 3,4 };
    volatile struct tag c = { 1,2 };
    struct tag d = { 1,2 };

    fe3fnc1(&a,&b);
    fe3fnc2(&c);
    fe3fnc3(&d);
    fe3fnc4(&a);
    fe3fnc5(c);
    fe3fnc6(d);
}

void fe3fnc1(register volatile const struct tag *a,
        register const volatile struct tag *b)
{
  if (a->a == 1 && a->b == 2)
      printf("***** M3EDC308 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 01 ***** N G *****\n");

  if (b->a == 3 && b->b == 4)
      printf("***** M3EDC308 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 02 ***** N G *****\n");
}

void fe3fnc2(register volatile struct tag *a)
{
  if (a->a == 1 && a->b == 2)
      printf("***** M3EDC308 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 03 ***** N G *****\n");
}

void fe3fnc3(register struct tag *a)
{
  if (a->a == 1 && a->b == 2)
      printf("***** M3EDC308 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 04 ***** N G *****\n");
}

void fe3fnc4(volatile const struct tag *a)
{
  if (a->a == 1 && a->b == 2)
      printf("***** M3EDC308 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 05 ***** N G *****\n");
}

void fe3fnc5(volatile struct tag a)
{
  if (a.a == 1 && a.b == 2)
      printf("***** M3EDC308 - 06 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 06 ***** N G *****\n");
}

void fe3fnc6(struct tag a)
{
  if (a.a == 1 && a.b == 2)
      printf("***** M3EDC308 - 07 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 07 ***** N G *****\n");
}




 int y;
 int mpsub();
 void m3mpsi05() {
 struct mptag {
  int mema;
  int memb;
  char memc[4];
  };
 struct mptag var1,var2,var3,*pint;
 int a[10];
 int x;
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
 mpsub();
 x=a[1];
 pint->memc[1]=y+pint->memb;
 if (pint->memc[1]==37) printf("M3MPSI05 OK\n");
 else
 printf("%d\n",pint->memc[1]);
 }
 int 
mpsub (void)
 {
 y=22;
 return 0;
 }



struct t {
           unsigned int fs:2;
         } s1,s2,*p;
void
scohdi2 (void)
{
    int        i,i1,i2                                        ;

    printf("********** SCOHDI2 TEST STARTED **********\n");

    i = 3                                                     ;
    p = &s2                                                   ;


    s1.fs = i                                                 ;
    p->fs = i                                                 ;



    if ( s1.fs == 3)
        printf("********** SCOHDI2 -01 OK **********\n")  ;
    if ( s1.fs != 3)
        printf("********** SCOHDI2 -01 NG **********\n")  ;



    if ( p->fs == 3)
        printf("********** SCOHDI2 -02 OK **********\n")  ;
    if ( p->fs != 3)
        printf("********** SCOHDI2 -02 NG **********\n")  ;



    i1 = s1.fs                                                ;
    i2 = p->fs                                                ;



    if ( (i1==3)&&(i2==3) )
        printf("********** SCOHDI2 -03 OK **********\n")  ;
    else
        printf("********** SCOHDI2 -03 NG **********\n")  ;

    printf("********** SCOHDI2 TEST ENDED **********\n")  ;

}



void
m3ecas05 (void)
{
  short int              a = 0;
  char                   c   = 0x81;
  signed char            sc  = 0x81;
  unsigned char          usc = 0x81;
  short int              shi   = 1;
  signed short int       sshi  = 1;
  unsigned short int     usshi = 1;
  int                    i   = 1;
  signed int             si  = 1;
  unsigned int           usi = 1;
  long int               li   = 1;
  signed long int        sli  = 1;
  unsigned long int      usli = 1;
  int                   *p;
  enum etag { e1, e2, e3, e4 } etag;
  const int              ci = 1;
  volatile int           vi = 1;

  p = &i;
  etag = 1;



  a = ( short int ) c;
#ifdef S_CHAR
  if ( (a&0x0000ffff)==0x0000ff81 )
#else
  if ( (a&0x0000ffff)==0x00000081 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( short int ) sc;
  if ( (a&0x0000ffff)==0x0000ff81 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( short int ) usc;
  if ( (a&0x0000ffff)==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( short int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( short int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( short int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( short int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( short int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( short int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( short int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( short int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( short int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( short int ) p;
  i = ( int ) p;
  if ( (a&0x0000ffff)==(i&0x0000ffff) )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0;

  a = ( short int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( short int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( short int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

}



void
mptest04 (void)
{
     int      ary1[5][5][5];
     int      ary2[5][5][5];
     int      d1,ngf,d01,rcd,i,j,k;
     int      mpfnc21(int i,int j,int k);
     int      mpfnc22(char[],int);
     int      mpfnc23(int,int);
     int      mpfnc24(int d01,int d1);
     char     str[3];
     static char   msg[11] = "*** OK ***";

     printf("\n***** MPTEST04 START *****\n");

     ngf = 0;
     for(i=0 ; i<5 ; i++){
        for(j=0 ; j<5 ; j++){
           for(k=0 ; k<5 ; k++){
              ary1[i][j][k] = i+j+k;
              ary2[i][j][k] = j;
           }
        }
     }

     for(i=0 ; i<5 ; i++){
        for(j=0 ; j<5 ; j++){
           for(k=0 ; k<5 ; k++){
              d1=mpfnc21(i,j,k);
              d01 = ary1[i][j][k] * 3;
              mpfnc22(str,mpfnc24(d01,d1));
              if( strncmp(str,"NG",3) == 0 ) {
                 strncpy(msg+4,str,2);
                 printf("*** ARY1[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary1[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
           for(k=0;k<5;k++){
              rcd = 0;
              if(mpfnc23(ary2[i][j][k],rcd) == j){
                 mpfnc22(str,0);
              } else {
                 printf("  RCD = %d \n",rcd);
                 mpfnc22(str,1);
                 strncpy(msg+4,str,2);
                 printf("*** ARY2[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary2[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
        }
     }
     if(ngf == 0){
        mpfnc22(msg+4,ngf);
     }
l99:
     printf("***** MPTEST04 %2s    *****\n",msg+4);
     printf("***** MPTEST04 END   *****\n");
}

int 
mpfnc21 (int pr1, int pr2, int pr3)
{
   int rtn;
   int mpfnc26(int pr1,int pr2,int pr3);
     rtn = mpfnc26(pr1,pr2,pr3);
     return(rtn);
}

int 
mpfnc25 (int i)
{
   return(i*3);
}

int 
mpfnc26 (int p1, int p2, int p3)
{
   return(mpfnc25(p1)+mpfnc25(p2)+mpfnc25(p3));
}

int 
mpfnc22 (char *s, int i)
{
     if(i==0)
        strcpy(s,"OK");
     else
        strcpy(s,"NG");
     return(1);
}

int 
mpfnc27 (int *a, int s)
{
   int i;

     for(i=0;i<s;i++)
       *(a+i)=i;
     return(0);
}

int 
mpfnc28 (int arg1, int arg2)
{
     int ary[5],i;
     mpfnc27(ary,5);
     for(i=0;i<5;i++){
        if(ary[i] == arg1)
           return(i);
     }
     return(-1);
}

int 
mpfnc24 (int i, int j)
{
     return(i-j);
}

int 
mpfnc23 (int i, int j)
{
   int w;
     w=mpfnc28(i,j)+j;
     return(w);
}




 volatile const int unsigned fe1a4=1;
 volatile const signed int fe1a5;

void
m3edc016 (void)
{

   volatile const signed int *addrs1,*addrs2;
   volatile const unsigned int *addru1,*addru2;

   printf("*** M3EDC016 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const signed int a1;
     register volatile const unsigned int a2=0,b2=0;
     static volatile const int signed a3[2]={2,3},b3=4;
     extern volatile const int unsigned fe1a4;
     extern volatile const signed int fe1a5;
     typedef const volatile unsigned int t_ui;
     t_ui  a6;


     addrs1 = &a1;
     if (a1!=*addrs1)
         printf(" *** M3EDC016 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC016 TEST-01 OK ***\n");

     if (a2 || b2)
         printf(" *** M3EDC016 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC016 TEST-02 OK ***\n");

     if (a3[0]!=2 )
         printf(" *** M3EDC016 TEST-03 ERROR ***\n");
     else if ( a3[1]!=3 )
         printf(" *** M3EDC016 TEST-03 ERROR ***\n");
     else if (  b3!=4)
         printf(" *** M3EDC016 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC016 TEST-03 OK ***\n");

     if (fe1a4!=1)
         printf(" *** M3EDC016 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC016 TEST-04 OK ***\n");

     if (fe1a5!=0)
         printf(" *** M3EDC016 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC016 TEST-05 OK ***\n");

     addru1 = &a6;
     if (a6!=*addru1)
         printf(" *** M3EDC016 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC016 TEST-06 OK ***\n");
   }

   printf("*** M3EDC016 TEST ENDED ***\n");
}

int be3a;

void
scosc10 (void)
{
        int  b,*p1;
        int  i,j;

  printf("********** SCOSC10 TEST STARTED **********\n");
  for(i=0;i<3;i++)
    {
          b=i+3;
          be3a=i+b;
          j=be3a+b;

          p1=&b;
          *p1=j-i;
          j=b+be3a;
          printf("%d %d %d %d \n",j,be3a,b,*p1);
    }
  printf("********** SCOSC10 TEST ENDED **********\n");
}



#include <signal.h>
#include <setjmp.h>
 jmp_buf env;


struct bextag1 {
    char       t1_ch1;
    short int  t1_si1;
};



union {
  struct {
    unsigned char a:1; unsigned char :6; unsigned char b:1;
  } fest;
  unsigned char mem;
} feun;

int fefnc1(int (void));
int fefnc2(int (int));
int fefnc3(int *);
int fefnc4(int *(void));
int fefnc5(int *(int));
int fefnc6(int (*)(void));
int fefnc11(void);
int fefnc12(int);
int *fefnc14(void);
int *fefnc15(int);
int (*fefnc16)(void);
int fefnc166(void);

static int st1 = 1;

int
fmb (void)
{

    int rtncd,*p1,p2,p3,s1;
    void mp1fnc1();

    static char        ch1 = 1;
    static short int   si1 = 2;
    static long int    li1 = 4;
    static long int    lia1[5] = { 10, 20, 30, 40, 50 };
    static long long int
                       ll1 = 8;
    static struct bextag1 st1 = { 100, 200 };
    static struct bextag1 *stp1 = &st1;
    long int    cal, ans = 765;
    int sub (char pch1, short int psi1, long int pli1, long long int pll1, struct bextag1 pst1, struct bextag1 pst2, long int plia1[]);

  {
    feun.mem = 129u;

    if (feun.fest.b == 1)
        printf("***** M3EDTR04 - 01 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 01 ***** N G *****\n");
  }
  {
    int a = 1;

    if (fefnc1(fefnc11) == 1)
        printf("***** M3EDTR04 - 02 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 02 ***** N G *****\n");

    if (fefnc2(fefnc12) == 1)
        printf("***** M3EDTR04 - 03 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 03 ***** N G *****\n");

    if (fefnc3(&a) == 1)
        printf("***** M3EDTR04 - 04 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 04 ***** N G *****\n");

    if (fefnc4(fefnc14)== 1)
        printf("***** M3EDTR04 - 05 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 05 ***** N G *****\n");

    if (fefnc5(fefnc15) == 1)
        printf("***** M3EDTR04 - 06 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 06 ***** N G *****\n");

    fefnc16 = &fefnc166;
    if (fefnc6(fefnc16) == 1)
        printf("***** M3EDTR04 - 07 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 07 ***** N G *****\n");
  }

    signal(SIGSEGV,mp1fnc1);
    rtncd=setjmp(env);
    if(rtncd!=0) {
      printf("_____ RETURN CODE = %d _____\n",rtncd);
      if(rtncd==999)
        printf("_____ MPTEST38 OK ___________\n");
      else
        printf("_____ MPTEST38 NG ___________\n");
      return 0;
    } ;


    s1=10;
    goto l1;
l2: s1=0;
    goto l3;
l1: s1=s1*10;
    goto l2;
l3: if(s1==0)
      printf("_____ CHECK 1 OK ____________\n");
    else {
      printf("_____ CHECK 1 NG ____________\n");
      printf("_____ S1 = %d ______________\n",s1);
      }

    for(p3=1;p3<400;p3++) {    
    p1=p1-20000;                
	mp1fnc1();
   p2=*p1;                     
    } ;                        


    printf("---- SCPA003 START ---- \n");

    cal = sub(ch1, si1, li1, ll1, st1, *stp1, lia1);

    if (cal == ans)
        printf ("   ***  OK  *** \n");
    else {
        printf ("   ???  NG  ??? \n");
        printf ("     ANS = %ld\n", ans);
        printf ("     CAL = %ld\n", cal);
    }

    printf("---- SCPA003  END  ---- \n");
    return 0;
 }



int fefnc1(int fefnc11(void))
{
  return (fefnc11());
}

int 
fefnc11 (void)
{
  return (1);
}

int fefnc2(int fefnc12(int))
{
  return (fefnc12(1));
}

int fefnc12(int a)
{
  return (a);
}

int fefnc3(int *a)
{
  return (*a);
}

int fefnc4(int *fefnc14(void))
{
  return (*fefnc14());
}

int *
fefnc14 (void)
{
  return (&st1);
}

int fefnc5(int *fefnc15(int))
{
  return (*fefnc15(1));
}

int *fefnc15(int a)
{
  st1 *= a;
  return (&st1);
}

int fefnc6(int (*fefnc16)(void))
{
  return ((*fefnc16)());
}

int 
fefnc166 (void)
{
  return (st1);
}

 void 
mp1fnc1 (void)
 {
    longjmp(env,999);
 }



int 
sub (char pch1, short int psi1, long int pli1, long long int pll1, struct bextag1 pst1, struct bextag1 pst2, long int plia1[])
{
    long int    i, sum;

    sum = pch1 + psi1 + pli1 + pll1 +
          pst1.t1_ch1 + pst1.t1_si1 + pst2.t1_ch1 + pst2.t1_si1;
    for (i=0; i<5; i++)
        sum = sum+plia1[i];
    return sum;
}

#if INT64
#define int __int32
#endif

 int   mouti1,mouti2;
 float moutf1,moutf2;
void
m3mpcm02 (void)
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
