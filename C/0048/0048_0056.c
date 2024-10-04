
#include <stdio.h>
#include <stddef.h>
#include <setjmp.h>
#include <string.h>
#include <signal.h>
int sub1 (void);
int func1cc (int x, int y);
int func1a (int q);
int func1 (int x, int y);
int func (void);
int m3eva139 (void);
int m3eva138 (void);
int m3eva137 (void);
int m3eva136 (void);
int m3eva135 (void);
int m3eva134 (void);
int m3eva133 (void);
int m3eva132 (void);
int m3eva131 (void);
int m3eva130 (void);
int m3eva127 (void);
int m3eva126 (void);
int m3eva123 (void);
int m3eva122 (void);
int m3eva121 (void);
int m3eva120 (void);
int m3eva119 (void);
int m3eva118 (void);
int m3eva117 (void);
int m3eva116 (void);
int m3eva115 (void);
int m3eva114 (void);
int m3eva113 (void);
int m3eva112 (void);
int m3eva111 (void);
int m3eva110 (void);
int mptest04 (void);
int mptest03 (void);
int mptest01 (void);
int scpva01 (void);
int scpsi12 (void);
int scpsi11 (void);
int scpsi08 (void);
int scpsi07 (void);
int scpsi06 (void);
int scpsi05 (void);
int scpsi04 (void);
int scpsi03 (void);
int scpsi02 (void);
int scpsi01 (void);
int scppr01 (void);
int scpo304 (void);
int scpo303 (void);
int scpo302 (void); 
int mptest02 (void);
int 
main (void)
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    scpo302();
    scpo303();
    scpo304();
    scppr01();
    scpsi01();
    scpsi02();
    scpsi03();
    scpsi04();
    scpsi05();
    scpsi06();
    scpsi07();
    scpsi08();
    scpsi11();
    scpsi12();
    scpva01();
    mptest01();
    mptest02();
    mptest03();
    mptest04();
    m3eva110();
    m3eva111();
    m3eva112();
    m3eva113();
    m3eva114();
    m3eva115();
    m3eva116();
    m3eva117();
    m3eva118();
    m3eva119();
    m3eva120();
    m3eva121();
    m3eva122();
    m3eva123();
    m3eva126();
    m3eva127();
    m3eva130();
    m3eva131();
    m3eva132();
    m3eva133();
    m3eva134();
    m3eva135();
    m3eva136();
    m3eva137();
    m3eva138();
    m3eva139();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}

 union tag1 {
   unsigned int   a;
   struct tag2 {
     unsigned char   b1;
     unsigned char   b2;
     unsigned char   b3;
     unsigned char   b4;
   } b;
   unsigned char   c[4];
 } u1;
