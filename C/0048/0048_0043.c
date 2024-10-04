#include <string.h>
#include <stdlib.h>
#include <stdio.h>
int func1b();
int scrlp09();
int m3eva020();
int m3eva019();
int m3eva018();
int m3eva017();
int m3eva016();
int m3eva014();
int m3eva013();
int m3eva012();
int m3eva011();
int m3eva010();
int m3eva009();
int m3eva008();
int m3eva007();
int m3eva006();
int m3eva005();
int m3eva004();
int m3eva003();
int m3eva002();
int m3eva001();
int m3mpcm10();
int m3mpcm09();
int m3mprd01();
int m3mprd02();
int m3mprd03();
int m3mprd04();
int m3mprd05(); 
int m3mprd06();
int scrlp10();
int func(int *j);
int func1();
int func1a();
int f002();
int f003();
int f004();
int f005();
int nextch();
int expression();
int term();
int out(char *c);
int factor();

int main()
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    m3mpcm09();
    m3mpcm10();
    m3mprd01();
    m3mprd02();
    m3mprd03();
    m3mprd04();
    m3mprd05();
    m3mprd06();
    m3eva001();
    m3eva002();
    m3eva003();
    m3eva004();
    m3eva005();
    m3eva006();
    m3eva007();
    m3eva008();
    m3eva009();
    m3eva010();
    m3eva011();
    m3eva012();
    m3eva013();
    m3eva014();
    m3eva016();
    m3eva017();
    m3eva018();
    m3eva019();
    m3eva020();
    scrlp09();
    scrlp10();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}

int m3mpcm09()
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   pi=&ai;
   fi=*pi;
   if(bi=20)
   {
     ei=*pi;
   }
   if(fi==10 && ei==10)
     printf("\n*** m3mpcm09 ok ***\n");
   else
     printf("*** m3mpcm09 ng *** ei=%d fi=%d\n",ei,fi);
   return 0;
 }
 int m3mpcm10()
 {
    struct t1 {
           int a1[3];
            };
    struct t1 a,b,*p1,*q1;
    int  i1,i2;
    int  s1,s2;

 printf("\n*** M3MPCM01 * MK3 TEST FOR COMPOUND * STARTED ***\n");
      a.a1[0]=1;
      a.a1[1]=2;
      a.a1[2]=3;

      p1=&a;
      i1=0;
      s1=p1->a1[i1];
      i1=1;
      s2=p1->a1[i1];

  if (s2==2)
   printf("*** M3MPCM51-01 *** O     K ***\n");
  else
   printf("*** M3MPCM51-01 **** N   G ****\n");

      p1=&a;
      b.a1[1]=9;
      i1=1;
      s1=p1->a1[i1];
      p1=&b;
      s2=p1->a1[i1];

  if (s2==9)
   printf("*** M3MPCM51-02 *** O     K ***\n");
  else
   printf("*** M3MPCM51-02 **** N   G ****\n");

      p1=&a;
      i1=1;
      s1=p1->a1[i1];
      p1->a1[1]=5;
      s2=p1->a1[i1];

  if (s2==5)
   printf("*** M3MPCM51-03 *** O     K ***\n");
  else
   printf("*** M3MPCM51-03 **** N   G ****\n");

      p1=&a;
      q1=&a;
      i1=1;
      s1=p1->a1[i1];
      q1->a1[1]=7;
      s2=p1->a1[i1];

  if (s2==7)
   printf("*** M3MPCM51-04 *** O     K ***\n");
  else
   printf("*** M3MPCM51-04 **** N   G ****\n");

      a.a1[0]=1;
      a.a1[1]=2;
      a.a1[2]=3;

      p1=&a;
      i1=0;
      s1=p1->a1[i1];
      if (i1==0)
        i1=1;
      else
        i1=0;
      s2=p1->a1[i1];

  if (s2==2)
   printf("*** M3MPCM51-05 *** O     K ***\n");
  else
   printf("*** M3MPCM51-05 **** N   G ****\n");

 }
