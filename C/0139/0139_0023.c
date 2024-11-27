#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
int func1(int x, int y);
int sub(int *x);
int funcab(int *j);
int f39();
int f38();
int f34();
int f33();
int f32();
int subab();
int scpsi04();
int scpsi03();
int scpsi02();
int scpsi01();
int scppr01();
int scpo304();
int scpo303();
int scpo302();
int m3mpsi04();
int m3mpsi03();
int m3mpsi02();
int m3mpsi01();
int m3mprd0a();
int m3mprd09();
int m3mprd08();
int m3mprd07();
int m3eva040();
int m3eva039();
int m3eva038();
int m3eva037();
int m3eva036();
int m3eva035();
int m3eva034();
int m3eva033();
int m3eva032();
int m3eva031();
int m3eva030();
int m3eva028();
int m3eva027();
int m3eva026();
int m3eva025();
int m3eva024();
int m3eva023();
int m3eva022();
int m3eva021();
 
 
 
 
 
 
 

int main()
{
    printf("*** \n");
    m3eva021();
    m3eva022();
    m3eva023();
    m3eva024();
    m3eva025();
    m3eva026();
    m3eva027();
    m3eva028();
    m3eva030();
    m3eva031();
    scpo302();
    scpo303();
    scpo304();
    scppr01();
    scpsi01();
    scpsi02();
    m3mprd07();
    m3mprd08();
    m3mprd09();
    m3mprd0a();
    m3mpsi01();
    m3mpsi02();
    m3mpsi03();
    m3mpsi04();
    scpsi03();
    scpsi04();
    m3eva032();
    m3eva033();
    m3eva034();
    m3eva035();
    m3eva036();
    m3eva037();
    m3eva038();
    m3eva039();
    m3eva040();
    printf("\n*** \n");
exit (0);
}

 
 
 
 
 
 
 
 
 
static int a21=10;

