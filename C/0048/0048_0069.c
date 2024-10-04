
#include <stdio.h>
#include <stddef.h>
#include <string.h>
int be1sub (void);
void func100 (void);
int func1 (void);
int f4fnc4 (void);
int f4fnc3 (void);
int f4fnc2 (void);
int f4fnc1 (void);
int f1fnc4 (void);
int f1fnc3 (void);
int f1fnc2 (void);
int f1fnc1 (void);
int m3ccct01 (void);
int scrsk18 (void);
int m3mprd01 (void);
int m3ctok09 (void);
int m3grel03 (void);
int m3gunr04 (void);
int scrpz11 (void);
int m3gsri03 (void);
int scs001 (void);
int main()
{

   printf("***  **** START ***\n\n");

   m3gsri03();  
   scrpz11() ;  
   m3gunr04();  
   scs001()  ;  
   m3grel03();  
   m3ctok09();  
   m3mprd01();  
   scrsk18() ;  
   m3ccct01();  

   printf("\n***  ****  END  ***\n");

}





int 
m3grel03 (void)
{
  printf("M3GREL03 START\n");
  f1fnc1();
  f1fnc2();
  f1fnc3();
  f1fnc4();
  printf("M3GREL03 END  \n");
}
int 
f1fnc1 (void){
  float fa=1.0,fb=2.0;
  int a=0;
  a =(fa>fb)+(0.0>fa)+(fa>3.0)+(1.0>2.0);
  if (a==0)
    printf("M3GREL02 F1FNC1 OK\n");
  else {
    printf("M3GREL02 F1FNC1 NG\n");
    printf("A=%d\n",a);
  }
}
int 
f1fnc2 (void){
  volatile int a[3] ,*ap1,*ap2;
           int b[3] ,*bp1,*bp2;
  int x=0;
  ap1=a;
  ap2=a+1;
  bp1=b;
  bp2=b+1;

  x =(ap1>ap2)+(bp1>bp2);
  if (x==0)
    printf("M3GREL03 F1FNC2 OK\n");
  else {
    printf("M3GREL03 F1FNC2 NG\n");
    printf("X=%d\n",x);
  }
}
volatile int aa[2];
int 
f1fnc3 (void){
  volatile int *ap1,*ap2;
  int x=0;
  ap1=aa;
  ap2=aa+1;
  {
    extern volatile int aa[2];
  }
  x =(ap1>ap2);
  if (x==0)
    printf("M3GREL03 F1FNC3 OK\n");
  else {
    printf("M3GREL03 F1FNC3 NG\n");
    printf("X=%d\n",x);
  }
}
int bb[2];
int 
f1fnc4 (void){
  int *ap1,*ap2;
  int x=0;
  ap1=bb;
  ap2=bb+1;
  {
    extern int bb[2];
  }
  x =(ap1>ap2);
  if (x==0)
    printf("M3GREL03 F1FNC4 OK\n");
  else {
    printf("M3GREL03 F1FNC4 NG\n");
    printf("X=%d\n",x);
  }
}