struct estr {
int x;
int y;
int a[10];
};
struct west {
int b[10];
int z;
float w;
};
int m3mprd01()
{
  printf("\nM3MPRD01 START\n");
  func1();                           
  printf("M3MPRD01 END  \n");
  return 0;
}
 int func1()
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
  pint1->a[num]=20;
  pint3->b[num]=20;
  num=1;
  pint1->a[num]=10;
  pint2->a[num]=pint1->a[num];
  if (pint1->a[num]==10) printf("m3mprd01 ok\n");
  else
  printf("m3mprd01 ng\n");
  return 0;
}
struct estra {
int x;
int y;
int a[11];
};
struct westa {
int b[10];
int z;
float w;
};
struct estra *pint1;
struct estra *pint2;
struct westa *pint3;
int m3mprd02()
{
  printf("\nM3MPRD02 START\n");
  func1a();                           
  printf("M3MPRD02 END  \n");
  return 0;
}
 int func1a()
{
  static  char stat1[21] ={0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0         };
  char *ap ;
  struct estra ea;
  struct westa eb;
  int  num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=5;
  pint1->a[num]=20;
  pint3->b[num]=20;
  num=1;
  pint2->a[num]=10;
  num=pint2->a[num];
  if (num==10) printf("m3mprd02 ok\n");
  else
  printf("m3mprd02 ng\n");
  pint2->a[num]=10;
  num=pint1->a[num];
  pint3->b[3]=num;
  if (pint3->b[3]==10) printf("m3mprd02 ok\n");
  else
  printf("m3mprd02 ng\n");
  return 0;
}
int m3mprd03() {
union tag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
union tag var2;
int a[10];
int x;
var.mema=5;
a[4]=3;
a[var.mema]=3;
x=a[var.mema];
a[1]=x;
if (a[1]==3) printf("\nm3mprd03 ok\n");
else
printf("m3mprd03 ng\n");
return 0;
}
struct estrb {
float x;
int y;
int a[10];
};
struct westb {
int b[10];
int z;
float w;
};
int m3mprd04()
{
  printf("\nM3MPRD04 START\n");
  func1b();                           
  printf("M3MPRD04 END  \n");
  return 0;
}
 int func1b()
{
  char *ap ;
  struct estrb ea;
  struct westb eb;
  struct estrb *pint1;
  struct estrb *pint2;
  struct westb *pint3;
  float  ff;
  int num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=1;
  pint1->a[num]=20;
  pint3->b[num]=20;
  pint1->x=1.0;
  pint1->y=10;
  pint3->w=pint1->x;
  pint1->a[num]=10;
  pint2->a[num]=pint1->a[num];
  if (pint1->a[num]==10) printf("m3mprd04 ok\n");
  else
  printf("m3mprd04 ng\n");
  if (pint3->w==1.0 ) printf("m3mprd04 ok\n");
  else
  printf("m3mprd04 ng\n");
  return 0;
}
int m3mprd05() {
union tag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
union tag var2;
int a[10];
int x;
var.mema=5;
a[4]=5;
a[var.mema]=3;
var.memb=4;
x=a[var.mema];
a[1]=x;
if (a[1]==5) printf("\nm3mprd05 ok\n");
else
printf("m3mprd05 ng\n");
return 0;
}
int m3mprd06()
{ struct t3 {
   int t3a;
   int t3aa[30];
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
   *p=20;
   func(&c);
   b=stp->t3aa[c];
   st.t3aa[1]=40;
   stp->t3aa[c]=b;
   if(a==10 && b==20)
        printf("\nm3mprd06 ok\n");
   else printf("m3mprd06 ng a=%d b=%d\n",a,b);
   return 0;
}
int func(j)
int *j;
{
*j=5;
return 0;
}
int a=10;
int a;
 int m3eva001()
{
  if( a==10 )
   printf("\nM3EVA001 TEST OK \n");
  else
   printf("M3EVA001 TEST NG = %d \n",a);
}
int a002=10;

 int m3eva002()
{
  int a002=5;
  if( a002==5 && f002() )
   printf("\nM3EVA002 TEST OK \n");
  else
   printf("M3EVA002 TEST NG = %d \n",a002);
}
 int f002()
{
  if( a002==10 )
   return 1;
  else
   return 0;
}
int a003=10;

 int m3eva003()
{
  int a003;
  a003 = 5;
  if( a003==5 && f003() )
   printf("\nM3EVA003 TEST OK \n");
  else
   printf("M3EVA003 TEST NG = %d \n",a003);
}
 int f003()
{
  if( a003==10 )
   return 1;
  else
   return 0;
}
int a004=10;

 int m3eva004()
{
  int a004=3;
  char x=0;
  {
    int a004=5;
    if( a004==5 )
       x=1;
    else
       printf("M3EVA004 TEST NG = %d \n",a004);
  }
  if( a004==3 && x==1 && f004() )
    printf("\nM3EVA004 TEST OK \n");
  else
    printf("M3EVA004 TEST NG = %d \n",a004);
}
 int f004()
{
  if( a004==10 )
   return 1;
  else
   return 0;
}
int a005=10;

 int m3eva005()
{
  int a005=3;
  char x=0;
  {
    int a005;
    a005 = 5;
    if( a005==5 )
     x=1;
    else
     printf("M3EVA005 TEST NG = %d \n",a005);
  }
  if( a005==3 && x==1 && f005() )
    printf("\nM3EVA005 TEST OK \n");
  else
    printf("M3EVA005 TEST NG = %d \n",a005);
}
 int f005()
{
  if( a005==10 )
   return 1;
  else
   return 0;
}
int a006=10;

 int m3eva006()
{
  struct {
           int a006;
           char b;
         }st;
  union  {
           int a006;
           char b;
         }un;
  st.a006=20;
  un.a006=30;
  if( a006==10 && st.a006==20 && un.a006==30 )
    printf("\nM3EVA006 TEST OK \n");
  else
    printf("M3EVA006 TEST NG \n");
}
int a007=10;

int f1007( int a007 );
 int m3eva007()
{
  int f2007( int a007 );
  int x=20;
  int y=30;
  if( f1007(x) && f2007(y) && a007==10 )
   printf("\nM3EVA007 TEST OK \n");
  else
   printf("M3EVA007 TEST NG \n");
}
 int f1007( int a007 )
{
  if( a007==20 )
   return 1;
  else
   return 0;
}
 int f2007( int a007 )
{
  if( a007==30 )
   return 1;
  else
   return 0;
}
int a008=10;

 int f1008( a008 )
int a008;
{
  if( a008==20 )
   return 1;
  else
   return 0;
}
 int f2008( a008 )
int a008;
{
  if( a008==30 )
   return 1;
  else
   return 0;
}
 int m3eva008()
{
  int x=20;
  int y=30;
  if( f1008(x) && f2008(y) && a008==10 )
   printf("\nM3EVA008 TEST OK \n");
  else
   printf("M3EVA008 TEST NG \n");
}
int a009=10;

 int m3eva009()
{
  static int a009=20;
  if( a009==20 )
   printf("\nM3EVA009 TEST OK \n");
  else
   printf("M3EVA009 TEST NG \n");
}
int a010=10;

 int m3eva010()
{
  static int a010;
  a010 = 20;
  if( a010==20 )
   printf("\nM3EVA010 TEST OK \n");
  else
   printf("M3EVA010 TEST NG \n");
}
int a011=10;

 int m3eva011()
{
  char x=0;
  {
    static int a011=5;
    if( a011==5 )
       x=1;
    else
       printf("\nM3EVA011 TEST NG = %d \n",a011);
  }
  if( a011==10 && x==1 )
    printf("\nM3EVA011 TEST OK \n");
  else
    printf("M3EVA011 TEST NG = %d \n",a011);
}
int a012=10;

int m3eva012()
{
  char x=0;
  {
    static int a012;
    a012 = 5;
    if( a012==5 )
       x=1;
    else
       printf("M3EVA012 TEST NG = %d \n",a012);
  }
  if( a012==10 && x==1 )
    printf("\nM3EVA012 TEST OK \n");
  else
    printf("M3EVA012 TEST NG = %d \n",a012);
}
int a013[3]={10,10,10};

extern int a013[3];
 int m3eva013()
{
  if( a013[2]==10 )
    printf("\nM3EVA013 TEST OK \n");
  else
    printf("M3EVA013 TEST NG = %d \n",a013[2]);
}
int a014[3]={10,10,10};

 int m3eva014()
{
  extern int a014[3];
  if( a014[2]==10 )
    printf("\nM3EVA014 TEST OK \n");
  else
    printf("M3EVA014 TEST NG = %d \n",a014[2]);
}
static int a016=10;

 int m3eva016()
{
  int a016=20;
  if( a016==20 )
    printf("\nM3EVA016 TEST OK \n");
  else
    printf("M3EVA016 TEST NG = %d \n",a016);
}
static int a017[2]={10,10};

 int m3eva017()
{
  int a017;
  a017 = 20;
  if( a017==20 )
    printf("\nM3EVA017 TEST OK \n");
  else
    printf("M3EVA017 TEST NG = %d \n",a017);
}
static int a018[2]={10,10};

 int m3eva018()
{
  int a018[2];
  {
    int a018[2]={20,20};
    if( a018[0]==20 )
      printf("\nM3EVA018 TEST OK \n");
    else
      printf("M3EVA018 TEST NG = %d \n",a018[0]);
  }
}
static int a019[2]={10,10};

 int m3eva019()
{
  int a019;
  {
    int a019[2];
    a019[0]=20;
    if( a019[0]==20 )
      printf("\nM3EVA019 TEST OK \n");
    else
      printf("M3EVA019 TEST NG = %d \n",a019[0]);
  }
}
static int a020=10;

 int m3eva020()
{
  struct {
           int a020;
           char b;
         }st;
  union  {
           int a020;
           char b;
         }un;
  st.a020=20;
  un.a020=30;
  if( a020==10 && st.a020==20 && un.a020==30 )
    printf("\nM3EVA020 TEST OK \n");
  else
    printf("M3EVA020 TEST NG \n");
}
typedef int logical;
#define false   0
#define true    1
char buf[100];
 int scrlp09()
{
      nextch();
      expression();
      puts(" OK ");
}
char ch;
 int nextch()
{
      static char  indata[]="A+B+(C+D*E)/2";
      static int   ich=0;
      ch=indata[ich];
      if( ch == 0 ) {
        ch=' ';
        return 0;
      }
      ich=ich+1;
      if( ich == 100 ) ich = 100;
}
 int expression()
{
      char        c;
      term();
      while( ch == '+' || ch == '-' || ch == '|' ) {
        c = ch;
        nextch();
        out(  "  PUSH   DO"  );
        term();
        switch ( c ) {
        case '+':
          out(  "  ADD    (SP++),D0" );
          break;
        case '-':
          out(  "  POP    D1"  );
          out(  "  EXG    D1,D0" );
          out(  "  SUB    D1,D0" );
          break;
        case '|':
          out(  "  OR     (SP++),DO " );
        }
      };
}

 int term()
{
      char c;
      factor();
      while( ch == '*' || ch == '/' || ch == '&' ) {
        c = ch;
        nextch();
        out(       "  PUSH   DO" );
        factor();
        switch ( c ) {
        case  '*':
          out(       "  MUL    (SP++),D0" );
          break;
        case  '/':
          out(       "  POP    D1" );
          out(       "  EXG    D1,D0" );
          out(       "  DIV    (SP++),D0");
          break;
        case  '&':
          out(       "  AND    (SP++),DO" );
        }
      };
}
 int factor()
{
      if( 'a'<=ch && ch<='z' ||
          'A'<=ch && ch<='Z' ) {
sprintf(buf,"  MOVE   %c , D0",ch);out(buf);
      }
      else if( '0'<=ch && ch<='9' ) {
sprintf(buf,"  MOVE  #%c , D0",ch);out(buf);
      }
      else if( ch == '(' ) {
        nextch();
        expression();
        if( ch != ')' ) {
          out(" not found ) ");
        }
      }
      else {
        out("  ERROR ");
      }
      nextch();
}
char *data[] = {
"  MOVE   A , D0" ,
"  PUSH   DO" ,
"  MOVE   B , D0" ,
"  ADD    (SP++),D0" ,
"  PUSH   DO" ,
"  MOVE   C , D0" ,
"  PUSH   DO" ,
"  MOVE   D , D0" ,
"  PUSH   DO" ,
"  MOVE   E , D0" ,
"  MUL    (SP++),D0" ,
"  ADD    (SP++),D0" ,
"  PUSH   DO" ,
"  MOVE  #2 , D0" ,
"  POP    D1" ,
"  EXG    D1,D0" ,
"  DIV    (SP++),D0" ,
"  ADD    (SP++),D0"
};
 int out(c)
char *c;
{
      static int i=0;
      if( strcmp(c,data[i++]) != 0 ) {
        puts(" NG ");
        printf("%s<<<\n",c);
        printf("%s<<<\n",data[i-1]);
        exit(1);
      }
}
int scrlp10()
{
    puts(" OK ");
    return 0;
}
