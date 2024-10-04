
#include <stdio.h>
#include <stddef.h>
#include <setjmp.h>
#include <string.h>
#include <signal.h>
#include <time.h>
int func1cc (int x, int y);
int sub1 (void);
int func1a (int q);
int func1 (int x, int y);
int mptest38 (void);
int mptest37 (void);
int mptest36 (void);
int mptest34 (void);
int mptest33 (void);
int mptest32 (void);
int mptest31 (void);
int mptest29 (void);
int mptest28 (void);
int mptest27 (void);
int mptest26 (void);
int mptest23 (void);
int mptest22 (void);
int mptest21 (void);
int m3etrm07 (void);
int m3etrm06 (void);
int m3etrm05 (void);
int m3etrm04 (void);
int m3etrm03 (void);
int m3etrm02 (void);
int m3etrm01 (void);
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
int mptest25 (void);
int mptest30();

#if __aarch64__ || __x86_64__
#define ARCHI_64
#endif
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
    m3etrm01();
    m3etrm02();
    m3etrm03();
    m3etrm04();
    m3etrm05();
    m3etrm06();
    m3etrm07();
    mptest21();
    mptest22();
    mptest23();
    mptest25();
    mptest26();
    mptest27();
    mptest28();
    mptest29();
    mptest30();
    mptest31();
    mptest32();
    mptest33();
    mptest34();
    mptest36();
    mptest37();
    mptest38();
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
     return 0;
 }
 void 
fun1 (int a) {
     u1.b.b1=u1.b.b1-0x10;
     u1.b.b2=u1.b.b2-0x10;
     u1.b.b3=u1.b.b3-0x10;
     u1.b.b4=u1.b.b4-0x10;
 }
 void 
fun2 (int a) {
     u1.a=u1.a+0x20202020;
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
     return 0;
 }
 void 
fun1a (int a) {
     u1a.b.b1=u1a.b.b1-0x10;
     u1a.b.b2=u1a.b.b2-0x10;
     u1a.b.b3=u1a.b.b3-0x10;
     u1a.b.b4=u1a.b.b4-0x10;
 }
 void 
fun2a (int a) {
     u1a.a=u1a.a+0x20202020;
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
     return 0;
 }
 void 
fun1b (void) {
     u1b.b.b1=u1b.b.b1-0x10;
     u1b.b.b2=u1b.b.b2-0x10;
     u1b.b.b3=u1b.b.b3-0x10;
     u1b.b.b4=u1b.b.b4-0x10;
 }
 void 
fun2b (void) {
     u1b.a=u1b.a+0x20202020;
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
     return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
   return 0;
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
  return 0;
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
      { printf(" ** SIGNED CHAR TEST OK            **\n"); }
 else { printf("  ## SIGNED CHAR TEST NG            ##\n"); }
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
 return 0;
}

int exi=0;