int 
m3gsri03 (void)
{

static   char const                        c01=-128;
static   char volatile                     c02=-128;
static   char const volatile               c03=-128;
static   char                              c04=-128;
static   char *                            c05=&c04;

static   unsigned   char const                  uc01=255;
static   unsigned   char volatile               uc02=255;
static   unsigned   char const volatile         uc03=255;
static   unsigned   char                        uc04=255;
static   unsigned   char *                      uc05=&uc04;

static   short  const                        s01=-32768;
static   short  volatile                     s02=-32768;
static   short  const volatile               s03=-32768;
static   short                               s04=-32768;
static   short  *                            s05=&s04;

static   unsigned  short  const                us01=65535;
static   unsigned  short  volatile             us02=65535;
static   unsigned  short  const volatile       us03=65535;
static   unsigned  short                       us04=65535;
static   unsigned  short  *                    us05=&us04;

static   int    const                        i01=-2147483648;
static   int    volatile                     i02=-2147483648;
static   int    const volatile               i03=-2147483648;
static   int                                 i04=-2147483648;
static   int    *                            i05=&i04;

static   unsigned  int    const                ui01=4294967295;
static   unsigned  int    volatile             ui02=4294967295;
static   unsigned  int    const volatile       ui03=4294967295;
static   unsigned  int                         ui04=4294967295;
static   unsigned  int    *                    ui05=&ui04;

static   float const                         f01=-0.590474e+38f;
static   float volatile                      f02=-0.590474e+38f;
static   float const volatile                f03=-0.590474e+38f;
static   float                               f04=-0.590474e+38f;
static   float *                             f05=&f04;

static   double const                        d01=-590474e+38;
static   double volatile                     d02=-590474e+38;
static   double const volatile               d03=-590474e+38;
static   double                              d04=-590474e+38;
static   double *                            d05=&d04;

static   long double const            ld01=0.841923574334e-75;
static   long double volatile         ld02=0.841923574334e-75;
static   long double const volatile   ld03=0.841923574334e-75;
static   long double                  ld04=0.841923574334e-75;
static   long double *                ld05=&ld04;

static long long int const          lls1=-9223372036854775808LL;
static long long int volatile       lls2=-9223372036854775808LL;
static long long int const volatile lls3=-9223372036854775808LL;
static long long int                lls4=-9223372036854775808LL;
static long long int *              lls5=&lls4;

static unsigned long long int const          llu1=18446744073709551615LL;
static unsigned long long int volatile       llu2=18446744073709551615LL;
static unsigned long long int const volatile llu3=18446744073709551615LL;
static unsigned long long int                llu4=18446744073709551615LL;
static unsigned long long int *              llu5=&llu4;

static wchar_t     const          lcr1=65535;
static wchar_t     volatile       lcr2=65535;
static wchar_t     const volatile lcr3=65535;
static wchar_t                    lcr4=65535;
static wchar_t *                  lcr5=&lcr4;

   printf("*** M3GSRI03 ** MK3 TEST ** STARTED ***\n");
#ifdef S_CHAR
   if((c01==-128)&&(c02==-128)&&(c03==-128)&&(c04==-128)&&(*c05==-128))
#else
   if((c01== 128)&&(c02== 128)&&(c03== 128)&&(c04== 128)&&(*c05== 128))
#endif
   printf("*** M3GSRI03 - 01 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 01 ** NG ***\n");

  if((uc01==255)&&(uc02==255)&&(uc03==255)&&(uc04==255)&&(*uc05==255))
   printf("*** M3GSRI03 - 02 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 02 ** NG ***\n");

   if((s01==-32768)&&
      (s02==-32768)&&
      (s03==-32768)&&
      (s04==-32768)&&
      (*s05==-32768))
   printf("*** M3GSRI03 - 03 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 03 ** NG ***\n");

   if((us01==65535)&&
      (us02==65535)&&
      (us03==65535)&&
      (us04==65535)&&
      (*us05==65535))
   printf("*** M3GSRI03 - 04 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 04 ** NG ***\n");

   if(( i01==-2147483648)&&
      ( i02==-2147483648)&&
      ( i03==-2147483648)&&
      ( i04==-2147483648)&&
      (*i05==-2147483648))
   printf("*** M3GSRI03 - 05 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 05 ** NG ***\n");

   if((ui01==4294967295)&&
      (ui02==4294967295)&&
      (ui03==4294967295)&&
      (ui04==4294967295)&&
      (*ui05==4294967295))
   printf("*** M3GSRI03 - 06 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 06 ** NG ***\n");

   if(( f01==-0.590474e+38f)&&
      ( f02==-0.590474e+38f)&&
      ( f03==-0.590474e+38f)&&
      ( f04==-0.590474e+38f)&&
      (*f05==-0.590474e+38f))
   printf("*** M3GSRI03 - 07 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 07 ** NG ***\n");

   if(( d01== -590474e+38)&&
      ( d02== -590474e+38)&&
      ( d03== -590474e+38)&&
      ( d04==-590474e+38)&&
      (*d05==-590474e+38))
   printf("*** M3GSRI03 - 08 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 08 ** NG ***\n");

   if((ld01==0.841923574334e-75) &&
      (ld02==0.841923574334e-75) &&
      (ld03==0.841923574334e-75) &&
      (ld04==0.841923574334e-75) &&
      (*ld05==0.841923574334e-75))

   printf("*** M3GSRI03 - 09 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 09 ** NG ***\n");

   if((lls1==-9223372036854775808LL) &&
      (lls2==-9223372036854775808LL) &&
      (lls3==-9223372036854775808LL) &&
      (lls4==-9223372036854775808LL) &&
      (*lls5==-9223372036854775808LL))

   printf("*** M3GSRI03 - 10 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 10 ** NG ***\n");

   if((llu1==18446744073709551615LL) &&
      (llu2==18446744073709551615LL) &&
      (llu3==18446744073709551615LL) &&
      (llu4==18446744073709551615LL) &&
      (*llu5==18446744073709551615LL))

   printf("*** M3GSRI03 - 11 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 11 ** NG ***\n");


   if((lcr1==65535) &&
      (lcr2==65535) &&
      (lcr3==65535) &&
      (lcr4==65535) &&
      (*lcr5==65535))

   printf("*** M3GSRI03 - 12 ** OK ***\n");
   else
   printf("*** M3GSRI03 - 12 ** NG ***\n");


   printf("*** M3GSRI03 TEST ENDED ***\n");
}