int f121( int a21 );
 int m3eva021()
{
  int f221( int a21 );
  int x=20;
  int y=30;
  if( f121(x) && f221(y) && a21==10 )
   printf("\nM3EVA021 TEST OK \n");
  else
   printf("M3EVA021 TEST NG \n");
  return 0;
}
 int f121( int a21 )
{
  if( a21==20 )
   return 1;
  else
   return 0;
}
 int f221( int a21 )
{
  if( a21==30 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
static int a22=10;

 int f122( a22 )
int a22;
{
  if( a22==20 )
   return 1;
  else
   return 0;
}
 int f222( a22 )
int a22;
{
  if( a22==30 )
   return 1;
  else
   return 0;
}
 int m3eva022()
{
  int x=20;
  int y=30;
  if( f122(x) && f222(y) && a22==10 )
   printf("\nM3EVA022 TEST OK \n");
  else
   printf("M3EVA022 TEST NG \n");
  return 0;
}
 
 
 
 
 
 
 
 
 
static int a23=10;

 int m3eva023()
{
  static int a23=20;
  if( a23==20 )
   printf("\nM3EVA023 TEST OK \n");
  else
   printf("M3EVA023 TEST NG \n");
  return 0;
}
 
 
 
 
 
 
 
 
 
static int a24=10;

 int m3eva024()
{
  static int a24;
  a24 = 20 ;
  if( a24==20 )
   printf("\nM3EVA024 TEST OK \n");
  else
   printf("M3EVA024 TEST NG \n");
  return 0;
}
 
 
 
 
 
 
 
 
 
static int a25=10;

 int m3eva025()
{
  char x=0;
  {
    static int a25=5;
    if( a25==5 )
       x=1;
    else
       printf("M3EVA025 TEST NG = %d \n",a25);
  }
  if( a25==10 && x==1 )
    printf("\nM3EVA025 TEST OK \n");
  else
    printf("M3EVA025 TEST NG = %d \n",a25);
  return 0;
}
 
 
 
 
 
 
 
 
 
static int a26=10;

 int m3eva026()
{
  char x=0;
  {
    static int a26;
    a26 = 5;
    if( a26==5 )
       x=1;
    else
       printf("M3EVA026 TEST NG = %d \n",a26);
  }
  if( a26==10 && x==1 )
    printf("\nM3EVA026 TEST OK \n");
  else
    printf("M3EVA026 TEST NG = %d \n",a26);
  return 0;
}
 
 
 
 
 
 
 
 
 
static int a27[3]={10,10,10};

extern int a27[3];
 int m3eva027()
{
  if( a27[2]==10 )
    printf("\nM3EVA027 TEST OK \n");
  else
    printf("M3EVA027 TEST NG = %d \n",a27[2]);
  return 0;
}
 
 
 
 
 
 
 
 
 
static int a28[3]={10,10,10};

 int m3eva028()
{
  extern int a28[3];
  if( a28[2]==10 )
    printf("\nM3EVA028 TEST OK \n");
  else
    printf("M3EVA028 TEST NG = %d \n",a28[2]);
  return 0;
}
 
 
 
 
 
 
 
 
 
extern int a30=10;
int a30;
 int m3eva030()
{
  if( a30==10 )
   printf("\nM3EVA030 TEST OK \n");
  else
   printf("M3EVA030 TEST NG = %d \n",a30);
  return 0;
}
 
 
 
 
 
 
 
 
 
extern int a31=10;

 int m3eva031()
{
  int a31=5;
  if( a31==5 )
   printf("\nM3EVA031 TEST OK \n");
  else
   printf("M3EVA031 TEST NG = %d \n",a31);
  return 0;
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
 int scpo302() {
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
 void fun1( int a) {
     u1.b.b1=u1.b.b1-'0';
     u1.b.b2=u1.b.b2-'0';
     u1.b.b3=u1.b.b3-'0';
     u1.b.b4=u1.b.b4-'0';
 }
 void fun2( int a) {
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
 int scpo303() {
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
 void fun1a( int a) {
     u1a.b.b1=u1a.b.b1-'0';
     u1a.b.b2=u1a.b.b2-'0';
     u1a.b.b3=u1a.b.b3-'0';
     u1a.b.b4=u1a.b.b4-'0';
 }
 void fun2a( int a) {
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
 int scpo304() {
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
 void fun1b() {
     u1b.b.b1=u1b.b.b1-'0';
     u1b.b.b2=u1b.b.b2-'0';
     u1b.b.b3=u1b.b.b3-'0';
     u1b.b.b4=u1b.b.b4-'0';
 }
 void fun2b() {
     u1b.a=u1b.a+0x40404040;
 }
 
 
 static int    fun1c();
 static void   ok();
 int    a;
 int scppr01() {
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
 static int fun1c() {
     return(a);
 }
 static void ok() {
   static char c1[]={"ok"};
     printf("\n%s\n",c1);
 }
 void ng() {
   static char c2[]={"ng"};
     printf("%s\n",c2);
 }
 
 
 
 
 
 
 int scpsi01()
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
 
 
 
 
 
 
 int scpsi02()
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
       "abcdef",
       "ghijklmn",
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
  if (strcmp(str1.first,"abcdef") == 0)
      printf("***** SCPSI02 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 03 ***** N   G *****\n");

  printf("********** SCPSI02 TEST  END  **********\n");
  return 0;
}
 int m3mprd07()
{ struct t3 {
   int t3a;
   int t3aa[61];
   };
   struct t3 st,*stp;
   int a,b,c,*p;
   stp=0;
   a=b=c=0;
   p=0;
   stp=&st;
   p=&st.t3aa[0];
   *p=10;
   a=st.t3aa[0];
   p=&(stp->t3aa[0]);
   p+=5;
   *p=30;
   funcab(&c);
   b=stp->t3aa[c];
   st.t3aa[1]=40;
   stp->t3aa[c]=b;      
   stp->t3aa[c]=b*2;    
   if(a==10) b=stp->t3aa[c];
   else      b=stp->t3aa[c];
   if(a==10 && b==60)
        printf("\nm3mprd07 ok\n");
   else printf("m3mprd07 ng a=%d b=%d\n",a,b);
   stp->t3aa[b]=b;      
   return 0;
}
 int funcab(j)
int *j;
{
*j=5;
return 0;
}
char      ch[3];
 int m3mprd08()
{
   int i,c;
   char *a;
   char *b;
   printf("\nm3mprd08    str\n");
   i = 1;
   sub(&c);
   while(i!=3)
   {
      a=b=ch;
      *a=*(b+1)+i;
      i=i+c/5;
   }
   *a=*a;
   *a=ch[c/5];
   if(i==3)
         printf("     ok| \n");
   else
         printf("     ng| \n");
   printf("******  end  \n");
   return 0;
   }
 int    sub(x)
   int *x;
   {
   *x=5;
   return 0;
   }
 int m3mprd09()
{
   struct tag1 {
         int a[3];
         } **p,**q;
   struct tag1 x,y,*i,*j;
   struct tag2 {
         int b[3];
         float h;
         } **t,**r;
   struct tag2 x2,y2,*i2,*j2;
   printf("\nm3mprd09 start\n");
   i2=&x2;
   j2=&y2;
   t=&i2;
   r=&j2;
   p=&i;
   q=&j;
   *p=&x;
   *q=&y;
   x.a[2]=1;
   (*p)->a[2]=2;
   y.a[1]=1;
   j->a[1]=i->a[2];
   if(x.a[2]==2 && y.a[1]==2)
         printf("     ok  \n");
   else
         printf("     ng  \n");
   printf("**** end ****\n");
   j->a[2]=1;               
   i2->b[2]=j->a[2]; 
   i2=&x2;        
    
    
   return 0;
   }
 
 
int y;
 int m3mprd0a() {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
int a[10];
int x;
int *pp;
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
pp=&x;
pint=&var3;
y=x;
a[1]=y;
pint=&var3;
subab();
x=a[1];
pint->memc[1]=y+pint->memb;
if (pint->memc[1]==37) printf("\nm3mprd0a ok\n");
else
printf("%d\n",pint->memc[1]);
if (*pp==5) printf("m3mprd0a ok\n");
else
printf("%d\n",*pp);
 return 0;
}
 int subab()
{
y=22;
return 0;
}
 int m3mpsi01()
 {
 float *p,a;
 a=1.23;
 p=&a;
 *p=100.0;
 if (*p==100.0) printf("\n%4s\n","ok-1");
 else           printf("%4s\n","ng-1");
 return 0;
 }
 
 
 int m3mpsi02() {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x;
var.mema=5;
a[4]=5;
a[var.mema]=3;
pint=&var;
var.memb=4;
x=pint->memb;
a[1]=x;
pint->memc[1]=x;
if (pint->memc[1]==4) printf("\nm3mpsi02 ok\n");
else
printf("m3mpsi02 ng\n");
 return 0;
}
 
 
 int m3mpsi03() {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
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
pint=&var3;
y=x;
a[1]=y;
pint=&var3;
pint->memc[1]=y+pint->memb;
if (pint->memc[1]==19) printf("\nm3mpsi03 ok\n");
else
printf("m3mpsi03 ng\n");
 return 0;
}
 
 
 int m3mpsi04() {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
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
if (pint->memc[1]==20) printf("\nm3mpsi04 ok\n");
else
printf("m3mpsi04 ng\n");
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
       "opqrs",
       "tuvwxyz",
       };
  static union ux
    { int el1;
      char el2;
    } str2;
 int scpsi03()
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
  if (strcmp(str1.first,"opqrs") == 0)
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
 
 
 
 
 
 
 int scpsi04()
{
          int   money,lost,total;

  printf("\n********** SCPSI04 TEST START **********\n");
          money=25000;
         lost=-3000;
         total=func1(money,lost);

  if ( total == 22000)
      printf("***** SCPSI04 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI04 - 01 ***** N   G *****\n");

  printf("********** SCPSI04 TEST  END  **********\n");
  return 0;
}
 int   func1(x,y)
     int   x,y;
{
     int   z;
     z=x+y;
 return(z);
}
 
 
 
 
 
 
 
 
 
extern int a32=10;

 int m3eva032()
{
  int a32;
  a32 = 5;
  if( a32==5 && f32() )
   printf("\nM3EVA032 TEST OK \n");
  else
   printf("M3EVA032 TEST NG = %d \n",a32);
  return 0;
}
 int f32()
{
  if( a32==10 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
extern int a33=10;

 int m3eva033()
{
  int a33=3;
  char x=0;
  {
    int a33=5;
    if( a33==5 )
       x=1;
    else
       printf("M3EVA033 TEST NG = %d \n",a33);
  }
  if( a33==3 && x==1 && f33() )
    printf("\nM3EVA033 TEST OK \n");
  else
    printf("M3EVA033 TEST NG = %d \n",a33);
  return 0;
}
 int f33()
{
  if( a33==10 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
extern int a34=10;

 int m3eva034()
{
  int a34=3;
  char x=0;
  {
    int a34;
    a34 = 5;
    if( a34==5 )
     x=1;
    else
     printf("M3EVA034 TEST NG = %d \n",a34);
  }
  if( a34==3 && x==1 && f34() )
    printf("\nM3EVA034 TEST OK \n");
  else
    printf("M3EVA034 TEST NG = %d \n",a34);
  return 0;
}
 int f34()
{
  if( a34==10 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
extern int a35=10;

 int m3eva035()
{
  struct {
           int a35;
           char b;
         }st35;
  union  {
           int a35;
           char b;
         }un35;
  st35.a35=20;
  un35.a35=30;
  if( a35==10 && st35.a35==20 && un35.a35==30 )
    printf("\nM3EVA035 TEST OK \n");
  else
    printf("M3EVA035 TEST NG \n");
  return 0;
}
 
 
 
 
 
 
 
 
 
extern int a36=10;

int f136( int a36 );
 int m3eva036()
{
  int f236( int a36 );
  int x=20;
  int y=30;
  if( f136(x) && f236(y) && a36==10 )
   printf("\nM3EVA036 TEST OK \n");
  else
   printf("M3EVA036 TEST NG \n");
  return 0;
}
 int f136( int a36 )
{
  if( a36==20 )
   return 1;
  else
   return 0;
}
 int f236( int a36 )
{
  if( a36==30 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
extern int a37=10;

 int f137( a37 )
int a37;
{
  if( a37==20 )
   return 1;
  else
   return 0;
}
 int f237( a37 )
int a37;
{
  if( a37==30 )
   return 1;
  else
   return 0;
}
 int m3eva037()
{
  int x=20;
  int y=30;
  if( f137(x) && f237(y) && a37==10 )
   printf("\nM3EVA037 TEST OK \n");
  else
   printf("M3EVA037 TEST NG \n");
  return 0;
}
 
 
 
 
 
 
 
 
 
extern int a38=10;

 int m3eva038()
{
  static int a38=20;
  if( a38==20 && f38() )
   printf("\nM3EVA038 TEST OK \n");
  else
   printf("M3EVA038 TEST NG \n");
  return 0;
}
 int f38()
{
  if( a38==10 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
extern int a39=10;

 int m3eva039()
{
  static int a39;
  a39 = 20;
  if( a39==20 && f39() )
   printf("\nM3EVA039 TEST OK \n");
  else
   printf("M3EVA039 TEST NG \n");
  return 0;
}
 int f39()
{
  if( a39==10 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
extern int a40=10;

 int m3eva040()
{
  char x=0;
  {
    static int a40=5;
    if( a40==5 )
       x=1;
    else
       printf("M3EVA040 TEST NG = %d \n",a40);
  }
  if( a40==10 && x==1 )
    printf("\nM3EVA040 TEST OK \n");
  else
    printf("M3EVA040 TEST NG = %d \n",a40);
  return 0;
}
