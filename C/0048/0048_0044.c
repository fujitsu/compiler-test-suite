#include <stdio.h>
#include <stddef.h>
#include <setjmp.h>
#include <string.h>
int ser (int *x, int *y);
int sub7 (void);
int sub1 (void);
int subm5 (void);
int func1a (int q);
int func1 (int x, int y);
int f60 (void);
int f55 (void);
int f54 (void);
int f50 (void);
int f49 (void);
int f48 (void);
int m3mpyt01 (void);
int m3eva060 (void);
int m3eva059 (void);
int m3eva058 (void);
int m3eva057 (void);
int m3eva056 (void);
int m3eva055 (void);
int m3eva054 (void);
int m3eva053 (void);
int m3eva052 (void);
int m3eva051 (void);
int scpva01 (void);
int scpsi12 (void);
int scpsi11 (void);
int scpsi08 (void);
int scpsi07 (void);
int scpsi06 (void);
int scpsi05 (void);
int m3eva050 (void);
int m3eva049 (void);
int m3eva048 (void);
int m3eva047 (void);
int m3eva046 (void);
int m3eva045 (void);
int m3eva044 (void);
int m3eva043 (void);
int m3eva042 (void);
int m3eva041 (void);
int m3mpsi05 (void);
int m3mpsi07 (void); 
int m3mpsi08 (void); 
int m3mpsi09 (void); 
int m3mpsi0a (void); 
int 
main (void)
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    m3eva041();
    m3eva042();
    m3eva043();
    m3eva044();
    m3eva045();
    m3eva046();
    m3eva047();
    m3eva048();
    m3eva049();
    m3eva050();
    scpsi05();
    scpsi06();
    scpsi07();
    scpsi08();
    m3mpsi05();
    m3mpsi07();
    m3mpsi08();
    m3mpsi09();
    scpsi11();
    scpsi12();
    scpva01();
    m3eva051();
    m3eva052();
    m3eva053();
    m3eva054();
    m3eva055();
    m3eva056();
    m3eva057();
    m3eva058();
    m3eva059();
    m3eva060();
    m3mpsi0a();
    m3mpyt01();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}

extern int a41=10;

int 
m3eva041 (void)
{
  char x=0;
  {
    static int a41;
    a41 = 5;
    if( a41==5 )
       x=1;
    else
       printf("M3EVA041 TEST NG = %d \n",a41);
  }
  if( a41==10 && x==1 )
    printf("\nM3EVA041 TEST OK \n");
  else
    printf("M3EVA041 TEST NG = %d \n",a41);
  return 0;
}
extern int a42[3]={10,10,10};

extern int a42[3];
int 
m3eva042 (void)
{
  if( a42[2]==10 )
    printf("\nM3EVA042 TEST OK \n");
  else
    printf("M3EVA042 TEST NG = %d \n",a42[2]);
  return 0;
}
int x=10;
extern int *a43=&x;

int 
m3eva043 (void)
{
  extern int *a43;
  if( *a43==10 )
    printf("\nM3EVA043 TEST OK \n");
  else
    printf("M3EVA043 TEST NG = %d \n",*a43);
  return 0;
}
extern int a44[3]={10,10,10};

int 
m3eva044 (void)
{
  int a44[3]={20,20,20};
  {
    extern int a44[3];
    if( a44[2]==10 )
      printf("\nM3EVA044 TEST OK \n");
    else
      printf("M3EVA044 TEST NG = %d \n",a44[2]);
  }
  return 0;
}
int a45;
int a45=10;
int 
m3eva045 (void)
{
  if( a45==10 )
   printf("\nM3EVA045 TEST OK \n");
  else
   printf("M3EVA045 TEST NG = %d \n",a45);
  return 0;
}
int a46;
int a46;
int 
m3eva046 (void)
{
  if( a46==0 )
   printf("\nM3EVA046 TEST OK \n");
  else
   printf("M3EVA046 TEST NG = %d \n",a46);
  return 0;
}
int a47;

int 
m3eva047 (void)
{
  int a47=5;
  if( a47==5 )
   printf("\nM3EVA047 TEST OK \n");
  else
   printf("M3EVA047 TEST NG = %d \n",a47);
  return 0;
}
int a48;

int 
m3eva048 (void)
{
  int a48;
  a48 = 5;
  if( a48==5 && f48() )
   printf("\nM3EVA048 TEST OK \n");
  else
   printf("M3EVA048 TEST NG = %d \n",a48);
  return 0;
}
int 
f48 (void)
{
  if( a48==0 )
   return 1;
  else
   return 0;
}
int a49;

int 
m3eva049 (void)
{
  int a49=3;
  char x=0;
  {
    int a49=5;
    if( a49==5 )
       x=1;
    else
       printf("M3EVA049 TEST NG = %d \n",a49);
  }
  if( a49==3 && x==1 && f49() )
    printf("\nM3EVA049 TEST OK \n");
  else
    printf("M3EVA049 TEST NG = %d \n",a49);
  return 0;
}
int 
f49 (void)
{
  if( a49==0 )
   return 1;
  else
   return 0;
}
int a50;