int 
m3ccct01 (void) {

   printf("M3CCCT01  TEST START \n");

#if  __STDC_VERSION__ >= 199901L || __GNUC__
#if  (~ 15 == 0xfffffffffffffff0) && (~15 != 0xfffffff0)
      printf(" *** O K (50-01) ***  \n");
#else
      printf(" === N G (50-01) ===  \n");
#endif
#else
#if  ~ 15 == 0xfffffff0
      printf(" *** O K (50-01) ***  \n");
#else
      printf(" === N G (50-01) ===  \n");
#endif
#endif

#if  10 ^ 15 == 5
      printf(" *** O K (50-02) ***  \n");
#else
      printf(" === N G (50-02) ===  \n");
#endif


#if   ! 1 == 0
      printf(" *** O K (50-03) ***  \n");
#else
      printf(" === N G (50-03) ===  \n");
#endif


#if   11 | 7 == 15
      printf(" *** O K (50-04) ***  \n");
#else
      printf(" === N G (50-04) ===  \n");
#endif


#define  f(x)  # x

   if (*f({) == 0x7b)
      printf(" *** O K (50-05) ***  \n");
   else
      printf(" === N G (50-05) ===  \n");


#if   '{' == 0x7b
      printf(" *** O K (50-06) ***  \n");
#else
      printf(" === N G (50-06) ===  \n");
#endif


   if (*"{" == 0x7b)
      printf(" *** O K (50-07) ***  \n");
   else
      printf(" === N G (50-07) ===  \n");


   if (*f(}) == 0x7d)
      printf(" *** O K (50-10) ***  \n");
   else
      printf(" === N G (50-10) ===  \n");


   if (*f([) == 0x5b)
      printf(" *** O K (50-11) ***  \n");
   else
      printf(" === N G (50-11) ===  \n");


   if (*f(]) == 0x5d)
      printf(" *** O K (50-12) ***  \n");
   else
      printf(" === N G (50-12) ===  \n");


   if (*f(\n) == 0x0a)
      printf(" *** O K (50-13) ***  \n");
   else
      printf(" === N G (50-13) ===  \n");


#if  __STDC_VERSION__ >= 199901L || __GNUC__
#if  (~ 0xf0ff000f == 0xffffffff0f00fff0) && (~ 0xf0ff000f != 0x0f00fff0)
      printf(" *** O K (50-14) ***  \n");
#else
      printf(" === N G (50-14) ===  \n");
#endif
#else
#if  ~ 0xf0ff000f == 0x0f00fff0
      printf(" *** O K (50-14) ***  \n");
#else
      printf(" === N G (50-14) ===  \n");
#endif
#endif


#if  12 ^ 10 == 6
      printf(" *** O K (51-01) ***  \n");
#else
      printf(" === N G (51-01) ===  \n");
#endif


   if (*(f(@)) == 0x40)
      printf(" *** O K (51-02) ***  \n");
   else
      printf(" === N G (51-02) ===  \n");


   if  (*f(ABC)      ==  0x41 &&
        *(f(ABC)+1)  ==  0x42 &&
        *(f(ABC)+2)  ==  0x43   )
      printf(" *** O K (51-04) ***  \n");
   else
      printf(" === N G (51-04) ===  \n");


#if  'A'  ==  0x41
      printf(" *** O K (51-06) ***  \n");
#else
      printf(" === N G (51-06) ===  \n");
#endif

   if (*"A"  ==  0x41)
      printf(" *** O K (51-07) ***  \n");
else
      printf(" === N G (51-07) ===  \n");


   if (*f(A) == 0x41)
      printf(" *** O K (51-08) ***  \n");
else
      printf(" === N G (51-08) ===  \n");


   printf("M3CCCT01   TEST END \n");
}