int 
scpo302 (void) {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun1(),fun2();
     memcpy(u1.c,"1234",4);
     fun1();
     fun2();
     if(memcmp(u1.c,"ABCD",4)==0)
       {
         printf("\n%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
 }
 void 
fun1 (int a) {
     u1.b.b1=u1.b.b1-'0';
     u1.b.b2=u1.b.b2-'0';
     u1.b.b3=u1.b.b3-'0';
     u1.b.b4=u1.b.b4-'0';
 }
 void 
fun2 (int a) {
     u1.a=u1.a+0x40404040;
 }
 union tag1a {
   unsigned int   a;
   struct tag2a {
     unsigned char   b1;
     unsigned char   b2;
     unsigned char   b3;
     unsigned char   b4;
   } b;
   unsigned char   c[4];
 } u1a;
int 
scpo303 (void) {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun1a(),fun2a();
     memcpy(u1a.c,"1234",4);
     fun1a();
     fun2a();
     if(memcmp(u1a.c,"ABCD",4)==0)
       {
         printf("\n%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
 }
 void 
fun1a (int a) {
     u1a.b.b1=u1a.b.b1-'0';
     u1a.b.b2=u1a.b.b2-'0';
     u1a.b.b3=u1a.b.b3-'0';
     u1a.b.b4=u1a.b.b4-'0';
 }
 void 
fun2a (int a) {
     u1a.a=u1a.a+0x40404040;
 }
 union tag1b {
   unsigned int   a;
   struct tag2b {
     unsigned char   b1;
     unsigned char   b2;
     unsigned char   b3;
     unsigned char   b4;
   } b;
   unsigned char   c[4];
 } u1b;
int 
scpo304 (void) {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun1b(),fun2b();
     memcpy(u1b.c,"1234",4);
     fun1b();
     fun2b();
     if(memcmp(u1b.c,"ABCD",4)==0)
       {
         printf("\n%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
 }
 void 
fun1b (void) {
     u1b.b.b1=u1b.b.b1-'0';
     u1b.b.b2=u1b.b.b2-'0';
     u1b.b.b3=u1b.b.b3-'0';
     u1b.b.b4=u1b.b.b4-'0';
 }
 void 
fun2b (void) {
     u1b.a=u1b.a+0x40404040;
 }
 static int    fun1c();
 static void   ok();
 int    a;
int 
scppr01 (void) {
   int    b;
   void   ng();
     a=10;
     b=fun1c(a);
     if(a==b)
       {
         ok();
       }
     else
       {
         ng();
       }
 }
 static int 
fun1c (void) {
     return(a);
 }
 static void 
ok (void) {
   static char c1[]={"ok"};
     printf("\n%s\n",c1);
 }
 void 
ng (void) {
   static char c2[]={"ng"};
     printf("%s\n",c2);
 }
int 
scpsi01 (void)
{
  char                    a;
  char               h[2];
  short int               b;
  unsigned int            c;
  long long int           d;
  long double             e;
  struct tag1
   { int el1;
     char el2;
   } str1 ;
  union ux
   { int el3;
     char el4;
   } str2 ;

  printf("\n********** SCPSI01 TEST START **********\n");

       a=12;
       h[1]='t';
       b=-15;
       c=5;
       d=10;
       e=7;
       str1.el1=4;
       str2.el3=9;

  if (a == 12 && b == -15 && c == 5 && d == 10 && e == 7)
      printf("***** SCPSI01 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI01 - 01 ***** N   G *****\n");
  if (h[1] == 't')
      printf("***** SCPSI01 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI01 - 02 ***** N   G *****\n");
  if (str1.el1 == 4 && str2.el3 == 9)
      printf("***** SCPSI01 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI01 - 03 ***** N   G *****\n");

  printf("********** SCPSI01 TEST  END  **********\n");
}
int 
scpsi02 (void)
{
  static char sa[5]="line";
  static unsigned short int      sb;
  static float                   sc;
  static long long int           sd;
  static long double             se;
  static struct name
    {char * first;
      char * second;
    } str1={
       "banana",
       "baseball",
       };
  static union ux
    {int el1;
      char el2;
    } str2;

  printf("\n********** SCPSI02 TEST START **********\n");

       sb=4;
       sc=-3;
       sd=6;
       se=7;
       str2.el1=5;

  if (sb == 4 && sc == -3 && sd == 6 && se == 7 && str2.el1 == 5)
      printf("***** SCPSI02 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 01 ***** N   G *****\n");
  if (strcmp(sa,"line") == 0)
      printf("***** SCPSI02 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 02 ***** N   G *****\n");
  if (strcmp(str1.first,"banana") == 0)
      printf("***** SCPSI02 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 03 ***** N   G *****\n");

  printf("********** SCPSI02 TEST  END  **********\n");
}
  float                          xa;
  static char                    sa;
  static unsigned short int      sb;
  static float                   sc;
  static double                  sd;
  static long long int           se;
  static long double             sf;
  static char            *s = "abc";
  static struct name
    {char * first;
      char * second;
    } str1={
       "first",
       "seconds",
       };
  static union ux
    { int el1;
      char el2;
    } str2;
int 
scpsi03 (void)
{

  printf("\n********** SCPSI03 TEST START **********\n");

       xa=4;
       sa=2;
       sb=5;
      sc=-3;
       sd=6;
       se=8;
       str2.el1=9;

  if (xa == 4 && str2.el1 == 9)
      printf("***** SCPSI03 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 01 ***** N   G *****\n");
  if (sa == 2 && sb == 5 && sc == -3 && sd == 6 && se == 8)
      printf("***** SCPSI03 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 02 ***** N   G *****\n");
  if (strcmp(str1.first,"first") == 0)
      printf("***** SCPSI03 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 03 ***** N   G *****\n");
  if(strlen(s) == 3)
      printf("***** SCPSI03 - 04 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 04 ***** N   G *****\n");

  printf("********** SCPSI03 TEST  END  **********\n");
}
int 
scpsi04 (void)
{
          int   property,debt,total;

  printf("\n********** SCPSI04 TEST START **********\n");
          property=25000;
         debt=-3000;
         total=func1(property,debt);

  if ( total == 22000)
      printf("***** SCPSI04 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI04 - 01 ***** N   G *****\n");

  printf("********** SCPSI04 TEST  END  **********\n");
}
  int 
func1 (int x, int y)
{
     int   z;
     z=x+y;
 return(z);
}
int 
scpsi05 (void)
{
           int   a,b,c,x,y;

  printf("\n********** SCPSI05 TEST START **********\n");
                a=1;
                b=2;

  x=func1a(a);
  y=func1a(b);
          c=x+y;
  if ( c == 12)
      printf("***** SCPSI05 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI05 - 01 ***** N   G *****\n");

  printf("********** SCPSI05 TEST  END  **********\n");

}
  int 
func1a (int q)
{
          int   x;
          x=q*4;
  return (x);

}
  int 
func2a (int r)
{
          int   y;
          y=r*4;
  return (y);

}

   static int staticfunction1();
int 
scpsi06 (void)
{
          int   a,b,c;

  printf("\n********** SCPSI06 TEST START **********\n");
                a=5;
                b=7;
                c=a*b;

  if ( c == 35)
      printf("***** SCPSI06 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI06 - 01 ***** N   G *****\n");
  staticfunction1();
}
  static int 
staticfunction1 (void)
{
          int   x,y,z;
                x=35;
                y=7;
                z=x/y;
  if (z == 5)
      printf("***** SCPSI06 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI06 - 02 ***** N   G *****\n");

  printf("********** SCPSI06 TEST  END  **********\n");

}
int 
scpsi07 (void)
{
          int   a,b,c;

  printf("\n********** SCPSI07 TEST START **********\n");
                a=5;
                b=12;
                c=a*b;

  if ( c == 60)
      printf("***** SCPSI07 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI07 - 01 ***** N   G *****\n");

  printf("********** SCPSI07 TEST  END  **********\n");
}
int 
scpsi08 (void)
{
  static int               sa,sb,sd;
  static double                  sc;

  printf("\n********** SCPSI08 TEST START **********\n");

       sa=4;
       sb=-3;
       sc=6;

  if (sa == 4 && sb == -3 && sc == 6)
      printf("***** SCPSI08 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI08 - 01 ***** N   G *****\n");

  sd=func1cc(sa,sb);

  if (sd == 1)
      printf("***** SCPSI08 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI08 - 02 ***** N   G *****\n");

  printf("********** SCPSI08 TEST  END  **********\n");
}
int 
func1cc (int x, int y)

{
       int     z;

       z=x+y;
       return(z);
}
#define   m_type_january  1
#define   m_type_may      2
#define   m_type_october  3
#define   m_type_december 4

          jmp_buf env;

int 
scpsi11 (void)
{
          int    x;
          struct tag1  {
          int    month;
          int    day;
          } birth;

  printf("\n********** SCPSI11 TEST START **********\n");

          birth.month=m_type_october;
          birth.day=28;

  switch(birth.month)
      {
   case m_type_january:
      printf("***** SCPSI11 - 01 ***** N   G *****\n");
      break;
   case m_type_may:
      printf("***** SCPSI11 - 01 ***** N   G *****\n");
      break;
   case m_type_october:
      printf("***** SCPSI11 - 01 ***** O   K *****\n");
      break;
   case m_type_december:
      printf("***** SCPSI11 - 01 ***** N   G *****\n");
      break;
   default  :
      printf("***** SCPSI11 - 01 ***** N   G *****\n");
      }
  switch(birth.day)
      {
   case    1:
      printf("***** SCPSI11 - 02 ***** N   G *****\n");
      break;
   case    7:
      printf("***** SCPSI11 - 02 ***** N   G *****\n");
      break;
   case   14:
      printf("***** SCPSI11 - 02 ***** N   G *****\n");
      break;
   case   28:
      printf("***** SCPSI11 - 02 ***** O   K *****\n");
      break;
   default  :
      printf("***** SCPSI11 - 02 ***** N   G *****\n");
      }
  x=setjmp(env);
   if(x==0)
  sub1();
   else
  printf("********** SCPSI11 TEST  END  **********\n");
}
  int 
sub1 (void)
   {
       int    val;
              val=3;
      printf("***** SCPSI11 - 03 ***** O   K *****\n");

       longjmp(env,val);

      printf("***** SCPSI11 - 03 ***** N   G *****\n");
   }
  static char  flont[] = "define";
  static char  back[] = "wrongs";
  static char  clear[] = "      ";
  static int   mid = 'f';
  static int   n = 6;
int 
scpsi12 (void)
{
  int        a,b;
  char        *s;

  printf("\n********** SCPSI12 TEST START **********\n");

     s=(char *)memchr(flont,mid,n);
  if (memcmp(s,flont+2,n) == 0)
      printf("***** SCPSI12 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI12 - 01 ***** N   G *****\n");

     memset(back,' ',6);
     memcpy(back,flont,6);
     a=strcmp(flont,back);
  if (a == 0)
      printf("***** SCPSI12 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI12 - 02 ***** N   G *****\n");

     strcpy(clear,flont);
  if (memcmp(clear,flont,n) == 0)
      printf("***** SCPSI12 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI12 - 03 ***** N   G *****\n");

     b=strlen(flont);
  if (b == 6)
      printf("***** SCPSI12 - 04 ***** O   K *****\n");
  else
      printf("***** SCPSI12 - 04 ***** N   G *****\n");


  printf("********** SCPSI12 TEST  END  **********\n");
}
int 
scpva01 (void) {
 struct tag1 {
    signed char          sc;
  unsigned char          usc;
    signed short int     ssi;
  unsigned short int     usi;
    signed long int      sli;
  unsigned long int      uli;
    signed long long int slli;
  unsigned long long int ulli;
           float    fl;
           double   du;
      long double   ldu;
           char     ch[3];
      wchar_t       lch;
 }s={'a','b',1,2,3,4,5,6,1.0,2.0,3.0,"xyz",L'a'};
 printf("\n*** SCPVA01 TEST START ***\n");
 if (s.sc == 'a')
      { printf("  ## SIGNED CHAR TEST OK            ##\n"); }
 else { printf(" ** SIGNED CHAR TEST NG            **\n"); }
 if (s.usc == 'b')
      { printf(" ** UNSIGNED CHAR TEST OK          **\n"); }
 else { printf("  ## UNSIGNED CHAR TEST NG          ##\n"); }
 if (s.ssi == 1)
      { printf(" ** SIGNED SHORT INT TEST OK       **\n"); }
 else { printf("  ## SIGNED SHORT INT TEST NG       ##\n"); }
 if (s.usi == 2)
      { printf(" ** UNSIGNED SHORT INT TEST OK     **\n"); }
 else { printf("  ## UNSIGNED SHORT INT TEST NG     ##\n"); }
 if (s.sli == 3)
      { printf(" ** SIGNED LONG INT TEST OK        **\n"); }
 else { printf("  ## SIGNED LONG INT TEST NG        ##\n"); }
 if (s.uli == 4)
      { printf(" ** UNSIGNED LOND INT TEST OK      **\n"); }
 else { printf("  ## UNSIGNED LOND INT TEST NG      ##\n"); }
 if (s.slli == 5)
      { printf(" ** SIGNED LONG LONG INT TEST OK   **\n"); }
 else { printf("  ## SIGNED LONG LONG INT TEST NG   ##\n"); }
 if (s.ulli == 6)
      { printf(" ** UNSIGNED LONG LONG INT TEST OK **\n"); }
 else { printf("  ## UNSIGNED LONG LONG INT TEST NG ##\n"); }
 if (s.fl == 1.0)
      { printf(" ** FLOAT TEST OK                  **\n"); }
 else { printf("  ## FLOAT TEST NG                  ##\n"); }
 if (s.du == 2.0)
      { printf(" ** DOUBLE TEST OK                 **\n"); }
 else { printf("  ## DOUBLE TEST NG                 ##\n"); }
 if (s.ldu == 3.0)
      { printf(" ** LONG DOUBLE TEST OK            **\n"); }
 else { printf("  ## LONG DOUBLE TEST NG            ##\n"); }
 if (0 == memcmp(s.ch,"xyz",3))
      { printf(" ** CHAR*N TEST OK                 **\n"); }
 else { printf("  ## CHAR*N TEST NG                 ##\n"); }
 if (s.lch == L'a')
      { printf(" ** LONG CHAR TEST OK              **\n"); }
 else { printf("  ## LONG CHAR TEST NG              ##\n"); }
 printf("*** SCPVA01 TEST END   ***\n");
}

int x;
static int y;
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
  void ii(),f(),f1(struct bt*,int);

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
  x=1;
  y=2;
  p=&ss.c;
l3:
  f();
  i=i+4;
  s.c=1;
  s.d=y;
  p1=&s;
  s.c=p1->d;
  y=*p;
  s.d=y;
  f1(pbt,1);
l4:
  pbt1.ba=pbt->ba;
  pbt1.bb=pbt->bb;
  if(pbt->ba!=0){
    x=i+p1->c;
    pbt1.bc=x;
  }else{
  }
  pbt->bc=pbt1.bc;
  f1(&pbt1,2);
  printf("***** MPTEST01 END *****\n");
}
void 
f (void)
{
  printf("  in ''f''\n");
  return;
}

 struct bt *pbt,ppbt;
 char str,*pc;

void 
ii (void)
{
  printf("  in ''ii''\n");
  pbt=&ppbt;
  if(pbt->ba - ppbt.ba) printf("** NG <1> **\n");
  if(pbt->bb - ppbt.bb) printf("** NG <2> **\n");
  if(pbt->bc - ppbt.bc) printf("** NG <3> **\n");
  return;
}
void 
f1 (struct bt *pp, int j)
{
  static int i=0;
  static char *ncc="NG",cc[]="OK";
         char *c;
  printf("  in ''f1''\n");
  if(++i==j) c=cc;
  else       c=ncc;
  printf("  ** %s **\n",c);
}
 union tag1aaa {
   unsigned int   a;
   struct tag2aaa {
     unsigned char   b1;
     unsigned char   b2;
     unsigned char   b3;
     unsigned char   b4;
   } b;
   unsigned char   c[4];
 } u1aaa;
int 
mptest02 (void)
{
int     ga;
  int   a,b,c,d,i;
  int   fff(),(*fp)(),ii;

  fp=fff;i=0;
  ii=(*fp)(i);

  ga=1;
  printf("\nstart mptest02\n");
  i=0;
  while(i<1)
  {
    b=ga-1;
    c=ga+1;
    a=b+c;         
    if(i<1)
    {
      i=func();    
      d=b+c;       
    }
  }
  if(a==2&&d==2)
    printf("      mptest02 ok\n");
  else {
    printf("      mptest02 ng a=%d(0)\n",a);
    printf("                  d=%d(0)\n",d);
  }
  printf("end   mptest02\n");
}
int 
func (void)
{
  return 1;
}
int 
fff (void)
{
  return 1;
}
struct  t1 {
   int        a;
   char       b;
   struct t1 *tp;
};

struct  t1 t1a,t1b,t1c;
int 
mptest03 (void)
{
   int funce(char *);
   int func103(struct t1 *),init(int),chk(struct t1 *);
   char  cc;
   int   i,rtc;
   struct t1 *t1p;

   printf("\n***** MPTEST03 START *****\n");
   for( i=0 ; init(i) ; i++);
   for( t1p=&t1a ; t1p != 0 ; t1p = t1p->tp) {
      rtc = func103(t1p);
      if(rtc == -1) {
         funce("in main");
         goto l1;
      }
      rtc = chk(t1p);
   }
l1:
   if(rtc == 0){
     for(cc='a',t1p=&t1a ; t1p!=0 ; t1p=t1p->tp,cc++){
       printf("  ( t1%c )  a=%d, b=%c\n",
                     cc,t1p->a,t1p->b);
     }
     printf("***** MPTEST03 OK ***** \n");
   }
}

int init(int i)
{
   switch(i){
      case 0:
         t1a.a = 0;
         t1a.b ='a';
         t1a.tp = &t1b;
         break;
      case 1:
         t1b.a = 1;
         t1b.b = 'b';
         t1b.tp = &t1c;
         break;
      case 2:
         t1c.a = 2;
         t1c.b = 'c';
         t1c.tp = 0;
         break;
      default:
         return(0);
   }
   return(1);
}

int func103(struct t1 *tp)
{
   if(tp == 0)
      return(-1);
   switch(tp->a){
      case 0:
         if(tp->b != 'a')
            return(-1);
         tp->b = 'x';
         return(0);
      case 1:
         if(tp->b != 'b')
            return(-1);
         tp->b = 'y';
         return(0);
      case 2:
         if(tp->b != 'c')
            return(-1);
         tp->b = 'z';
         return(0);
      default:
         return(-1);
   }
}

 int funce(char *str)
{
   printf("***** MPTEST03 NG *** %s ***** \n",str);
   return(-1);
}

 int chk(struct t1 *ptr)
{
   static char rdata[3] = {'x','y','z'};

   if(ptr == 0)
      return(funce("in chk 1"));
   if(ptr->a >= 0 && ptr->a < 3){
      if(rdata[ptr->a] == ptr->b) {
         printf(" ** OK *** t1.a = %d *** \n",ptr->a);
         printf(" ** OK *** t1.b = %c *** \n",ptr->b);
         return(0);
      } else {
         printf("     *** t1.a = %d *** \n",ptr->a);
         printf("     *** t1.b = %c *** \n",ptr->b);
         return(funce("in chk 2"));
      }
   } else {
      return(funce("in chk 3"));
   }
   return(0);
}

int 
mptest04 (void)
{
     int      ary1[5][5][5];
     int      ary2[5][5][5];
     int      d1,ngf,d01,rcd,i,j,k;
     int      funca(int i,int j,int k);
     int      edit(char[],int);
     int      stfunc(int,int);
     int      funcst(int d01,int d1);
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
              d1=funca(i,j,k);
              d01 = ary1[i][j][k] * 3;
              edit(str,funcst(d01,d1));
              if( strncmp(str,"NG",3) == 0 ) {
                 strncpy(msg+4,str,2);
                 printf("*** ary1[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary1[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
           for(k=0;k<5;k++){
              rcd = 0;
              if(stfunc(ary2[i][j][k],rcd) == j){
                 edit(str,0);
              } else {
                 printf("  rcd = %d \n",rcd);
                 edit(str,1);
                 strncpy(msg+4,str,2);
                 printf("*** ary2[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary2[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
        }
     }
     if(ngf == 0){
        edit(msg+4,ngf);
     }
l99:
     printf("***** MPTEST04 %2s END *****\n",msg+4);
}

int 
funca (int pr1, int pr2, int pr3)
{
   int rtn;
   int ssfunc(int pr1,int pr2,int pr3);
     rtn = ssfunc(pr1,pr2,pr3);
     return(rtn);
}

int 
funcss (int i)
{
   return(i*3);
}

int 
ssfunc (int p1, int p2, int p3)
{
   return(funcss(p1)+funcss(p2)+funcss(p3));
}

int 
edit (char *s, int i)
{
     if(i==0)
        strcpy(s,"OK");
     else
        strcpy(s,"NG");
     return(1);
}

int 
funcb (int *a, int s)
{
   int i;

     for(i=0;i<s;i++)
       *(a+i)=i;
     return(0);
}

int 
fun (int arg1, int arg2)
{
     int ary[5],i;
     funcb(ary,5);
     for(i=0;i<5;i++){
        if(ary[i] == arg1)
           return(i);
     }
     return(-1);
}

int 
funcst (int i, int j)
{
     return(i-j);
}

int 
stfunc (int i, int j)
{
   int w;
     w=fun(i,j)+j;
     return(w);
}
int 
m3eva110 (void)
{
  int a=10;
  int i=0;
  {
    register int a;
    a =1 ;
    if( a==1 )
      i = 1;
    else
      printf("M3EVA110 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA110 TEST OK \n");
  else
    printf("M3EVA110 TEST NG = %d \n",a);
}
int 
m3eva111 (void)
{
  int a111=10;
  int f111( register int a111 );
  if( f111(a111) )
    printf("\nM3EVA111 TEST OK \n");
  else
    printf("M3EVA111 TEST NG = %d \n",a111);
}
 int f111( register int a111 )
{
  if( a111==10 )
   return 1;
  else
   return 0;
}
int 
f112 (void)
{
  static int a112=10;
  if( a112==10 )
   return 1;
  else
   return 0;
}

int a112=20;

int 
m3eva112 (void)
{
  if( a112==20 && f112() )
    printf("\nM3EVA112 TEST OK \n");
  else
    printf("M3EVA112 TEST NG = %d \n",a112);
}
int 
f113 (void)
{
  static int a113=10;
  if( a113==10 )
   return 1;
  else
   return 0;
}

int a113;

int 
m3eva113 (void)
{
  if( a113==0 && f113() )
    printf("\nM3EVA113 TEST OK \n");
  else
    printf("M3EVA113 TEST NG = %d \n",a113);
}
int 
m3eva114 (void)
{
  static int a=10;
  int i=0;
  {
    int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA114 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA114 TEST OK \n");
  else
    printf("M3EVA114 TEST NG = %d \n",a);
}
int 
m3eva115 (void)
{
  static int a=10;
  int i=0;
  {
    int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA115 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA115 TEST OK \n");
  else
    printf("M3EVA115 TEST NG = %d \n",a);
}
int 
m3eva116 (void)
{
  static int a=10;
  struct {
           int a;
           int b;
         }st;
  st.a=20;
  if( a==10 && st.a==20 )
    printf("\nM3EVA116 TEST OK \n");
  else
    printf("M3EVA116 TEST NG = %d \n",a);
}
int 
m3eva117 (void)
{
  static int a117=10;
  int f117( int a117 );
  if( f117(a117) )
    printf("\nM3EVA117 TEST OK \n");
  else
    printf("M3EVA117 TEST NG = %d \n",a117);
}
 int f117( int a117 )
{
  if( a117==10 )
   return 1;
  else
   return 0;
}
int 
f118 (void)
{
  static int a118=10;
  if( a118==10 )
   return 1;
  else
   return 0;
}

static int a118=20;

int 
m3eva118 (void)
{
  if( a118==20 && f118() )
    printf("\nM3EVA118 TEST OK \n");
  else
    printf("M3EVA118 TEST NG = %d \n",a118);
}
int 
f119 (void)
{
  static int a119=10;
  if( a119==10 )
   return 1;
  else
   return 0;
}

static int a119;

int 
m3eva119 (void)
{
  if( a119==0 && f119() )
    printf("\nM3EVA119 TEST OK \n");
  else
    printf("M3EVA119 TEST NG = %d \n",a119);
}
int 
m3eva120 (void)
{
  static int a=10;
  int i=0;
  {
    static int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA120 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA120 TEST OK \n");
  else
    printf("M3EVA120 TEST NG = %d \n",a);
}
int 
m3eva121 (void)
{
  static int a=10;
  int i=0;
  {
    static int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA121 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA121 TEST OK \n");
  else
    printf("M3EVA121 TEST NG = %d \n",a);
}
int 
f122 (void)
{
  static int a122=10;
  if( a122==10 )
   return 1;
  else
   return 0;
}

extern int a122=20;

int 
m3eva122 (void)
{
  if( a122==20 && f122() )
    printf("\nM3EVA122 TEST OK \n");
  else
    printf("M3EVA122 TEST NG = %d \n",a122);
}
int 
f123 (void)
{
  static int a123=10;
  if( a123==10 )
   return 1;
  else
   return 0;
}

extern int a123;

int 
m3eva123 (void)
{
  if( a123==5 && f123() )
    printf("\nM3EVA123 TEST OK \n");
  else
    printf("M3EVA123 TEST NG = %d \n",a123);
}
int a123=5;
int 
f126 (void)
{
  register int a126=10;
  if( a126==10 )
   return 1;
  else
   return 0;
}

extern int a126=20;

int 
m3eva126 (void)
{
  if( a126==20 && f126() )
    printf("\nM3EVA126 TEST OK \n");
  else
    printf("M3EVA126 TEST NG = %d \n",a126);
}
int 
f127 (void)
{
  register int a127=10;
  if( a127==10 )
   return 1;
  else
   return 0;
}

extern int a127;

int 
m3eva127 (void)
{
  if( a127==20 && f127() )
    printf("\nM3EVA127 TEST OK \n");
  else
    printf("M3EVA127 TEST NG = %d \n",a127);
}
int a127=20;
int 
f130 (void)
{
  int a130;
  a130=10;
  if( a130==10 )
   return 1;
  else
   return 0;
}

int a130=20;

int 
m3eva130 (void)
{
  if( a130==20 && f130() )
    printf("\nM3EVA130 TEST OK \n");
  else
    printf("M3EVA130 TEST NG = %d \n",a130);
}
int 
f131 (void)
{
  int a131;
  a131=10;
  if( a131==10 )
   return 1;
  else
   return 0;
}

int a131;

int 
m3eva131 (void)
{
  if( a131==0 && f131() )
    printf("\nM3EVA131 TEST OK \n");
  else
    printf("M3EVA131 TEST NG = %d \n",a131);
}
int 
m3eva132 (void)
{
  int a;
  int i=0;
  a=10;
  {
    int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA132 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA132 TEST OK \n");
  else
    printf("M3EVA132 TEST NG = %d \n",a);
}
int 
m3eva133 (void)
{
  int a;
  int i=0;
  a=10;
  {
    int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA133 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA133 TEST OK \n");
  else
    printf("M3EVA133 TEST NG = %d \n",a);
}
int 
m3eva134 (void)
{
  int a;
  struct {
           int a;
           int b;
         }st;
  st.a=20;
  a=10;
  if( a==10 && st.a==20 )
    printf("\nM3EVA134 TEST OK \n");
  else
    printf("M3EVA134 TEST NG = %d \n",a);
}
int 
m3eva135 (void)
{
  int a135;
  int f135( int a135 );
  a135=10;
  if( f135(a135) )
    printf("\nM3EVA135 TEST OK \n");
  else
    printf("M3EVA135 TEST NG = %d \n",a135);
}
 int f135( int a135 )
{
  if( a135==10 )
   return 1;
  else
   return 0;
}
int 
f136 (void)
{
  int a136;
  a136=10;
  if( a136==10 )
   return 1;
  else
   return 0;
}

static int a136=20;

int 
m3eva136 (void)
{
  if( a136==20 && f136() )
    printf("\nM3EVA136 TEST OK \n");
  else
    printf("M3EVA136 TEST NG = %d \n",a136);
}
int 
f137 (void)
{
  int a137;
  a137=10;
  if( a137==10 )
   return 1;
  else
   return 0;
}

static int a137;

int 
m3eva137 (void)
{
  if( a137==0 && f137() )
    printf("\nM3EVA137 TEST OK \n");
  else
    printf("M3EVA137 TEST NG = %d \n",a137);
}
int 
m3eva138 (void)
{
  int a;
  int i=0;
  a=10;
  {
    static int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA138 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA138 TEST OK \n");
  else
    printf("M3EVA138 TEST NG = %d \n",a);
}
int 
m3eva139 (void)
{
  int a;
  int i=0;
  a=10;
  {
    static int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA139 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA139 TEST OK \n");
  else
    printf("M3EVA139 TEST NG = %d \n",a);
}