int 
m3etrm01 (void)
{
   int i,i2,*ip,fnc(),iarry[2];
   static struct sttag { int i; char c; } st1,st2;
   enum   entag { en1, en2 } en;
   void   vfnc();

   printf("\n*** M3ETRM01 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 1;  i2 = 2;
   if ((i,i2)!=2)
       printf(" *** M3ETRM01 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-01 OK ***\n");
   st1.i = -1;  st1.c = 127;
   st2.i=(i,st1.i);
   st2.c=(i,st1.c);
   if (st2.i!=-1 || st2.c!=127)
       printf(" *** M3ETRM01 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-02 OK ***\n");

   en = en1;
   if ((i,en)!=0)
       printf(" *** M3ETRM01 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-03 OK ***\n");

   ip = &i2;
   if (*(i,ip)!=2)
       printf(" *** M3ETRM01 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-04 OK ***\n");

   if ((i,fnc())!=-1)
       printf(" *** M3ETRM01 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-05 OK ***\n");

   iarry[0] = 1;  iarry[1] = 2;
   if ((i,iarry)[1]!=2)
       printf(" *** M3ETRM01 TEST-06 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-06 OK ***\n");

   i,vfnc();
   if (exi!=100)
       printf(" *** M3ETRM01 TEST-07 ERROR ***\n");
   else
       printf(" *** M3ETRM01 TEST-07 OK ***\n");

   printf("*** M3ETRM01 TEST ENDED ***\n");
   return 0;
}

int 
fnc (void)
{
  return -1;
}

void 
vfnc (void)
{
  exi += 100;
  return ;
}

int 
m3etrm02 (void)
{
   int i,i2,*ip,**ipp,iarry[3],*iarryp[3];
   int fnc1(),fnc2(),(*fncp)(),(*fnca[2])();
   static char  c1[4]={1,2,3,4},(*cp)[2];
   static struct sttag {
       int i;
       char c;
   } st[2]={1,2,3,4},*stp;
   enum   entag { en1, en2, en3 } en[3],*enp;

   printf("\n*** M3ETRM02 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 1;  i2 = 2;
   iarry[0] = 1;  iarry[1] = 2;  iarry[2] = 3;
   ip = iarry;
   if (*(i2+ip)!=3)
       printf(" *** M3ETRM02 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-01 OK ***\n");

   if (*(ip+i)!=2)
       printf(" *** M3ETRM02 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-02 OK ***\n");
   stp = st;
   if ((i+stp)->i!=3 || (i+stp)->c!=4)
       printf(" *** M3ETRM02 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-03 OK ***\n");

   if ((stp+i)->i!=3 || (stp+i)->c!=4)
       printf(" *** M3ETRM02 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-04 OK ***\n");

   en[0] = en1;  en[1] = en2;  en[2] = en3;
   enp = en;
   if (*(i2+enp)!=2)
       printf(" *** M3ETRM02 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-05 OK ***\n");

   if (*(enp+i)!=1)
       printf(" *** M3ETRM02 TEST-06 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-06 OK ***\n");

   iarryp[0] = &iarry[0];
   iarryp[1] = &iarry[1];
   iarryp[2] = &iarry[2];
   ipp = iarryp;
   if (**(i2+ipp)!=3)
       printf(" *** M3ETRM02 TEST-07 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-07 OK ***\n");

   if (**(ipp+i)!=2)
       printf(" *** M3ETRM02 TEST-08 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-08 OK ***\n");

   fnca[0] = fnc1;
   fnca[1] = fnc2;
   fncp = fnca[0];
   if ((int)(i+(int *)fncp)!=(int)(fncp)+4)
       printf(" *** M3ETRM02 TEST-09 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-09 OK ***\n");

   if ((int)((int *)fncp+i2)!=(int)(fncp)+8)
       printf(" *** M3ETRM02 TEST-10 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-10 OK ***\n");

   cp = (char (*)[2])c1;
   if ((*(i+cp))[0]!=3 || (*(i+cp))[1]!=4)
       printf(" *** M3ETRM02 TEST-11 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-11 OK ***\n");

   if ((*(cp+i))[0]!=3 || (*(cp+i))[1]!=4)
       printf(" *** M3ETRM02 TEST-12 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-12 OK ***\n");

   if (*(i+iarry)!=2 || *(i2+iarry)!=3)
       printf(" *** M3ETRM02 TEST-13 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-13 OK ***\n");

   if (*(iarry+i)!=2 || *(iarry+i2)!=3)
       printf(" *** M3ETRM02 TEST-14 ERROR ***\n");
   else
       printf(" *** M3ETRM02 TEST-14 OK ***\n");

   printf("*** M3ETRM02 TEST ENDED ***\n");
   return 0;
}

int 
fnc1 (void)
{
  return 1;
}

int 
fnc2 (void)
{
  return 2;
}

int 
m3etrm03 (void)
{
   int i,i2,*ip,fnc3(),iarry[2];
   enum   entag { en1, en2 } en;
   void   vfnc();

   printf("\n*** M3ETRM03 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 1;  i2 = 2;
   if ((i&&i2)!=1)
       printf(" *** M3ETRM03 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-01 OK ***\n");

   en = en1;
   if ((i&&en)!=0)
       printf(" *** M3ETRM03 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-02 OK ***\n");

   ip = &i2;
   if ((i&&ip)!=1)
       printf(" *** M3ETRM03 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-03 OK ***\n");

   if ((i&&fnc3())!=0)
       printf(" *** M3ETRM03 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-04 OK ***\n");

   iarry[1]=1;
   if ((i&&iarry[1])!=1)
       printf(" *** M3ETRM03 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM03 TEST-05 OK ***\n");

   printf("*** M3ETRM03 TEST ENDED ***\n");
   return 0;
}

int 
fnc3 (void)
{
  return 0;
}

int 
m3etrm04 (void)
{
   int i,i2,*ip,fnc4(),iarry[2];
   enum   entag { en1, en2 } en;

   printf("\n*** M3ETRM04 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 0;  i2 = 1;
   if ((i||i2)!=1)
       printf(" *** M3ETRM04 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-01 OK ***\n");

   en = en1;
   if ((i||en)!=0)
       printf(" *** M3ETRM04 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-02 OK ***\n");

   ip = &i2;
   if ((i||ip)!=1)
       printf(" *** M3ETRM04 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-03 OK ***\n");

   if ((i||fnc4())!=0)
       printf(" *** M3ETRM04 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-04 OK ***\n");

   iarry[1]=0;
   if ((i2||iarry[1])!=1)
       printf(" *** M3ETRM04 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM04 TEST-05 OK ***\n");

   printf("*** M3ETRM04 TEST ENDED ***\n");
   return 0;
}

int 
fnc4 (void)
{
  return 0;
}

int 
m3etrm05 (void)
{
   int i,i2,*ip,fnc5(),iarry[2];
   enum   entag { en1, en2 } en;

   printf("\n*** M3ETRM05 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 0;  i2 = 1;
   if (!i!=1 || !i2!=0)
       printf(" *** M3ETRM05 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-01 OK ***\n");

   en = en1;
   if (!en!=1)
       printf(" *** M3ETRM05 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-02 OK ***\n");

   ip = &i2;
   if (!ip!=0)
       printf(" *** M3ETRM05 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-03 OK ***\n");

   if (!fnc5()!=0)
       printf(" *** M3ETRM05 TEST-04 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-04 OK ***\n");

   iarry[1]=1;
   if (!iarry[1]!=0)
       printf(" *** M3ETRM05 TEST-05 ERROR ***\n");
   else
       printf(" *** M3ETRM05 TEST-05 OK ***\n");

   printf("*** M3ETRM05 TEST ENDED ***\n");
   return 0;
}

int 
fnc5 (void)
{
  return -1;
}

int 
m3etrm06 (void)
{
   int i,i2,fnc6();
   enum   entag { en1, en2 } en;

   printf("\n*** M3ETRM06 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 0;  i2 = 1;
   if (~i!=-1 || ~i2!=-2)
       printf(" *** M3ETRM06 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM06 TEST-01 OK ***\n");

   en = en1;
   if (~en!=-1)
       printf(" *** M3ETRM06 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM06 TEST-02 OK ***\n");

   if (~fnc6()!=0)
       printf(" *** M3ETRM06 TEST-03 ERROR ***\n");
   else
       printf(" *** M3ETRM06 TEST-03 OK ***\n");

   printf("*** M3ETRM06 TEST ENDED ***\n");
   return 0;
}

int 
fnc6 (void)
{
  return -1;
}

int 
m3etrm07 (void)
{
   int i,i2,*ip;

   printf("\n*** M3ETRM07 ** MK3 TEST FOR FE1 ** STARTED ***\n");

   i = 1;  i2 = 2;
   i += i2;
   if (i!=3)
       printf(" *** M3ETRM07 TEST-01 ERROR ***\n");
   else
       printf(" *** M3ETRM07 TEST-01 OK ***\n");

   ip = 0;
   ip += i;
   if ((int)ip!=(3*sizeof(int)))
       printf(" *** M3ETRM07 TEST-02 ERROR ***\n");
   else
       printf(" *** M3ETRM07 TEST-02 OK ***\n");

   printf("*** M3ETRM07 TEST ENDED ***\n");
   return 0;
}
  void func1av(),func3(),func5();
  int *func2(),func4();
int 
mptest21 (void)
  {
       func1av();
       func3();
       func5();
       return 0;
  }
  void 
func1av (void)
  {
       static int *(*eee)()=func2;
       if(*(*eee)() == 10)
        printf("\n*** MPTEST21 CHECK01 OK ***\n");
       else
        printf("*** MPTEST21 CHECK01 NG ***\n");
  }
  int *
func2 (void)
  {
       static int ooo=0;
       ooo=ooo+10;
       return(&ooo);
  }
  void 
func3 (void)
  {
       int    ccc;
       static int aaa=20,(*bbb)()=func4;
       static int *ddd=&aaa;
       *ddd=*ddd+30;
       if(*ddd==50)
        printf("*** MPTEST21 CHECK02 OK ***\n");
       else
        printf("*** MPTEST21 CHECK02 NG ***\n");
       ccc=(*bbb)(&ccc);
  }
  void 
func5 (void)
  {
       void   func6();
       static int b=20,*e;
       e=&b;
       func6(e);
  }
  void 
func6 (
    int *a
)
  {
       int    c=5;
       c=c+*a;
       if(c==25)
        printf("*** MPTEST21 CHECK3 OK ***\n");
       else
        printf("*** MPTEST21 CHECK3 NG ***\n");
  }
#define proc     {
#define endproc  }
int  func4(a)
      int *a ;
proc
      *a=1 ;
      return 0;
endproc
   struct s {
         int p;
         int ii;
   } sss;
 int mptest22()
{
   int i,j;
   int func22(int i);
   struct s *ext;

   ext = &sss;
   sss.p=0;
   sss.ii=1;
   i=func22(ext->p);
   j=func22(ext->ii);
   if(i-j != 1) printf("*** MPTEST22 NG *** i=%d,j=%d \n",i,j);
   else printf("\n*** MPTEST22 OK ***\n");
   return 0;
}
 int func22(int i)
{
   if(i==0) return(1);
   if(i==1) return(0);
   return(-1);
}

#define PRINTANG printf("** NG ** m.a=%d,tt.a=%d\n",m.a,tt.a)
#define PRINTBNG printf("** NG ** m.b=%d,tt.b=%d\n",m.b,tt.b)
#define PRINTOK  printf("** OK ** \n")
 struct t {
            int a;
            int b;
          } tt;
 int 
mptest23 (void)
{
#if defined(ARCHI_64)
   struct t fun(long);
   long      p;
#else
   struct t fun(int);
   int      p;
#endif
   struct t m;

     printf("\n*** MPTEST23 START *** \n");
     tt.a=0;
     tt.b=1;
#if defined(ARCHI_64)
     p=(long)&tt;
#else
     p=(int)&tt;
#endif
     m=fun(p);     
     m.a!=tt.a ? PRINTANG : PRINTOK ;
     m.b!=tt.b ? PRINTBNG : PRINTOK ;
     printf("*** MPTEST23  END  *** \n");
     return 0;
}
struct t
#if defined(ARCHI_64)
fun (long s)
#else
fun (int s)
#endif
{
   struct t *p,st;
   p=(struct t *)s;
   s=0;
   st.a=p->a;
   st.b=p->b;
   return(st);
}
struct dmytag
{
        int       a ;
        int       b ;
        char      c ;
        char      d ;
        short int e ;
        char      x ;
} ;
        static void   fun1av(struct dmytag *x,struct dmytag *y) ;
        static int    fun2av(struct dmytag *x,struct dmytag *y) ;
int 
mptest25 (void)
{
        struct dmytag  aa ;
        struct dmytag  bb ;
        struct dmytag *cc ;
        int            aaa,bbb ;
        cc    = &aa ;
        cc->a = 1 ;
        cc->b = 2 ;
        cc->c = 3 ;
        cc->d = 0 ;
        memset(cc,0,sizeof(struct dmytag)) ;
        if (cc->a != 0) {
         printf("*** mptest25 ng *** %d \n",cc->a) ;
         }
        bb.a = cc->a++ ;
        bb.b = cc->b+2 ;
        bb.c = cc->c+3 ;
        bb.d = cc->d   ;
        aa.d = 4 ;
        aa.e = 5 ;
        fun1av(&aa,&bb) ;
        aaa = fun2av(&bb,&aa) ;
        if (aaa==strlen((char *)&bb)
        && (bbb=memcmp(&bb,&aa,sizeof(struct dmytag)))==0) {
         printf("\n*** mptest25 ok ***\n") ;
        } else {
         printf("*** mptest25 ng *** %d \n",aaa) ;
         printf("                    %d \n",bbb) ;
        }
	return 0;
}
static void 
fun1av (struct dmytag *x, struct dmytag *y)
{
        x->a=1 ;
        strcpy ((char *)x,(char *)y);
        x->a+=1 ;
}
static int 
fun2av (struct dmytag *x, struct dmytag *y)
{
        y->a=x->a ;
        memcpy (y,x,sizeof(struct dmytag));
        x->a=y->a ;
        return strlen((char *)y) ;
}
 int w26;
 struct ttt {
            int  a;
            int *b;
            char c[10];
          } t1,t2;
int 
mptest26 (void)
 {
    int func26(int);
    static int ma=0;
    static char mc[]="123456789",*ok="OK",*ng="NG";
    int i; char cc[3][3];
    struct ttt *p;
    memset(cc[0],'\0',9);
    t1.a=1;
    t1.b=&ma;
    i=*t1.b+1;
    if(!strcpy(t1.c,mc)) printf("** strcpy err **\n");
    i=*t1.b+1;
    p=&t2;
    memset(p,'\0',sizeof(struct ttt));
    i=func26(i);
    if(t1.a!=t2.a) memcpy(cc[0],ng,2);
    else           memcpy(cc[0],ok,2);
    if(t1.b!=t2.b) memcpy(cc[1],ng,2);
    else           memcpy(cc[1],ok,2);
    if(memcmp(t1.c,t2.c,10)) memcpy(cc[2],ng,2);
    else                     memcpy(cc[2],ok,2);
    for(i=0;i<3;i++){
        printf("\n*** %2s * %d ***\n",cc[i],i);
    }
    printf("***** MPTEST26 END *****\n");
    return 0;
}
 int  func26(int i)
{
   struct ttt *p1,*p2;
   int ii;
   p1=&t1;
   p2=&t2;
   i=sizeof(struct ttt);
   if(i<1) return(-1);
   w26 = p2->a;
   ii=(int)memcpy(p2,p1,i);
   w26 = p2->a;
   return(w26+ii);
}
 int    err=0;
int 
mptest27 (void)
 {
        void          func27(int *),errcheck();
        static int    b;
        int          *a;
        printf("\n******** MPTEST27 START **************\n");
        b=5;
        a=&b;
        func27(a);
        errcheck();
        printf("******** MPTEST27 END ****************\n");
	return 0;
 }
 void 
func27 (int *c)
 {
        int           d;
        d=5;
        d=d+*c;
        if(d!=10)
          err++;
 }
 void 
errcheck (void)
    {
           if(err==0)
            {
             printf("***    OK                       ***\n");
            }
           else
            {
             printf("***    NG                       ***\n");
            }
 }
   struct  t128                 {
     int   a[10][10]        ;
     int   *b,*c,d              ;
     char  e,*f                 ;
     int   a1[4]              ;
     }    p                    ;
   int  g,h,*i,func228(),b1=0,b2=50,b3=0,b4=0,z=0;
   void func128();

   int 
mptest28 (void)
    {
    printf("\n<<<<<<<< START >>>>>>>>>>>>>>\n");
    h=2 ;
    g=5 ;
    for(h=0;h<4;h++)
      p.a1[h]=h  ;
    i=p.a[0]+99  ;
    *i=g-5         ;
    for(g=0;g<10;g=g+2)
    *i=*i+p.a1[3] ;
    *i=*i+p.a1[2]  ;
    p.a [5] [5] = *i  ;
    g=sizeof(h+p.e) + 1  ;
    i=&g     ;
    p.b=i    ;
    func128()  ;
    if(p.a[2][1]==10)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG p.a[2][1] >>\n");
    return 0;
    }
    if(p.a[3][1]==10)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG p.a[3][1] >>\n");
    return 0;
    }
    if(p.a[4][1]==10)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG p.a[4][1] >>\n");
    return 0;
    }
    if(p.a[5][2]==11)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG p.a[5][2] >>\n");
    return 0;
    }
    if(p.a[5][5]==17)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG p.a[5][5] >>\n");
    return 0;
    }
    if(z==2)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG z >>>>>>\n");
    return 0;
    }
    printf("<<<<<<<< MPTEST28 END >>>>>>>\n");
    return 0;
    }

  void 