int 
m3gunr04 (void)
{
  printf("M3GUNR04 START\n");
  f4fnc1();
  f4fnc2();
  f4fnc3();
  f4fnc4();
  printf("M3GUNR04 END  \n");
}
int 
f4fnc1 (void){
  char *c="abc";
  if ( (*(c+1))=='b')
    printf("M3GUNR04 F4FNC1 OK\n");
  else {
    printf("M3GUNR04 F4FNC1 NG\n");
    printf("*(C+1)=%d\n",*(c+1));
    }
}
int 
f4fnc2 (void){
  struct tag {int x[2];} st;
  struct tag *stp;
  stp=&st;
  (stp->x)[1]=1;
  if (stp->x[1]==1 )
    printf("M3GUNR04 F4FNC2 OK\n");
  else {
    printf("M3GUNR04 F4FNC2 NG\n");
    printf("STP->X[1]=%d\n",stp->x[1]);
  }
}
int 
f4fnc3 (void){
  int ax[1][1];
  ax[0][0]=1;

  if (ax[0][0]==1 )
    printf("M3GUNR04 F4FNC3 OK\n");
  else {
    printf("M3GUNR04 F4FNC3 NG\n");
    printf("AX[0][0]=%d\n",ax[0][0]);
  }
}
int 
f4fnc4 (void){
  int (*p)[1];
  int a=1,*ap;
  ap=&a;

  p=(int (*) [1])ap;
  if ( (*p)[0]==1 )
    printf("M3GUNR04 F4FNC4 OK\n");
  else {
    printf("M3GUNR04 F4FNC4 NG\n");
    printf("(*P)[0]=%d\n",(*p)[0]);
  }
}


int 
m3ctok09 (void)
{

   printf("M3CTOK09   TEST START \n");

#define  a  '\''
#if  a  ==  0x27
   printf(" *** O K (11-01) ***  \n");
#else
   printf(" === N G (11-01) ===  \n");
#endif

#define  b  '\"'
#if  b  ==  0x22
   printf(" *** O K (11-02) ***  \n");
#else
   printf(" === N G (11-02) ===  \n");
#endif

#define  c  '\?'
#if  c  ==  0x3f
   printf(" *** O K (11-03) ***  \n");
#else
   printf(" === N G (11-03) ===  \n");
#endif

#define  d  '\\'
#if  d  ==  0x5c
   printf(" *** O K (11-04) ***  \n");
#else
   printf(" === N G (11-04) ===  \n");
#endif

#define  e  '\1'
#if  e  ==  01
   printf(" *** O K (11-05) ***  \n");
#else
   printf(" === N G (11-05) ===  \n");
#endif

#define  x  '\11'
#if  x  ==  011
   printf(" *** O K (11-06) ***  \n");
#else
   printf(" === N G (11-06) ===  \n");
#endif
#undef  x

#define  g  '\111'
#if  g  ==  0111
   printf(" *** O K (11-07) ***  \n");
#else
   printf(" === N G (11-07) ===  \n");
#endif

#define  h  '\x1'
#if  h  ==  0x1
   printf(" *** O K (11-08) ***  \n");
#else
   printf(" === N G (11-08) ===  \n");
#endif

#define  i  '\x11'
#if  i  ==  0x11
   printf(" *** O K (11-09) ***  \n");
#else
   printf(" === N G (11-09) ===  \n");
#endif

#define  j  L'\x111'
#if  j  ==  0x111
   printf(" *** O K (11-10) ***  \n");
#else
   printf(" === N G (11-10) ===  \n");
#endif

#define  k  '\a'
#if  k  ==  0x07
   printf(" *** O K (11-11) ***  \n");
#else
   printf(" === N G (11-11) ===  \n");
#endif

#define  l  '\b'
#if  l  ==  0x08
   printf(" *** O K (11-12) ***  \n");
#else
   printf(" === N G (11-12) ===  \n");
#endif

#define  m  '\f'
#if  m  ==  0x0c
   printf(" *** O K (11-13) ***  \n");
#else
   printf(" === N G (11-13) ===  \n");
#endif

#define  n  '\n'
#if  n  ==  0x0a
   printf(" *** O K (11-14) ***  \n");
#else
   printf(" === N G (11-14) ===  \n");
#endif

#define  o  '\r'
#if  o  ==  0x0d
   printf(" *** O K (12-01) ***  \n");
#else
   printf(" === N G (12-01) ===  \n");
#endif

#define  p  '\t'
#if  p  ==  0x09
   printf(" *** O K (12-02) ***  \n");
#else
   printf(" === N G (12-02) ===  \n");
#endif

#define  q  '\v'
#if  q  ==  0x0b
   printf(" *** O K (12-03) ***  \n");
#else
   printf(" === N G (12-03) ===  \n");
#endif

#define  x(x)    # x
#define  y(y)    x(y)
#define  t       "\""
if (!memcmp(y(t) , "\"\\\"\"" , 4))
   printf(" *** O K (12-06) ***  \n");
else
   printf(" === N G (12-06) ===  \n");

#define  u  '\''
if (!memcmp(y(u) , "\'" , 1))
   printf(" *** O K (12-07) ***  \n");
else
   printf(" === N G (12-07) ===  \n");


#if defined(__EDG__) || defined(__GNUC__)
   printf(" *** O K (12-08) ***  \n");
#else
#define  v  \"
if (!memcmp(y(v) , "\"" , 1))
   printf(" *** O K (12-08) ***  \n");
else
   printf(" === N G (12-08) ===  \n");
#endif


   printf("M3CTOK09   TEST END \n");
}
#undef  a
#undef  b
#undef  c
#undef  d
#undef  e
#undef  f
#undef  g
#undef  h
#undef  i
#undef  j
#undef  k
#undef  g
#undef  l
#undef  m
#undef  n
#undef  o
#undef  p
#undef  q
#undef  r
#undef  s
#undef  t
#undef  u
#undef  v
#undef  w
#undef  x
#undef  y
#undef  z