int 
m3eva050 (void)
{
  int a50=3;
  char x=0;
  {
    int a50;
    a50 = 5;
    if( a50==5 )
     x=1;
    else
     printf("M3EVA050 TEST NG = %d \n",a50);
  }
  if( a50==3 && x==1 && f50() )
    printf("\nM3EVA050 TEST OK \n");
  else
    printf("M3EVA050 TEST NG = %d \n",a50);
  return 0;
}
int 
f50 (void)
{
  if( a50==0 )
   return 1;
  else
   return 0;
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
int func1a (int q)
{
          int   x;
          x=q*4;
  return (x);

}
int func2a (int r)
{
          int   y;
          y=r*4;
  return (y);

}

   static int staticfunction1();
int scpsi06 (void)
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
  static int staticfunction1 (void)
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
int scpsi07 (void)
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
int scpsi08 (void)
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

  sd=func1(sa,sb);

  if (sd == 1)
      printf("***** SCPSI08 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI08 - 02 ***** N   G *****\n");

  printf("********** SCPSI08 TEST  END  **********\n");
  return 0;
}
int func1 (int x, int y)

{
       int     z;

       z=x+y;
       return(z);
}
int y;
int m3mpsi05 (void) {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
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
subm5();
x=a[1];
pint->memc[1]=y+pint->memb;
if (pint->memc[1]==37) printf("\nm3mpsi05 ok\n");
else
printf("%d\n",pint->memc[1]);
 return 0;
}
int subm5 (void)
{
y=22;
return 0;
}
int y5;
int m3mpsi07 (void) {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
int a[10];
int x;
pint=&var3;
sub7();
y5=y5-17;
pint->mema=y5;
sub7();
pint->memb=15;
a[4]=pint->mema;
a[pint->mema]=3;
pint=&var2;
pint->memb=4;
x=pint->memb;
pint->memb=a[4];
x=pint->memb;
pint=&var3;
y5=x;
a[1]=y5;
pint=&var3;
sub7();
x=a[1];
pint->memc[1]=y5+pint->memb;
if (pint->memc[1]==37) printf("\nm3mpsi07 ok\n");
else
printf("%d\n",pint->memc[1]);
 return 0;
}
int sub7 (void)
{
y5=22;
return 0;
}
int m3mpsi08 (void) {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x,y;
var.mema=5;
pint=&var2;
pint->memc[3]=0.5;
pint->mema=3;
y=pint->mema;
x=(int)(pint->memc[3]);
a[1]=x+y;
if (a[1]==3) printf("\nm3mpsi08 ok\n");
else
printf("m3mpsi08 ng\n");
 return 0;
}
int m3mpsi09 (void) {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x,y,z;
int *i;
var.mema=5;
pint=&var2;
i=&z;
z=3;
pint->mema=*i;
*i=5;
x=pint->mema;
z=z+(*i);
if (z==10) printf("\nm3mpsi09 ok\n");
else
printf("m3mpsi09 ng\n");
if (pint->mema==3) printf("m3mpsi09 ok\n");
else
printf("m3mpsi09 ng\n");
 return 0;
}
#define   m_type_january  1
#define   m_type_may      2
#define   m_type_october  3
#define   m_type_december 4

          jmp_buf env;

int scpsi11 (void)
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
int sub1 (void)
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
int scpsi12 (void)
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
int scpva01 (void) {
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
 }
 s={'a','b',1,2,3,4,5,6,1.0,2.0,3.0,"xyz",L'b'};
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
 if (s.lch == L'b')
      { printf(" ** LONG CHAR TEST OK              **\n"); }
 else { printf("  ## LONG CHAR TEST NG              ##\n"); }
 printf("*** SCPVA01 TEST END   ***\n");
 return 0;
}
int a51;

int m3eva051 (void)
{
  struct {
           int a51;
           char b;
         }st;
  union  {
           int a51;
           char b;
         }un;
  st.a51=20;
  un.a51=30;
  if( a51==0 && st.a51==20 && un.a51==30 )
    printf("\nM3EVA051 TEST OK \n");
  else
    printf("M3EVA051 TEST NG \n");
  return 0;
}
int a52;

int f152( int a52 );
int m3eva052 (void)
{
  int f252( int a52 );
  int x=20;
  int y=30;
  if( f152(x) && f252(y) && a52==0 )
   printf("\nM3EVA052 TEST OK \n");
  else
   printf("M3EVA052 TEST NG \n");
  return 0;
}
 int f152( int a52 )
{
  if( a52==20 )
   return 1;
  else
   return 0;
}
 int f252( int a52 )
{
  if( a52==30 )
   return 1;
  else
   return 0;
}
int a53;