func128 (void)
        {
        int         **k,l ;
          k=&(p.b)                       ;
          l=func228()                      ;
        }

  int 
func228 (void)
    {
      static int c1=2,c2=5,c3=10,c4=1 ;
      b1=b1+2  ;
      b2=b2-10  ;
      do   {
         p.a[c1] [c4]=c3  ;
         c1++  ;
           }
      while (c1<c2)  ;
      if(b1>=5 && b2<=20)
        {
           return (7);
        }
      else
        {
           c4++ ;
           c3++ ;
           func228() ;
           z=z+1;
           printf("<<<<<<<< FUNC2 RECURSIVE >>>>\n");
           return (7);
        }
    }
 int id01;
 char cd01;
 short int sd01;
 unsigned int uid01;
 unsigned char ucd01;
 unsigned short int usd01;
 float fd01;
 double dd01;
 int 
mptest29 (void)
 {
    void func01(),func02(),func03(),func04(),func05(),func06();
    void func07(),func08();
    func01();
    func02();
    func03();
    func04();
    func05();
    func06();
    func07();
    func08();
    return 0;
 }
 void 
func01 (void)
 {
      int  ia01,ia02,ia03,ia04,ia05;
      void func011(int ia01,int ia02,int ia03,int ia04,int ia05);
      ia01=1;
      ia02=2;
      ia03=3;
      ia04=4;
      ia05=5;
      func011(ia01,ia02,ia03,ia04,ia05);
      if(id01==1)
        printf("\n******* FUNC01 IA01            OK ****\n");
      else
        printf("******* FUNC01 IA01            NG ****\n");
      if(ia02==2)
        printf("******* FUNC01 IA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 IA05 REAL ARGUM NG ****\n");
      if(ia03==3)
        printf("******* FUNC01 IA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 IA03 REAL ARGUM NG ****\n");
      if(ia05==5)
        printf("******* FUNC01 IA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 IA05 REAL ARGUM NG ****\n");
 }
 void func011(int ib01,int ib02,int ib03,int ib04,int ib05)
 {
      void func0111(int ib04);
      int ic01,ic02;
      ic01=ib03;
      ib05=10;
      ib02=ib01+ic01;
      func0111(ib04);
      ib03=ic01+2;
      ic02=ib05;
      id01=ib01;
      if(ic02==10)
        printf("******* FUNC011 IB05 CHECK     OK ****\n");
      else
        printf("******* FUNC011 IB05 CHECK     NG ****\n");
 }
 void func0111(int ie04)
 {
      ie04=ie04+10;
      return;
 }
 void 