struct estr {
int x;
int y;
int xa[10];
};
struct west {
int xb[10];
int z;
float w;
};
int m3mprd01 (void)
{
  printf("M3MPRD01 START\n");
  func1();                           
  printf("M3MPRD01 END  \n");
}
int func1 (void)
{
  static  char stat1[21] ={0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0         };
  char *ap ;
  struct estr ea;
  struct west eb;
  struct estr *pint1;
  struct estr *pint2;
  struct west *pint3;
  int  num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=5;
  pint1->xa[num]=20;
  pint3->xb[num]=20;
  num=1;
  pint1->xa[num]=10;
  pint2->xa[num]=pint1->xa[num];
  if (pint1->xa[num]==10) printf("M3MPRD01 OK\n");
  else
  printf("M3MPRD01 NG\n");
  return 0;
}




   struct  t1                   {
     int   a[10][10]        ;
     int   *b,*c,d              ;
     char  e,*f                 ;
     int   a1[4]              ;
     }    p                    ;
   static char
    ng_msg []={"******* MPTEST06 LAST NG *************"};
   static char
    ok_msg []={"******* MPTEST06 LAST OK *************"}  ;
   int  g,h,*i,func2(),b1=0,b2=50,b3=0,b4=0,err=0;
   void func100(),errcheck();
   int 
mptest06 (void)
        {
        printf("**************************************\n");
        printf("******* MPTEST06 -- START ************\n");
        printf("**************************************\n");
        h=2 ;
        g=5 ;
        if(g==5)
         {
           printf("******* MPTEST06 CHECK01 OK **********\n");
           printf("**************************************\n");
         }
        else
         {
          err++;
          printf("*** MPTEST06 CHECK1 NG  ***\n") ;
         }
        for(h=0;h<4;h++)
          p.a1[h]=h  ;
        i=p.a[0]+99  ;
        *i=g-5         ;
        for(g=0;g<10;g=g+2)
          *i=*i+p.a1[3] ;
        *i=*i+p.a1[2]  ;
        p.a [5] [5] = *i  ;
        g=sizeof(h+p.e) + 1  ;
        if(g==5)
         {
           printf("******* MPTEST06 CHECK02 OK **********\n");
           printf("**************************************\n");
         }
        else
         {
           err++;
           printf("*** MPTEST06 CHECK2 NG  ***\n") ;
         }
        i=&g     ;
        p.b=i    ;
        func100()  ;
        errcheck();
        printf("******* MPTEST06 --  END  ************\n");
        printf("**************************************\n");
        }
   void 