int 
f153 (int a53)
{
  if( a53==20 )
   return 1;
  else
   return 0;
}
int 
f253 (int a53)
{
  if( a53==30 )
   return 1;
  else
   return 0;
}
int 
m3eva053 (void)
{
  int x=20;
  int y=30;
  if( f153(x) && f253(y) && a53==0 )
   printf("\nM3EVA053 TEST OK \n");
  else
   printf("M3EVA053 TEST NG \n");
  return 0;
}
int a54;

int 
m3eva054 (void)
{
  static int a54=20;
  if( a54==20 && f54() )
   printf("\nM3EVA054 TEST OK \n");
  else
   printf("M3EVA054 TEST NG \n");
  return 0;
}
int 
f54 (void)
{
  if( a54==0 )
   return 1;
  else
   return 0;
}
int a55;

int 
m3eva055 (void)
{
  static int a55;
  a55 = 20;
  if( a55==20 && f55() )
   printf("\nM3EVA055 TEST OK \n");
  else
   printf("M3EVA055 TEST NG \n");
  return 0;
}
int 
f55 (void)
{
  if( a55==0 )
   return 1;
  else
   return 0;
}
int a56;

int 
m3eva056 (void)
{
  char x=0;
  {
    static int a56=5;
    if( a56==5 )
       x=1;
    else
       printf("M3EVA056 TEST NG = %d \n",a56);
  }
  if( a56==0 && x==1 )
    printf("\nM3EVA056 TEST OK \n");
  else
    printf("M3EVA056 TEST NG = %d \n",a56);
  return 0;
}
int a57[2][2];

int 
m3eva057 (void)
{
  char x=0;
  {
    static int a57[2][2];
    a57[1][1] = 5;
    if( a57[1][1]==5 )
       x=1;
    else
       printf("M3EVA057 TEST NG = %d \n",a57[1][1]);
  }
  if( a57[1][1]==0 && x==1 )
    printf("\nM3EVA057 TEST OK \n");
  else
    printf("M3EVA057 TEST NG = %d \n",a57[1][1]);
  return 0;
}
int a58;
extern int a58=10;

int 
m3eva058 (void)
{
  if( a58==10 )
    printf("\nM3EVA058 TEST OK \n");
  else
    printf("M3EVA058 TEST NG = %d \n",a58);
  return 0;
}
int a59;
extern int a59;

int 
m3eva059 (void)
{
  if( a59==0 )
    printf("\nM3EVA059 TEST OK \n");
  else
    printf("M3EVA059 TEST NG = %d \n",a59);
  return 0;
}
int a60[3];

int 
m3eva060 (void)
{
  extern int a60[3];
  a60[2]=10;
  if( f60() )
    printf("\nM3EVA060 TEST OK \n");
  else
    printf("M3EVA060 TEST NG = %d \n",a60[2]);
  return 0;
}
int 
f60 (void)
{
   if( a60[2]==10 )
    return 1;
   else
    return 0;
}
int 
m3mpsi0a (void) {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[11];  
int x,y,z;
int *i;
var.mema=5;
pint=&var2;
i=&z;
z=3;
pint->mema=*i;
*i=5;
x=pint->mema;
z=z+(*i);
a[*i]=*i;
if (z==10) printf("\nm3mpsi0a ok\n");
else
printf("m3mpsi0a ng\n");
if (pint->mema==3) printf("m3mpsi0a ok\n");
else
printf("m3mpsi0a ng\n");
if (a[*i]==10) printf("m3mpsi0a ok\n");
else
printf("m3mpsi0a ng\n");
 return 0;
}
int 
m3mpyt01 (void)
{
  static int b[10]={1,2,3,4,5,6,7,8,9,10};
  int a[10];
  int i,j;
  printf("\n********* sort program *********\n");
  a[0]=2;
  a[1]=9;
  a[2]=1;
  a[3]=5;
  a[4]=6;
  a[5]=8;
  a[6]=4;
  a[7]=10;
  a[8]=3;
  a[9]=7;
  i=0;
  while(i<=9){
    j=i+1;
    while(j<=9){
      ser(&a[i],&a[j]);
      j++;
    }
    i++;
  }
  printf("1st ====>>>  %d   \n",a[0]);
  printf("2dn ====>>>  %d   \n",a[1]);
  printf("3rd ====>>>  %d   \n",a[2]);
  printf("4th ====>>>  %d   \n",a[3]);
  printf("5th ====>>>  %d   \n",a[4]);
  printf("6th ====>>>  %d   \n",a[5]);
  printf("7th ====>>>  %d   \n",a[6]);
  printf("8th ====>>>  %d   \n",a[7]);
  printf("9th ====>>>  %d   \n",a[8]);
  printf("largest=>>>  %d   \n",a[9]);
  if(memcmp(a,b,40)==0)
       printf("\nok\n");
  else printf("ng\n");
  return 0;
}
int ser(x,y)
int *x,*y;
{
  int demo;
    if(*x>*y){
      demo=*x;
      *x=*y;
      *y=demo;
    }
  return 0;
}