func02 (void)
 {
      char ca01,ca02,ca03,ca04,ca05;
      void func021(char ca01,char ca02,char ca03,char ca04,char ca05);
      ca01='a';
      ca02='b';
      ca03='c';
      ca04='d';
      ca05='e';
      func021(ca01,ca02,ca03,ca04,ca05);
      if(cd01=='a')
        printf("******* FUNC02 CA01            OK ****\n");
      else
        printf("******* FUNC02 CA01            NG ****\n");
      if(ca02=='b')
        printf("******* FUNC02 CA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC02 CA02 REAL ARGUM NG ****\n");
      if(ca03=='c')
        printf("******* FUNC02 CA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC02 CA03 REAL ARGUM NG ****\n");
      if(ca05=='e')
        printf("******* FUNC02 CA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC02 CA05 REAL ARGUM NG ****\n");
 }
 void func021(char cb01,char cb02,char cb03,char cb04,char cb05)
 {
      void func0211(char cb04);
      char cc01;
      cb05=cb03;
      cb02=cb01;
      func0211(cb04);
      cb03='g';
      cc01=cb05;
      cd01=cb01;
      if(cc01=='c')
        printf("******* FUNC021 CB05 CHECK     OK ****\n");
      else
        printf("******* FUNC021 CB05 CHECK     NG ****\n");
 }
 void func0211(char ce04)
 {
      ce04='h';
      return;
 }
 void 
func03 (void)
 {
      short int  sa01,sa02,sa03,sa04,sa05;
      void func031(short int sa01,short int sa02,short int sa03,
                   short int sa04,short int sa05);
      sa01=1;
      sa02=2;
      sa03=3;
      sa04=4;
      sa05=5;
      func031(sa01,sa02,sa03,sa04,sa05);
      if(sd01==1)
        printf("******* FUNC03 SA01            OK ****\n");
      else
        printf("******* FUNC03 SA01            NG ****\n");
      if(sa02==2)
        printf("******* FUNC03 SA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC03 SA05 REAL ARGUM NG ****\n");
      if(sa03==3)
        printf("******* FUNC01 SA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 SA03 REAL ARGUM NG ****\n");
      if(sa05==5)
        printf("******* FUNC01 SA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 SA05 REAL ARGUM NG ****\n");
 }
 void func031(short int sb01,short int sb02,short int sb03,
              short int sb04,short int sb05)
 {
      void func0311(short int sb04);
      short int sc01,sc02;
      sc01=sb03;
      sb05=10;
      sb02=sb01+sc01;
      func0311(sb04);
      sb03=sc01+2;
      sc02=sb05;
      sd01=sb01;
      if(sc02==10)
        printf("******* FUNC031 SB05 CHECK     OK ****\n");
      else
        printf("******* FUNC031 SB05 CHECK     NG ****\n");
 }
 void func0311(short int se04)
 {
      se04=se04+10;
      return;
 }
 void 
func04 (void)
 {
      unsigned int  uia01,uia02,uia03,uia04,uia05;
      void func041(unsigned int uia01,unsigned int uia02,
       unsigned int uia03,unsigned int uia04,unsigned int uia05);
      uia01=1;
      uia02=2;
      uia03=3;
      uia04=4;
      uia05=5;
      func041(uia01,uia02,uia03,uia04,uia05);
      if(uid01==1)
        printf("******* FUNC04 UIA01           OK ****\n");
      else
        printf("******* FUNC04 UIA01           NG ****\n");
      if(uia02==2)
        printf("******* FUNC04 UIA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC04 UIA05 REAL ARGUM NG ****\n");
      if(uia03==3)
        printf("******* FUNC04 UIA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC04 UIA03 REAL ARGUM NG ****\n");
      if(uia05==5)
        printf("******* FUNC04 UIA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 UIA05 REAL ARGUM NG ****\n");
 }
 void func041(unsigned int uib01,unsigned int uib02,
         unsigned int uib03,unsigned int uib04,unsigned int uib05)
 {
      void func0411(unsigned int uib04);
      unsigned int uic01,uic02;
      uic01=uib03;
      uib05=10;
      uib02=uib01+uic01;
      func0411(uib04);
      uib03=uic01+2;
      uic02=uib05;
      uid01=uib01;
      if(uic02==10)
        printf("******* FUNC041 UIB05 CHECK    OK ****\n");
      else
        printf("******* FUNC041 UIB05 CHECK    NG ****\n");
 }
 void func0411(unsigned int uie04)
 {
      uie04=uie04+10;
      return;
 }
 void 
func05 (void)
 {
      unsigned char uca01,uca02,uca03,uca04,uca05;
      void func051(unsigned char uca01,unsigned char uca02,
      unsigned char uca03,unsigned char uca04,unsigned char uca05);
      uca01='a';
      uca02='b';
      uca03='c';
      uca04='d';
      uca05='e';
      func051(uca01,uca02,uca03,uca04,uca05);
      if(ucd01=='a')
        printf("******* FUNC05 UCA01           OK ****\n");
      else
        printf("******* FUNC05 UCA01           NG ****\n");
      if(uca02=='b')
        printf("******* FUNC05 UCA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC05 UCA02 REAL ARGUM NG ****\n");
      if(uca03=='c')
        printf("******* FUNC05 UCA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC05 UCA03 REAL ARGUM NG ****\n");
      if(uca05=='e')
        printf("******* FUNC05 UCA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC05 UCA05 REAL ARGUM NG ****\n");
 }
 void func051(unsigned char ucb01,unsigned char ucb02,
      unsigned char ucb03,unsigned char ucb04,unsigned char ucb05)
 {
      void func0511(unsigned char ucb04);
      unsigned char ucc01;
      ucb05=ucb03;
      ucb02=ucb01;
      func0511(ucb04);
      ucb03='g';
      ucc01=ucb05;
      ucd01=ucb01;
      if(ucc01=='c')
        printf("******* FUNC051 UCB05 CHECK    OK ****\n");
      else
        printf("******* FUNC051 UCB05 CHECK    NG ****\n");
 }
 void func0511(unsigned char uce04)
 {
      uce04='h';
      return;
 }
 void 
func06 (void)
 {
      unsigned short int usa01,usa02,usa03,usa04,usa05;
      void func061(unsigned short int usa01,unsigned short int usa02,
      unsigned short int usa03,unsigned short int sa04,
      unsigned short int usa05);
      usa01=1;
      usa02=2;
      usa03=3;
      usa04=4;
      usa05=5;
      func061(usa01,usa02,usa03,usa04,usa05);
      if(usd01==1)
        printf("******* FUNC06 USA01           OK ****\n");
      else
        printf("******* FUNC06 USA01           NG ****\n");
      if(usa02==2)
        printf("******* FUNC06 USA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC06 USA05 REAL ARGUM NG ****\n");
      if(usa03==3)
        printf("******* FUNC06 USA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC06 USA03 REAL ARGUM NG ****\n");
      if(usa05==5)
        printf("******* FUNC06 USA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC01 USA05 REAL ARGUM NG ****\n");
 }
 void func061(unsigned short int usb01,unsigned short int usb02,
      unsigned short int usb03,unsigned short int sb04,
      unsigned short int usb05)
 {
      void func0611(unsigned short int);
      unsigned short int usb04;
      unsigned short int usc01,usc02;
      usc01=usb03;
      usb05=10;
      usb02=usb01+usc01;
      func0611(usb04);
      usb03=usc01+2;
      usc02=usb05;
      usd01=usb01;
      if(usc02==10)
        printf("******* FUNC061 USB05 CHECK    OK ****\n");
      else
        printf("******* FUNC061 USB05 CHECK    NG ****\n");
 }
 void func0611(unsigned short int use04)
 {
      use04=use04+10;
      return;
 }
 void 