func100 (void)
        {
        char        *s1                  ;
        char        *func3(char *s1)     ;
        int         j,**k,l,m[5]       ;
        static char flg[]={"off"}    ;
        union  t2   {
          int  *n                        ;
          int  *o                        ;
          }   q                         ;
        struct tag1 {
          char *s0                       ;
          int  s00                       ;
          union      tag2  {
               char  s000  [10]        ;
               char  s0000               ;
               }    un1                 ;
          int  *s09                      ;
               }    s                   ;
          k=&(p.b)                       ;
          l=func2()                      ;
          j=**k+l                        ;
          if(j==12)
           {
             printf("******* MPTEST06 CHECK04 OK **********\n");
             printf("**************************************\n");
           }
          else
           {
             err++;
             printf("****** MPTEST06 CHECK04 NG ******\n");
           }
          q.n=&j                         ;
          l=0                            ;
          while(l<5)  {
            *(q.n)=*(q.n)+1              ;
            l++                          ;
            }                           ;
          if(*(q.n)==17)
           {
             printf("******* MPTEST06 CHECK05 OK **********\n");
             printf("**************************************\n");
           }
          else
           {
             err++;
             printf("****** MPTEST06 CHECK05 NG ******\n");
           }
          l=0                             ;
          while(l<5)  {
            m[l]=*(q.o)                 ;
            l++                           ;
            }                            ;
          p.c=&m[3]                     ;
          goto label2 ;
label1: h=*(p.c)                          ;
        if(h == p.a [5] [5] && !strcmp(s.s0,"ok"))
         {
           printf("%s\n",ok_msg);
           printf("**************************************\n");
         }
        else
         {
           err++;
           printf("%s\n",ng_msg);
         }
        return;
label2 :  s1=flg;
          s.s0=func3(s1);
          goto label1;
  }
  int 
func2 (void)
    {
      static int c1=2,c2=5,c3=10,c4=1 ;
      b1=b1+2  ;
      b2=b2-10  ;
      b3=b3+1 ;
      do   {
         p.a[c1] [c4]=c3  ;
         c1++  ;
           }
      while (c1<c2)  ;
      if(b1>=5 && b2<=20)
        {
           if(b3==3)
            {
              printf("******* MPTEST06 CHECK03 OK **********\n");
              printf("**************************************\n");
            }
           else
            {
              err++;
              printf("****** MPTEST06 CHECK03 NG ******\n");
            }
           return (7) ;
        }
      else
        {
           c4++  ;
           c3++  ;
           func2()  ;
           printf("******* FUNC2 RECURSIVE **************\n");
           printf("**************************************\n");
           return (7);
        }
    }
  struct taga {
    int  st1  [10]                  ;
    char *st2 [10]                  ;
    char st3  [10]                  ;
                        } *pp1 ,pp2  ;
  char *
func3 (char *s2)
       {
          int s6,s7,*s11 ;
          void func4(int s7,char *s2,struct taga *pp1) ;
          char s5[2],*s4   ;
          static char ss5[]={"no"} ;
          static int  line1 []={0,9,2,3,7,5,4,6,8,1} ;
          static char g7[]={"  2   "}  ;
          s6=0 ;
          s7=1 ;
          do  {
            s6++ ;
            s7++ ;
            pp2.st1[s6] = line1[s6]  ;
            pp1=&pp2  ;
            if(pp1->st1[s6]!=line1[s6])
             printf("*** NG HAPPENED AT FUNC3 ***\n") ;
            func4(s7,s2,pp1) ;
              }
          while(line1[s6]!= 7 ) ;
          if(s6<5)
            { printf("***  %s  |  %s  |  %s  ***\n",g7,g7,g7) ;
               printf("**************************************\n");
               strcpy(s5,"ok") ;
               s4=s5 ;
            }
          else
            { printf("*** ng happened ** s6 = %d ***\n",s6) ;
               printf("**************************************\n");
               s4=ss5 ;
            }
          return (s4) ;
       }
  void 