func07 (void)
 {
      float fa01,fa02,fa03,fa04,fa05;
      void func071(float fa01,float fa02,float fa03,
                   float fa04,float fa05);
      fa01=1;
      fa02=2;
      fa03=3;
      fa04=4;
      fa05=5;
      func071(fa01,fa02,fa03,fa04,fa05);
      if(fd01==1)
        printf("******* FUNC07 FA01            OK ****\n");
      else
        printf("******* FUNC07 FA01            NG*****\n");
      if(fa02==2)
        printf("******* FUNC07 FA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC07 FA05 REAL ARGUM NG ****\n");
      if(fa03==3)
        printf("******* FUNC07 FA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC07 FA03 REAL ARGUM NG ****\n");
      if(fa05==5)
        printf("******* FUNC07 FA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC07 FA05 REAL ARGUM NG ****\n");
 }
 void func071(float fb01,float fb02,float fb03,float fb04,float fb05)
 {
      void func0711(float fb04);
      float fc01,fc02;
      fc01=fb03;
      fb05=10;
      fb02=fb01+fc01;
      func0711(fb04);
      fb03=fc01+2;
      fc02=fb05;
      fd01=fb01;
      if(fc02==10)
        printf("******* FUNC071 FB05 CHECK     OK ****\n");
      else
        printf("******* FUNC071 FB05 CHECK     NG ****\n");
 }
 void func0711(float fe04)
 {
      fe04=fe04+10;
      return;
 }
 void 
func08 (void)
 {
      double da01,da02,da03,da04,da05;
      void func081(double da01,double da02,double da03,
                   double da04,double da05);
      da01=1;
      da02=2;
      da03=3;
      da04=4;
      da05=5;
      func081(da01,da02,da03,da04,da05);
      if(dd01==1)
        printf("******* FUNC08 DA01            OK ****\n");
      else
        printf("******* FUNC08 DA01            NG ****\n");
      if(da02==2)
        printf("******* FUNC08 DA02 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC08 DA05 REAL ARGUM NG ****\n");
      if(da03==3)
        printf("******* FUNC08 DA03 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC08 DA03 REAL ARGUM NG ****\n");
      if(da05==5)
        printf("******* FUNC08 DA05 REAL ARGUM OK ****\n");
      else
        printf("******* FUNC08 DA05 REAL ARGUM NG ****\n");
 }
 void func081(double db01,double db02,double db03,
                   double db04,double db05)
 {
      void func0811(double db04);
      double dc01,dc02;
      dc01=db03;
      db05=10;
      db02=db01+dc01;
      func0811(db04);
      db03=dc01+2;
      dc02=db05;
      dd01=db01;
      if(dc02==10)
        printf("******* FUNC081 DB05 CHECK     OK ****\n");
      else
        printf("******* FUNC081 DB05 CHECK     NG ****\n");
 }
 void func0811(double de04)
 {
      de04=de04+10;
      return;
 }
#define proc    {
#define endproc }
#define then    {
#define endif   }
#define _ok      "ok"
#define _ng_ref  "ref ng"
#define _ng_def  "def ng"
#define _ng_dbr  "dbr ng"
#define _ng_rbd  "rbd ng"
#define _ng_arg  "arg ng"
#define _val_ref 1
#define _val_def 2
#define _val_dbr 3
#define _val_rbd 4
#define _val_arg 5
static char *i2chk() ;
static char *i4chk() ;
static char *u2chk() ;
static char *u4chk() ;
static char *rschk() ;
static char *rdchk() ;
static char *chchk() ;
int mptest30() proc
      printf("*** mptest30 i2 %s ***\n",i2chk()) ;
      printf("*** mptest30 i4 %s ***\n",i4chk()) ;
      printf("*** mptest30 u2 %s ***\n",u2chk()) ;
      printf("*** mptest30 u4 %s ***\n",u4chk()) ;
      printf("*** mptest30 rs %s ***\n",rschk()) ;
      printf("*** mptest30 rd %s ***\n",rdchk()) ;
      printf("*** mptest30 ch %s ***\n",chchk()) ;
      return 0;
      endproc
static short int i2ref(short int i2dmy) ;
static short int i2def(short int i2dmy) ;
static short int i2dbr(short int i2dmy) ;
static short int i2rbd(short int i2dmy) ;
static short int i2arg(short int i2dmy) ;
static char *i2chk() proc
      short int i2refval,i2refans;
      short int i2defval,i2defans;
      short int i2dbrval,i2dbrans;
      short int i2rbdval,i2rbdans;
      short int i2argval,i2argans;
      i2refval=_val_ref ;i2refans=i2ref(i2refval) ;
      if (i2refans != i2refval) return(_ng_ref) ;
      i2defval=_val_def ;i2defans=i2def(i2defval) ;
      if (i2defans != i2defval) return(_ng_def) ;
      i2dbrval=_val_dbr ;i2dbrans=i2dbr(i2dbrval) ;
      if (i2dbrans != i2dbrval) return(_ng_dbr) ;
      i2rbdval=_val_rbd ;i2rbdans=i2rbd(i2rbdval) ;
      if (i2rbdans != i2rbdval) return(_ng_rbd) ;
      i2argval=_val_arg ;i2argans=i2arg(i2argval) ;
      if (i2argans != i2argval) return(_ng_arg) ;
      return(_ok) ;
      endproc
static short int i2ref(short int i2dmy)
      proc
      return(i2dmy) ;
      endproc
static short int i2def(short int i2dmy)
      proc
      short int i2wrk ;
      i2wrk=_val_def ;
      i2dmy=-i2wrk ;
      return(i2wrk) ;
      endproc
static short int i2dbr(short int i2dmy)
      proc
      short int i2wrk ;
      i2wrk=_val_dbr ;
      i2dmy=i2wrk ;
      i2dmy+=1 ;
      return(i2wrk) ;
      endproc
static short int i2rbd(short int i2dmy)
      proc
      short int i2wrk ;
      i2wrk=i2dmy ;
      i2dmy+=1 ;
      return(i2wrk) ;
      endproc
static short int i2arg(short int i2dmy)
      proc
      printf(" i2 value %d \n",i2dmy) ;
      return(i2dmy) ;
      endproc
static int  i4ref(int i4dmy) ;
static int  i4def(int i4dmy) ;
static int  i4dbr(int i4dmy) ;
static int  i4rbd(int i4dmy) ;
static int  i4arg(int i4dmy) ;
static char *i4chk() proc
      int i4refval,i4refans;
      int i4defval,i4defans;
      int i4dbrval,i4dbrans;
      int i4rbdval,i4rbdans;
      int i4argval,i4argans;
      i4refval=_val_ref ;i4refans=i4ref(i4refval) ;
      if (i4refans != i4refval) return(_ng_ref) ;
      i4defval=_val_def ;i4defans=i4def(i4defval) ;
      if (i4defans != i4defval) return(_ng_def) ;
      i4dbrval=_val_dbr ;i4dbrans=i4dbr(i4dbrval) ;
      if (i4dbrans != i4dbrval) return(_ng_dbr) ;
      i4rbdval=_val_rbd ;i4rbdans=i4rbd(i4rbdval) ;
      if (i4rbdans != i4rbdval) return(_ng_rbd) ;
      i4argval=_val_arg ;i4argans=i4arg(i4argval) ;
      if (i4argans != i4argval) return(_ng_arg) ;
      return(_ok) ;
      endproc
static int i4ref(int i4dmy)
      proc
      return(i4dmy) ;
      endproc
static int i4def(int i4dmy)
      proc
      int i4wrk ;
      i4wrk=_val_def ;
      i4dmy=-i4wrk ;
      return(i4wrk) ;
      endproc
static int i4dbr(int i4dmy)
      proc
      int i4wrk ;
      i4wrk=_val_dbr ;
      i4dmy=i4wrk ;
      i4dmy+=1 ;
      return(i4wrk) ;
      endproc
static int i4rbd(int i4dmy)
      proc
      int i4wrk ;
      i4wrk=i4dmy ;
      i4dmy+=1 ;
      return(i4wrk) ;
      endproc
static int i4arg(int i4dmy)
      proc
      printf(" i4 value %d \n",i4dmy) ;
      return(i4dmy) ;
      endproc
static unsigned short int u2ref(unsigned short int u2dmy) ;
static unsigned short int u2def(unsigned short int u2dmy) ;
static unsigned short int u2dbr(unsigned short int u2dmy) ;
static unsigned short int u2rbd(unsigned short int u2dmy) ;
static unsigned short int u2arg(unsigned short int u2dmy) ;
static char *u2chk() proc
      unsigned short int u2refval,u2refans;
      unsigned short int u2defval,u2defans;
      unsigned short int u2dbrval,u2dbrans;
      unsigned short int u2rbdval,u2rbdans;
      unsigned short int u2argval,u2argans;
      u2refval=_val_ref ;u2refans=u2ref(u2refval) ;
      if (u2refans != u2refval) return(_ng_ref) ;
      u2defval=_val_def ;u2defans=u2def(u2defval) ;
      if (u2defans != u2defval) return(_ng_def) ;
      u2dbrval=_val_dbr ;u2dbrans=u2dbr(u2dbrval) ;
      if (u2dbrans != u2dbrval) return(_ng_dbr) ;
      u2rbdval=_val_rbd ;u2rbdans=u2rbd(u2rbdval) ;
      if (u2rbdans != u2rbdval) return(_ng_rbd) ;
      u2argval=_val_arg ;u2argans=u2arg(u2argval) ;
      if (u2argans != u2argval) return(_ng_arg) ;
      return(_ok) ;
      endproc
static unsigned short int u2ref(unsigned short int u2dmy)
      proc
      return(u2dmy) ;
      endproc
static unsigned short int u2def(unsigned short int u2dmy)
      proc
      unsigned short int u2wrk ;
      u2wrk=_val_def ;
      u2dmy=-u2wrk ;
      return(u2wrk) ;
      endproc
static unsigned short int u2dbr(unsigned short int u2dmy)
      proc
      unsigned short int u2wrk ;
      u2wrk=_val_dbr ;
      u2dmy=u2wrk ;
      u2dmy+=1 ;
      return(u2wrk) ;
      endproc
static unsigned short int u2rbd(unsigned short int u2dmy)
      proc
      unsigned short int u2wrk ;
      u2wrk=u2dmy ;
      u2dmy+=1 ;
      return(u2wrk) ;
      endproc
static unsigned short int u2arg(unsigned short int u2dmy)
      proc
      printf(" u2 value %d \n",u2dmy) ;
      return(u2dmy) ;
      endproc
static unsigned int u4ref(unsigned int u4dmy) ;
static unsigned int u4def(unsigned int u4dmy) ;
static unsigned int u4dbr(unsigned int u4dmy) ;
static unsigned int u4rbd(unsigned int u4dmy) ;
static unsigned int u4arg(unsigned int u4dmy) ;
static char *u4chk() proc
      unsigned int u4refval,u4refans;
      unsigned int u4defval,u4defans;
      unsigned int u4dbrval,u4dbrans;
      unsigned int u4rbdval,u4rbdans;
      unsigned int u4argval,u4argans;
      u4refval=_val_ref ;u4refans=u4ref(u4refval) ;
      if (u4refans != u4refval) return(_ng_ref) ;
      u4defval=_val_def ;u4defans=u4def(u4defval) ;
      if (u4defans != u4defval) return(_ng_def) ;
      u4dbrval=_val_dbr ;u4dbrans=u4dbr(u4dbrval) ;
      if (u4dbrans != u4dbrval) return(_ng_dbr) ;
      u4rbdval=_val_rbd ;u4rbdans=u4rbd(u4rbdval) ;
      if (u4rbdans != u4rbdval) return(_ng_rbd) ;
      u4argval=_val_arg ;u4argans=u4arg(u4argval) ;
      if (u4argans != u4argval) return(_ng_arg) ;
      return(_ok) ;
      endproc
static unsigned int u4ref(unsigned int u4dmy)
      proc
      return(u4dmy) ;
      endproc
static unsigned int u4def(unsigned int u4dmy)
      proc
      unsigned int u4wrk ;
      u4wrk=_val_def ;
      u4dmy=-u4wrk ;
      return(u4wrk) ;
      endproc
static unsigned int u4dbr(unsigned int u4dmy)
      proc
      unsigned int u4wrk ;
      u4wrk=_val_dbr ;
      u4dmy=u4wrk ;
      u4dmy+=1 ;
      return(u4wrk) ;
      endproc
static unsigned int u4rbd(unsigned int u4dmy)
      proc
      unsigned int u4wrk ;
      u4wrk=u4dmy ;
      u4dmy+=1 ;
      return(u4wrk) ;
      endproc
static unsigned int u4arg(unsigned int u4dmy)
      proc
      printf(" u4 value %d \n",u4dmy) ;
      return(u4dmy) ;
      endproc
static float rsref(float rsdmy) ;
static float rsdef(float rsdmy) ;
static float rsdbr(float rsdmy) ;
static float rsrbd(float rsdmy) ;
static float rsarg(float rsdmy) ;
static char *rschk() proc
      float rsrefval,rsrefans;
      float rsdefval,rsdefans;
      float rsdbrval,rsdbrans;
      float rsrbdval,rsrbdans;
      float rsargval,rsargans;
      rsrefval=_val_ref ;rsrefans=rsref(rsrefval) ;
      if (rsrefans != rsrefval) return(_ng_ref) ;
      rsdefval=_val_def ;rsdefans=rsdef(rsdefval) ;
      if (rsdefans != rsdefval) return(_ng_def) ;
      rsdbrval=_val_dbr ;rsdbrans=rsdbr(rsdbrval) ;
      if (rsdbrans != rsdbrval) return(_ng_dbr) ;
      rsrbdval=_val_rbd ;rsrbdans=rsrbd(rsrbdval) ;
      if (rsrbdans != rsrbdval) return(_ng_rbd) ;
      rsargval=_val_arg ;rsargans=rsarg(rsargval) ;
      if (rsargans != rsargval) return(_ng_arg) ;
      return(_ok) ;
      endproc
static float rsref(float rsdmy)
      proc
      return(rsdmy) ;
      endproc
static float rsdef(float rsdmy)
      proc
      float rswrk ;
      rswrk=_val_def ;
      rsdmy=-rswrk ;
      return(rswrk) ;
      endproc
static float rsdbr(float rsdmy)
      proc
      float rswrk ;
      rswrk=_val_dbr ;
      rsdmy=rswrk ;
      rsdmy+=1 ;
      return(rswrk) ;
      endproc
static float rsrbd(float rsdmy)
      proc
      float rswrk ;
      rswrk=rsdmy ;
      rsdmy+=1 ;
      return(rswrk) ;
      endproc
static float rsarg(float rsdmy)
      proc
      printf(" rs value %f \n",rsdmy) ;
      return(rsdmy) ;
      endproc