func4 (int s9, char *s8, struct taga *s10)
       {
     int z1,z2,z3;
   static char ra[7][7]={"CCCCCC","OOOOOO","PPPPPP",
                       " BELL "," BBB  "," SSSS ",
                       "  2   "};
     b4=b4+1;
     if(!strcmp(s8,"on"))
       goto label10;
switch(s10->st1[s9-2])  {
case  1  :
  goto label9;
case  2  :
  goto label8;
case  3  :
  goto label7;
case  4  :
  goto label6;
case  5  :
  goto label5;
case  6  :
  goto label4;
case  7  :
  goto label3;
case  8  :
  goto label2;
case  9  :
  goto label1;
default :
  goto label05;
    } ;
label05 : z1=0;
          z2=6;
          z3=3;
 if(b4==1)
  {
    printf("******* FUNC4 TURNING POINT 1 OK *****\n");
    printf("**************************************\n");
  }
 else
  {
    err++;
    printf("*** FUNC4 TURNING POINT 1 NG ***\n");
  }
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
         goto label10;
label1 : z1=5;
         z2=2;
         z3=1;
 if(b4==2)
  {
    printf("******* FUNC4 TURNING POINT 2 OK *****\n");
    printf("**************************************\n");
  }
 else
  {
    err++;
    printf("******* FUNC4 TURNING POINT 02 NG *****\n") ;
  }
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
         goto label10;
label2 : z1=3;
         z2=5;
         z3=4;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
         goto label10;
label3 : z1=2;
         z2=5;
         z3=1;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
         goto label10;
label4 : z1=0;
         z2=2;
         z3=3;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
         goto label10;
label5 : z1=3;
         z2=5;
         z3=5;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
         goto label10;
label6 : z1=2;
         z2=5;
         z3=2;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
         goto label10;
label7 : z1=5;
         z2=6;
         z3=4;
 if(b4==4)
  {
    printf("******* FUNC4 TURNING POINT 4 OK *****\n");
    printf("**************************************\n");
  }
 else
  {
    err++;
    printf("****** FUNC4 TURNING POINT 4 NG ******\n");
  }
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
         goto label10;
label8 : z1=3;
         z2=2;
         z3=1;
 if(b4==3)
  {
    printf("******* FUNC4 TURNING POINT 3 OK *****\n");
    printf("**************************************\n");
  }
 else
  {
    err++;
    printf("******* FUNC4 TURNING POINT 3 NG ******\n");
  }
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
         goto label10;
label9 : z1=0;
         z2=4;
         z3=1;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
 printf("**************************************\n");
label10 :
    return;
 }
 void 
errcheck (void)
 {
      printf("**************************************\n");
      if(err==0)
       {
         printf("***    ok                          ***\n");
       }
      else
       {
         printf("***    ng                          ***\n");
       }
      printf("**************************************\n");
 }






 int 
scs001 (void)
 {
   struct bittag {
            char         a11: 8;
            short int    a21: 8;
            short int    a22: 8;
            int          a41:16;
            int          a42:16;
            int          a43:32;
   } ;
   struct bittag bitdata = { 0x01, 0x02 ,0x03
                             ,0x0004, 0x0005 ,0x00000006};
   char                   i11,i12,i13;
   short int              i21,i22    ;
   int                    i41        ;
   unsigned char          u11,u12,u13;
   unsigned short int     u21,u22    ;
   unsigned int           u41        ;
   i11=bitdata.a11 ;
   i12=bitdata.a21 ;
   i13=bitdata.a22 ;
   i21=bitdata.a41 ;
   i22=bitdata.a42 ;
   i41=bitdata.a43 ;
   u11=bitdata.a11 ;
   u12=bitdata.a21 ;
   u13=bitdata.a22 ;
   u21=bitdata.a41 ;
   u22=bitdata.a42 ;
   u41=bitdata.a43 ;
   if ((i11+i12+i13+i21+i22+i41)==21 &&
       (u11+u12+u13+u21+u22+u41)==21)
     printf("*** SCS001 *** OK ***\n") ;
   else {
     printf("### i11=%d\n",i11) ;
     printf("### i12=%d\n",i12) ;
     printf("### i13=%d\n",i13) ;
     printf("### i21=%d\n",i21) ;
     printf("### i22=%d\n",i22) ;
     printf("### i41=%d\n",i41) ;
     printf("### u11=%d\n",u11) ;
     printf("### u12=%d\n",u12) ;
     printf("### u13=%d\n",u13) ;
     printf("### u21=%d\n",u21) ;
     printf("### u22=%d\n",u22) ;
     printf("### u41=%d\n",u41) ;
   }
 }