static double rdref(double rddmy) ;
static double rddef(double rddmy) ;
static double rddbr(double rddmy) ;
static double rdrbd(double rddmy) ;
static double rdarg(double rddmy) ;
static char *rdchk() proc
      double rdrefval,rdrefans;
      double rddefval,rddefans;
      double rddbrval,rddbrans;
      double rdrbdval,rdrbdans;
      double rdargval,rdargans;
      rdrefval=_val_ref ;rdrefans=rdref(rdrefval) ;
      if (rdrefans != rdrefval) return(_ng_ref) ;
      rddefval=_val_def ;rddefans=rddef(rddefval) ;
      if (rddefans != rddefval) return(_ng_def) ;
      rddbrval=_val_dbr ;rddbrans=rddbr(rddbrval) ;
      if (rddbrans != rddbrval) return(_ng_dbr) ;
      rdrbdval=_val_rbd ;rdrbdans=rdrbd(rdrbdval) ;
      if (rdrbdans != rdrbdval) return(_ng_rbd) ;
      rdargval=_val_arg ;rdargans=rdarg(rdargval) ;
      if (rdargans != rdargval) return(_ng_arg) ;
      return(_ok) ;
      endproc
static double rdref(double rddmy)
      proc
      return(rddmy) ;
      endproc
static double rddef(double rddmy)
      proc
      double rdwrk ;
      rdwrk=_val_def ;
      rddmy=-rdwrk ;
      return(rdwrk) ;
      endproc
static double rddbr(double rddmy)
      proc
      double rdwrk ;
      rdwrk=_val_dbr ;
      rddmy=rdwrk ;
      rddmy+=1 ;
      return(rdwrk) ;
      endproc
static double rdrbd(double rddmy)
      proc
      double rdwrk ;
      rdwrk=rddmy ;
      rddmy+=1 ;
      return(rdwrk) ;
      endproc
static double rdarg(double rddmy)
      proc
      printf(" rd value %f \n",rddmy) ;
      return(rddmy) ;
      endproc
static char chref(char chdmy) ;
static char chdef(char chdmy) ;
static char chdbr(char chdmy) ;
static char chrbd(char chdmy) ;
static char charg(char chdmy) ;
static char *chchk() proc
      char chrefval,chrefans;
      char chdefval,chdefans;
      char chdbrval,chdbrans;
      char chrbdval,chrbdans;
      char chargval,chargans;
      chrefval=_val_ref ;chrefans=chref(chrefval) ;
      if (chrefans != chrefval) return(_ng_ref) ;
      chdefval=_val_def ;chdefans=chdef(chdefval) ;
      if (chdefans != chdefval) return(_ng_def) ;
      chdbrval=_val_dbr ;chdbrans=chdbr(chdbrval) ;
      if (chdbrans != chdbrval) return(_ng_dbr) ;
      chrbdval=_val_rbd ;chrbdans=chrbd(chrbdval) ;
      if (chrbdans != chrbdval) return(_ng_rbd) ;
      chargval=_val_arg ;chargans=charg(chargval) ;
      if (chargans != chargval) return(_ng_arg) ;
      return(_ok) ;
      endproc
static char chref(char chdmy)
      proc
      return(chdmy) ;
      endproc
static char chdef(char chdmy)
      proc
      char chwrk ;
      chwrk=_val_def ;
      chdmy=-chwrk ;
      return(chwrk) ;
      endproc
static char chdbr(char chdmy)
      proc
      char chwrk ;
      chwrk=_val_dbr ;
      chdmy=chwrk ;
      chdmy+=1 ;
      return(chwrk) ;
      endproc
static char chrbd(char chdmy)
      proc
      char chwrk ;
      chwrk=chdmy ;
      chdmy+=1 ;
      return(chwrk) ;
      endproc
static char charg(char chdmy)
      proc
      printf(" ch value %d \n",chdmy) ;
      return(chdmy) ;
      endproc 

int subfun (int *p1, int *p2)
{
    int a;
    a=10;
    if(p1!=0){
      a=*p1;
    } else {
      *p2=a;
    }
    return(a);
}
int 
mptest31 (void)
{
   static int i,j;
          int *mp,*mp2,k;
   i=1;
   j=5;
   mp=&i;
   mp2=&j;
   if((k=subfun(mp,mp2))!=1)
     printf("*** MPTEST31 NG *** K=%d \n",k);
   else
     printf("*** MPTEST31 OK ***\n");
   if((k=subfun(0,mp2))!=10)
     printf("*** MPTEST31 NG *** K=%d \n",k);
   else
     printf("*** MPTEST31 OK ***\n");
   return 0;
}

int 
subfun32 (int *p1, int *p2, int *i3)
{
    if(p1!=0){
      *i3=*p1+1;
      *p1=*i3+3;
    } else {
      *p2=*i3;
      return(*p2);
    }
    *p2=*p1+1;
    return(*p2);
}
int 
mptest32 (void)
{
   static int i,j;
          int *mp,*mp2,k;
   i=1;
   j=5;
   mp=&i;
   mp2=&j;
   if((k=subfun32(mp,mp2,&i))!=6)
     printf("*** MPTEST32 NG *** K=%d \n",k);
   else
     printf("*** MPTEST32 OK ***\n");
   if((k=subfun32(0,mp2,&j))!=6)
     printf("*** MPTEST32 NG *** K=%d \n",k);
   else
     printf("*** MPTEST32 OK ***\n");
   return 0;
}

int 
mptest33 (void)
 {
    int a,b,c,d,e=0,f=0;
    a=c=d=10;
    b=a+5;
    goto l11;
l00:
    c=0;
    d=1;
    e=c+d;
    goto l02;
l01:
    c++;
    e=++d+c;
    goto l01;
l02:
    a++;
    if(a==0) goto l02;
l03:
    b++;
l04:
    goto l00;
l11:
    if(a!=10){printf("*** a  NG ** a=%d ***\n",a);f++;}
    if(b!=15){printf("*** b  NG ** b=%d ***\n",b);f++;}
    if(c!=10){printf("*** c  NG ** c=%d ***\n",c);f++;}
    if(d!=10){printf("*** d  NG ** d=%d ***\n",d);f++;}
    if(e!=0) {printf("*** e  NG ** e=%d ***\n",e);f++;}
    if(f==0) printf("*** MPTEST33  OK ***\n");
    else     printf("*** MPTEST33  NG ***\n");
    return 0;
}

int 
mptest34 (void)
{
   int  func901(int);
   int  func902(int);

   int a1,a2,a3,a4,a5;
   a1=a2=2;
   a4 = func901(a1);
   a5 = func902(a2);
   a3=a4-a5;
   if(a3==0)
     printf("***** MPTEST34 OK *****\n");
   else
     printf("***** MPTEST34 NG ***** a3=%d \n",a3);
   return 0;
}

 int func901(int i)
{
   static int rv=0;
   static int s=0;
   s++;
   if(i>=1) rv=func901(--i);
   return(s);
}

 int func902(int i)
{
  int func903(int);
  int rv02;

  rv02=func903(i);
  if(rv02==3) return(rv02);
  return(0);
}

 int func903(int i)
{
  int func904(int);
  int rv03;

  if(i<3){
    rv03 = func904(++i);
    return(rv03);
  }
  return(i);
}

 int func904(int i)
{
  int func902(int);
  int rv04;

  rv04=func902(i);
  return(rv04);
}

int 
mptest36 (void)
{ int func36();
   if(func36()!=0) printf("***** MPTEST36 NG *****\n");
   else          printf("***** MPTEST36 OK *****\n");
   return 0;
}
int 
func36 (void)
{
  int f_fr(int),f_wl(int),f_if(int),f_rn(int),f_dw(int);
  int i1,i2,i3,i4;
  int r1,r3,r4,r5;

     i1=1;i2=2;i3=3;i4=4;
     for(r1=f_fr(i1);f_fr(i2);f_fr(i3))
        r4=f_fr(i4);
     while(f_wl(i1))
        f_wl(i2);
     do { r5=f_dw(i1); }
     while(f_dw(i2));
     if(f_if(i1)!=1) printf("*** MPTEST36 NG ***\n");
     else if(f_if(i2)!=2) printf("*** MPTEST36 NG ***\n");
     else r3=f_if(i3);
     return(f_rn(r3));
}
int 
f_fr (int i)
{
   switch(i){ case 1 : return(1);
               case 2 : return(0);
               default: printf(
                        "*** MPTEST36 NG > IN F_FR *** = %d\n",i);
                        return(i);
   }
}
int 
f_wl (int i)
{ switch(i){ case 1 : return(0);
               default: printf("*** MPTEST36 NG > IN F_WL ***\n");
                        return(i);
            }
}
int 
f_dw (int i)
{ switch(i){ case 1 : return(1);
               case 2 : return(0);
               default: printf("*** MPTEST36 NG > IN F_DW ***\n");
                        return(i);
            }
}
int 
f_if (int i)
{ switch(i){ case 1 : return(1);
               case 2 : return(2);
               case 3 : return(3);
               default: printf("*** MPTEST36 NG > IN F_IF ***\n");
                        return(i);
            }
}
int 
f_rn (int i)
{ switch(i){ case 3 : return(0);
               default: printf("*** MPTEST36 NG > IN F_RN ***\n");
                        return(i);
            }
}
int 
mptest37 (void)
 {
   int tbl01[8][8],tbl02[8][8],tbl03[8][8];
   int tbl04[8][8],tbl05[8][8],tbl06[8][8];
   int tbl07[8][8];
   int count,a1,a2,a3,a4,a5,a6,a7,a8,a9,b1,b2,b3;
   long int time;
   printf("      \n");
   printf("    MPTEST37 START \n");
   clock();
   count=0;


   for(a2=0;a2<8;a2++)
    for(a1=1;a1<8;a1++)
     tbl01[a1][a2]=0;


   for(a1=0;a1<8;a1++) {                
    for(a2=1;a2<8;a2++)
     tbl01[a2][a1]=1;

    for(a2=1;a2<8;a2++) {
     b1=0+a2;
     b2=a1+a2;
     b3=a1-a2;
     if(b2<=7) tbl01[b1][b2]=1;
     if(b3>=0) tbl01[b1][b3]=1;
    }

    for(a3=0;a3<8;a3++)
     for(a2=1;a2<8;a2++)
      tbl02[a2][a3]=tbl01[a2][a3];


    for(a2=0;a2<8;a2++) {               
     if(tbl02[1][a2]==0) {
      for(a3=2;a3<8;a3++)
       tbl02[a3][a2]=1;

      for(a3=1;a3<7;a3++) {
       b1=1+a3;
       b2=a2+a3;
       b3=a2-a3;
       if(b2<=7)tbl02[b1][b2]=1;
       if(b3>=0)tbl02[b1][b3]=1;
      }

      for(a4=0;a4<8;a4++)
       for(a3=2;a3<8;a3++)
        tbl03[a3][a4]=tbl02[a3][a4];


      for(a3=0;a3<8;a3++) {             
       if(tbl03[2][a3]==0) {
        for(a4=3;a4<8;a4++)
         tbl03[a4][a3]=1;
        for(a4=1;a4<6;a4++) {
         b1=2+a4;
         b2=a3+a4;
         b3=a3-a4;
         if(b2<=7)tbl03[b1][b2]=1;
         if(b3>=0)tbl03[b1][b3]=1;
        }

       for(a5=0;a5<8;a5++)
        for(a4=3;a4<8;a4++)
         tbl04[a4][a5]=tbl03[a4][a5];


       for(a4=0;a4<8;a4++) {            
        if(tbl04[3][a4]==0) {
         for(a5=4;a5<8;a5++)
          tbl04[a5][a4]=1;
         for(a5=1;a5<5;a5++) {
          b1=3+a5;
          b2=a4+a5;
          b3=a4-a5;
          if(b2<=7)tbl04[b1][b2]=1;
          if(b3>=0)tbl04[b1][b3]=1;
         }

         for(a6=0;a6<8;a6++)
          for(a5=4;a5<8;a5++)
           tbl05[a5][a6]=tbl04[a5][a6];


         for(a5=0;a5<8;a5++) {          
          if(tbl05[4][a5]==0) {
           for(a6=5;a6<8;a6++)
            tbl05[a6][a5]=1;
           for(a6=1;a6<4;a6++) {
            b1=4+a6;
            b2=a5+a6;
            b3=a5-a6;
            if(b2<=7)tbl05[b1][b2]=1;
            if(b3>=0)tbl05[b1][b3]=1;
           }

           for(a7=0;a7<8;a7++)
            for(a6=5;a6<8;a6++)
             tbl06[a6][a7]=tbl05[a6][a7];


           for(a6=0;a6<8;a6++) {        
            if(tbl06[5][a6]==0) {
             tbl06[6][a6]=1;
             tbl06[7][a6]=1;
             for(a7=1;a7<3;a7++) {
              b1=5+a7;
              b2=a6+a7;
              b3=a6-a7;
              if(b2<=7)tbl06[b1][b2]=1;
              if(b3>=0)tbl06[b1][b3]=1;
             }

             for(a8=0;a8<8;a8++)
              for(a7=6;a7<8;a7++)
               tbl07[a7][a8]=tbl06[a7][a8];


             for(a7=0;a7<8;a7++) {     
              if(tbl07[6][a7]==0) {
               tbl07[7][a7]=1;
               if(a7+1<=7)tbl07[7][a7+1]=1;
               if(a7-1>=0)tbl07[7][a7-1]=1;


               for(a8=0;a8<8;a8++) {
                if(tbl07[7][a8]==0)
                 count=count+1;
               }

               for(a9=0;a9<8;a9++)
                for(a8=6;a8<8;a8++)
                 tbl07[a8][a9]=tbl06[a8][a9];

              }                        
             }                         
             for(a8=0;a8<8;a8++)
              for(a7=5;a7<8;a7++)
               tbl06[a7][a8]=tbl05[a7][a8];

            }                          
           }                           
           for(a7=0;a7<8;a7++)
            for(a6=4;a6<8;a6++)
             tbl05[a6][a7]=tbl04[a6][a7];

          }                            
         }                             
         for(a6=0;a6<8;a6++)
          for(a5=3;a5<8;a5++)
           tbl04[a5][a6]=tbl03[a5][a6];

        }                              
       }                               
       for(a5=0;a5<8;a5++)
        for(a4=2;a4<8;a4++)
         tbl03[a4][a5]=tbl02[a4][a5];

       }                               
      }                                
      for(a4=0;a4<8;a4++)
       for(a3=1;a3<8;a3++)
        tbl02[a3][a4]=tbl01[a3][a4];

     }                                 
    }                                  

    for(a3=0;a3<8;a3++)
     for(a2=1;a2<8;a2++)
      tbl01[a2][a3]=0;

   }                                   

   time=clock();
   printf("      \n");
   printf("    EIGHT QUEEN PATTERN  = %d \n",count);
   printf("      \n");
   if(count==92) {
    printf("      \n");
    printf("    MPTEST37 OK \n");  }
   else          {
    printf("      \n");
    printf("    MPTEST37 NG \n");  }
   printf("      \n");
   printf("    MPTEST37 END \n");
   printf("      \n");
   return 0;
 }
 jmp_buf env;
int 
mptest38 (void)
 {
    int rtncd,*p1,p2,p3,s1;
    void func1w();
    signal(SIGSEGV,func1w);
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
    s1=s1+20;    
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
	func1w();
    } ;                        
    return 0;
 }
 void 
func1w (void)
 {
    longjmp(env,999);
 }