#ifdef v10

#define pr(format,value) printf("value = %format ",(value))
#define nl putchar('\n')
#define print1(f,x1) pr(f,x1); nl
#define print2(f,x1,x2)  pr(f,x1); print1(f,x2)
#define print3(f,x1,x2,x3)  pr(f,x1); print2(f,x2,x3)
#define print4(f,x1,x2,x3,x4)  pr(f,x1); print3(f,x2,x3,x4)

int 
sclpz11 (void)
{
      int x,y,z;

      x=y=0;
      while(y<10) ++y; x += y;
      print2(d,x,y);

      x=y=0;
      while(y<10) x += ++y;
      print2(d,x,y);

      y=1;
      while(y<10) {
        x = y++; z = ++y;
      }
      print3(d,x,y,z);

      for(y=1;y<10;y++) x=y;
      print2(d,x,y);

      for(y=1;(x=y)<10;y++) ;
      print2(d,x,y);

      for(x=0,y=1000;y>1;x++,y/=10 ) {
        print2(d,x,y);
      }
}
#else

static char *data[] = {
"x = 10",
"y = 10",
"x = 55",
"y = 10",
"x = 9",
"y = 11",
"z = 11",
"x = 9",
"y = 10",
"x = 10",
"y = 10",
"x = 0",
"y = 1000",
"x = 1",
"y = 100",
"x = 2",
"y = 10"
};
 int check(p)
char *p;
{
    static int i=0;
    if( strcmp(data[i++],p) != 0 ) puts(" NG ");
}
#define pr(format,value) \
{char buf[10];sprintf(buf,#value" = %"#format,(value));check(buf);}
#define nl printf("\n")
#define print1(f,x1) pr(f,x1); nl
#define print2(f,x1,x2)  pr(f,x1); print1(f,x2)
#define print3(f,x1,x2,x3)  pr(f,x1); print2(f,x2,x3)
#define print4(f,x1,x2,x3,x4)  pr(f,x1); print3(f,x2,x3,x4)

int 
scrpz11 (void)
{
      int x,y,z;

      x=y=0;
      while(y<10) ++y; x += y;
      print2(d,x,y);

      x=y=0;
      while(y<10) x += ++y;
      print2(d,x,y);

      y=1;
      while(y<10) {
        x = y++; z = ++y;
      }
      print3(d,x,y,z);

      for(y=1;y<10;y++) x=y;
      print2(d,x,y);

      for(y=1;(x=y)<10;y++) ;
      print2(d,x,y);

      for(x=0,y=1000;y>1;x++,y/=10 ) {
        print2(d,x,y);
      }
      puts(" SCRPZ11 PASS ");
}
#endif



struct be1tag {
  int qa;
  int b;
};

struct be1tag be1st1 = { 1,2 };
struct be1tag be1st2[10];
struct be1tag be1st3;

struct be1tag2 {
  struct be1tag be1st4;
  struct be1tag be1st6[10];
  int c;
} be1st5;

int 
scrsk18 (void)
{
        int i;
        struct be1tag2 *p;
        p=&be1st5;
        for(i=0;i<10;i++)
          be1st2[i] = be1st1;
        be1st3=be1st1;
        be1st3.qa=be1st3.qa+1;
        be1st2[5] = be1st3;
        p->be1st4 = be1st1;
        for(i=0;i<10;i++)
          p->be1st6[i] = be1st3;
        p->be1st6[5] = be1st1;
        be1sub();
        puts(" OK ");
}
unsigned char adata[] = {
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
2,2,
1,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2
};
int 
be1sub (void)
{
        static int c=0;
        int i;
        for(i=0;i<10;i++) {
          if( be1st2[i].qa != adata[c++] ) puts(" NG ");
          if( be1st2[i].b != adata[c++] ) puts(" NG ");
          if( be1st5.be1st6[i].qa !=adata[c++] ) puts(" NG ");
          if( be1st5.be1st6[i].b !=adata[c++] ) puts(" NG ");
        }
}

