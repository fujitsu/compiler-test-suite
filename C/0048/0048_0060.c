
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <setjmp.h>
#include <string.h>
#include <signal.h>
#include <math.h>
int sub1cd (void);
int func1cc (int x, int y);
int func1a (int q);
int func1 (int x, int y);
int factor (void);
int out (char *c);
int term (void);
int expression (void);
int nextch (void);
int sub5aa (int j);
int subaa (int i);
int subqr (void);
int add (void);
int subr (int i);
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
int scqih04 (void);
int scqih02 (void);
int scqih10 (void);
int scqih09 (void);
int scqih08 (void);
int scqih07 (void);
int scqih06 (void);
int scqih03 (void);
int scqih01 (void);
int scppr01 (void);
int scpo304 (void);
int scpo303 (void);
int scpo302 (void);
int scrlp10 (void);
int scrlp09 (void);
int scrlp07 (void);
int scrlp06 (void);
int scrlp05 (void);
int scrlp04 (void);
int scrlp02 (void);
int scrlp02r (void);
int scrlp00 (void);
int scrlc15 (void);
int scrlc11 (void);
int scrlc09 (void);
int scrlc04 (void);
int scrlc02 (void);
int scrlc01 (void);
int scrgb09 (void);
int scqih14 (void);
int scqih13 (void);
int 
main (void)
{
    void scrlp01();
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    scqih13();
    scqih14();
    scrgb09();
    scrlc01();
    scrlc02();
    scrlc04();
    scrlc09();
    scrlc11();
    scrlc15();
    scrlp00();
    scrlp01();
    scrlp02r();
    scrlp02();
    scrlp04();
    scrlp05();
    scrlp06();
    scrlp07();
    scrlp09();
    scrlp10();
    scpo302();
    scpo303();
    scpo304();
    scppr01();
    scqih01();
    scqih03();
    scqih06();
    scqih07();
    scqih08();
    scqih09();
    scqih10();
    scqih02();
    scqih04();
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
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}


#define ARRAY_MAX 200

struct x {
    struct x    *right;
    struct x    *left;
    long int    member;
} s1[ARRAY_MAX], s2[ARRAY_MAX];

void rdmset();
void maktree();
void gettree();
int  chktree();

int 
scqih13 (void)
{
    int i;

    static struct x *sp = s1;
    rdmset();
    maktree();
    gettree();

    if( !chktree() )
        printf("\nSCQIH13  NG.\n");
    else
        printf("\nSCQIH13  PASS.\n");
}


void 
rdmset (void)
{
    double t_rand();
    int i;

    for (i = 0; i < ARRAY_MAX; ++i){
        s1[i].right = s1[i].left = 0;
        s1[i].member = t_rand();
    }
}


double 
t_rand (void)
{
    double c, k, ran;
    static double r = 12345678.0;

    c = 656329.0;
    k = 19.0;

    r = fmod((k * r + c), 100000001.0);
    ran = r / 100000000.0 * ARRAY_MAX;
    return (ran);
}


void 
maktree (void)
{
    void addtree();
    int i;

    for (i = 1; i < ARRAY_MAX; ++i)
        addtree(i);
    return;
}


void 
addtree (int n)
{
    static struct x *sp = s1;

    if (n == 0)
        return;

    if (s1[n].member <= sp->member)
        if (sp->right == 0){
            sp->right = &s1[n];
            sp = s1;
            return;
        }
        else{
            sp = sp->right;
            addtree(n);
            return;
        }
    else
        if (sp->left == 0){
            sp->left = &s1[n];
            sp = s1;
            return;
        }
        else{
            sp = sp->left;
            addtree(n);
            return;
        }
}


void 
gettree (void)
{
    struct x *srctree();

    srctree(s1);
    return;
}

struct x *
srctree (struct x *p)
{
    static int a_num = 0;

    if (p != 0){
        srctree(p->left);
        s2[a_num] = *p;
        ++a_num;
        srctree(p->right);
    }
}


int 
chktree (void)
{
    int flag, i;

    flag = 1;
    for (i = 0; i < (ARRAY_MAX - 1); ++i)
        if (s2[i].member < s2[i+1].member)
            flag = 0;
    return(flag);
}

struct BF{
    unsigned long int   bf0:4;
    unsigned long int   bf1:4;
    unsigned long int   bf2:4;
    unsigned long int   bf3:4;
    unsigned long int   bf4:4;
    unsigned long int   bf5:4;
    unsigned long int   bf6:4;
    unsigned long int   bf7:4;
};

union SCOPE{
    unsigned long int   uli;
    struct BF           bf;
    float               fl;
};

struct st{
    union SCOPE   sc;
    long int    member;
} st1;

int 
scqih14 (void)
{
#ifdef _LONGLONG
    st1.sc.fl     = 1.000000000000000;
    st1.sc.bf.bf2 = 2;
    if (st1.sc.uli != 0x41200000){
        printf("st1.sc.uli != 0x41200000.  now, sc1.sc.uli =%8x\n",
                st1.sc.uli);
        printf("\nSCQIH14  NG.\n");
    }
    else
#endif
        printf("\nSCQIH14  PASS.\n");
}
int 
scrgb09 (void)
{
      unsigned long int u4;
               long int i4;
      u4=0;
      for( i4=0;i4<10;i4++ ) {
        if(u4=u4+1)break;
      }
      if( u4 != 1 ) puts(" ng ");
      for( i4=0;i4<10;i4++ ) {
        if((u4=u4+1)>0)break;
      }
      if( u4 != 2 ) puts(" ng ");
      else          puts(" OK ");
}

int 
scrlc01 (void)
{
register int i;
register float j;
register short int k;
i=1;
j=2;
k=3;
i=i+1;
j=j+1;
k=k+1;
i=i+i;
if(i==4 && j==3 && k==4) printf(" ----- ok ----- \n");
else                     printf(" ----- ng ----- \n");
}
int  a;
int 
scrlc02 (void)
{
        int  b,*p1;
        int  i,j=0;

  for(i=0;i<3;i++)
    {
          b=i+3;
          a=i+b;
          j=i+a;

          p1=&b;
         *p1=j-i;
          if(b==*p1) printf("--------- ok -------- \n");
          else       printf("--------- ng -------- \n");
          j=a+b;

    }
}
int 
scrlc04 (void)
{
union tag {
             int a;
             char b;
          } t1;
static char c[]="abcd";
int i,j;

for(i = 0; i < 4; i++)
{
  t1.b = c[i];
  printf("b = %c  ",t1.b);
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
  t1.a = t1.a+0x00000001;
  j=t1.a;
#else
#if INT64
  t1.a = t1.a+0x0100000000000000;
  j=t1.a>>((sizeof(t1.a)*8)-(sizeof(t1.b)*8));
#else
  t1.a = t1.a+0x01000000;
  j=t1.a>>24;
#endif
#endif
  printf("a = %c \n",(char)j);

  if((char)j==t1.b) printf("\n ----- ok ----- \n");
  else                   printf(" ----- ng ----- \n");

}
}

struct tagx {
             int a;
             short int b;
           };

int glb;

int 
scrlc09 (void)
{
  struct tagx x,y;
  int i,j;
  glb=2;

x.a=x.b=y.a=y.b=glb;

for(i=0;i<5;i++)
{
  x.a=i+1;
  x.b=x.a+2;
  j=x.b+glb;
  y.a=i+glb;
  y.b=y.a+x.a;
  j=y.b+glb;
  x=y;

  if(y.a==x.a) printf(" ----- ok1 ----- \n");
  else         printf(" ----- ng1 ----- \n");

  if(y.b==x.b) printf(" ----- ok2 ----- \n");
  else         printf(" ----- ng2 ----- \n");

}

}
struct tag {
             int a;
             short int b;
           };

int glb;

int 
scrlc11 (void)
{
  struct tag x,subs();
  int i,j;

for(i=0;i<4;i++)
{
  x.a=i+1;
  x.b=x.a+2;
  j=x.a+glb;
  x=subs();

  if(x.a==3 && x.b==2) printf(" ----- ok ----- \n");
  else                 printf(" ----- ng ----- \n");

  j=x.a+i;
  x.a=x.b+1;
}
}

struct tag 
subs (void)
{
struct tag str;

str.a=3;
str.b=2;

return(str);
}
int glb;

int 
scrlc15 (void)
{
  struct tag7 {
                signed long int a :1;
                signed long int b :4;
                signed long int c :8;
              }i4;

  unsigned long long int u8,w1;
    signed long long int i8,w2;
  int i,j;
glb=10;
for(i=0;i<5;i++)
    {
      i4.a=glb;
      i8=i4.a;
      w2=i8+1;
      glb=w2;
    }

if(glb==i8+1) printf(" ----- ok1 ----- \n");
else          printf(" ----- ng1 ----- \n");

for(j=0;j<6;j++)
    {
      i4.b=glb;
      u8=i4.b;
      w1=u8+1;
      glb=w1;
    }
#ifndef PRPTON
if(glb==u8+1) printf(" ----- ok2 ----- \n");
else          printf(" ----- ng2 ----- \n");
#endif

}
int l;

int 
scrlp00 (void)
{
      int sub00();
      l=sub00();
      if( l == 10 ) puts(" OK ");
      else          puts(" NG ");
}

int 
sub00 (void)
{
      int j,k;
      int *p=&k;
      int sum=0;
      for(k=0;k<10;k++) {
        for(j=0;j<10;j++) {
          sum++;
          (*p)++;
        }
      }
      return sum;
}


static int sub1(), sub2(), sub3(), sub4(), sub5();
static int sub6(), sub7(), sub8(), sub9(), sub10();
static int sub11(),sub12(),sub13(),sub14(),sub15();
static int sub16(),sub17(),sub18(),sub19(),sub20();

void 
scrlp01 (void)
{
    int dim[10],i;
    printf("####for######\n");
    for(i=0;i<10;i++) {
      dim[i] = 1;
    }
    printf("####end for######\n");
  i=sub1(dim)+sub2(dim)+sub3(dim)+sub4(dim)+sub5(dim)+
    sub6(dim)+sub7(dim)+sub8(dim)+sub9(dim)+sub10(dim)+
    sub11(dim)+sub12(dim)+sub13(dim)+sub14(dim)+sub15(dim)+
    sub16(dim)+sub17(dim)+sub18(dim)+sub19(dim)+sub20(dim);
    if( i==200 && dim[9] == 30 ) {
      puts("  SCRLP01 OK ");
    }
    else {
      puts("  SCRLP01 NG ");
    }
}

static int 
sub1 (int dim[])
{
    int i;
    printf("####sub1######\n");
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + i;
    }
    return i;
}

static int 
sub2 (int dim[])
{
    int i;
    printf("####sub2######\n");
    for(i=0;i<10;i++) {
      if( ( dim[i] = dim[i] + 1 ) == 0 ) break;
    }
    return i;
}

static int 
sub3 (int dim[])
{
    int i;
    printf("####sub3######\n");
    for(i=0;i<10;i++) {
      if( ( dim[i] = dim[i] + 1 ) == 0 ) break;
    }
    for(i=0;i<10;i++) {
      if( ( dim[i] = dim[i] + 1 ) == 0 ) break;
    }
    return i;
}

int global;

static int 
sub4 (int dim[])
{
    printf("####sub4######\n");
    for(global=0;global<10;global++) {
      dim[global] = dim[global] + 1;
    }
    return global;
}

static int 
sub5 (int dim[])
{
    volatile int i;
    printf("####sub5######\n");
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub6 (int dim[])
{
    static int i;
    printf("####sub6######\n");
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub7 (int dim[])
{
    register int i;
    printf("####sub7######\n");
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub8 (int dim[])
{
    float i;
    printf("####sub8######\n");
    for(i=0.0;i<10.0;i++) {
      dim[(int )i] = dim[(int )i] + 1;
    }
    return (int )i;
}

static int 
sub9 (int dim[])
{
    double i;
    printf("####sub9######\n");
    for(i=0.0;i<10.0;i++) {
      dim[(int )i] = dim[(int )i] + 1;
    }
    return (int )i;
}

static int 
sub10 (int dim[])
{
    struct tag {
      int i;
      int j;
    } str;

    printf("####sub10######\n");
    for(str.i=0;str.i<10;str.i++) {
      dim[str.i] = dim[str.i] + 1;
    }
    return str.i;
}

static int 
sub11 (int dim[])
{
    union tag {
      int i;
      int j;
    } a;

    printf("####sub11######\n");
    for(a.i=0;a.i<10;a.i++) {
      dim[a.i] = dim[a.i] + 1;
    }
    return a.i;
}

static int 
sub12 (int dim[])
{
    unsigned char  i;

    printf("####sub12######\n");
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub13 (int dim[])
{
    char  i;

    printf("####sub13######\n");
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub14 (int dim[])
{
    short int i;

    printf("####sub14######\n");
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub15 (int dim[])
{
    unsigned short int i;

    printf("####sub15######\n");
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub16 (int dim[])
{
    unsigned int i;

    printf("####sub16######\n");
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub17 (int dim[])
{
    struct {
      unsigned int i:31;
      unsigned int j:1;
    } a;

    printf("####sub17######\n");
    for(a.i=0;a.i<10;a.i++) {
      dim[a.i] = dim[a.i] + 1;
    }
    return a.i;
}

static int 
sub18 (int dim[])
{
    char *i;

    printf("####sub18######\n");
    for(i=(char *)0;i<(char *)10;i++) {
      dim[(int )i] = dim[(int )i] + 1;
    }
    return (int )i;
}

static int 
sub19 (int dim[])
{
    int *i,j;
    i=&j;

    printf("####sub19######\n");
    for(*i=0;*i<10;(*i)++) {
      dim[*i] = dim[*i] + 1;
    }
    return *i;
}

static int 
sub20 (int dim[])
{
    int *i,j;
    i=&j;

    printf("####sub20######\n");
    for(j=0;j<10;j++) {
      dim[j] = dim[j] + 1;
    }
    return j;
}


int 
scrlp02r (void)
{
  subr(2);
}
int 
subr (int i)
{
    static int j;
    if( i == 2 ) {
      for(j=0;j<10;j++)
        subr(1);
      if( j == 12 ) {
         puts(" OK \n");
      }
      else {
         puts(" NG \n");
      }
    }
    else
      j=j+3;
}
int *global2;
struct tagaz {
  struct tag1 {
    struct tag2 {
      struct tag3 {
        int a;
        int b;
      } c;
      int d;
    } e;
    int f;
  } g;
  int h;
};

struct tagaz *glb2;

void 
sub2r (void)
{
   static  struct tagaz aaa = { { { { 0,1 } , 0 }, 0 }, 0 };
   struct tagaz *p=&aaa;
   int i,sum=0;
   glb2=p;
   for( i=0;i<10;i++) {
     sum=sum+aaa.g.e.c.b;
     add();
   }
   if( sum == 55 ) puts(" SCRLP02 OK ");
   else            puts(" SCRLP02 NG ");
}
int 
add (void)
{
     (glb2->g.e.c.b)++;
}
void 
sub1r (void)
{
   static struct tagaz aaa = { { { { 1,0 } , 0 }, 0 }, 0 };
   int *p=&aaa.g.e.c.a;
   int i,sum=0;
   global2=p;
   for( i=0;i<10;i++) {
     sum=sum+aaa.g.e.c.a;
     subqr();
   }
   if( sum == 55 ) puts(" SCRLP02 OK");
   else            puts(" SCRLP02 NG ");
}

int 
scrlp02 (void)
{
    int i,sum=0;
    global2 = &i;
    for(i=0;i<10;i++) {
      subqr();
      sum=sum+i;
    }
    if( sum == 25 ) {
      puts(" SCRLP02 OK");
    }
    else {
      puts(" SCRLP02 NG");
    }
    sub1r();
    sub2r();
}

int 
subqr (void)
{
    (*global2)++;
}
int 
scrlp04 (void)
{
    int *p;
    int i,sum=0;
    p = &i;
    for(i=0;i<10;i++) {
      (*p)++;
      sum=sum+i;
    }
    if( sum == 25 ) {
      puts(" OK \n");
    }
    else {
      puts(" NG \n");
    }
}

int 
scrlp05 (void)
{
  subaa(2);
}
int 
subaa (int i)
{
    static int j;
    if( i == 2 ) {
      for(j=0;j<10;j++)
        subaa(1);
      if( j == 12 ) {
         puts(" OK \n");
      }
      else {
         puts(" NG \n");
      }
    }
    else
      j=j+3;
}
int 
scrlp06 (void)
{
    int *p;
    int sum=0;
    struct tag {
      int x,y;
    } i;
    p = &i.x;
    for(i.x=0;i.x<10;i.x++) {
      (*p)++;
      sum=sum+i.x;
    }
    if( sum == 25 ) {
      puts(" OK \n");
    }
    else {
      puts(" NG \n");
    }
}
int 
scrlp07 (void)
{
     int i,dim[10];
     int flag=0;
     for(i=0;i<10;i++) dim[i] = 1;
     for(i=0;i<10;i++) {
       if( dim[i] == 0 ) {
         flag = 1;
         break;
       }
     }
     if( flag == 0 && i == 10 ) {
       puts(" OK \n");
     }
     else {
       puts(" NG \n");
     }
     sub5aa(1);
}
int 
sub5aa (int j)
{
     register int i;
     int dim[10];
     int flag=0;
     if( j ) {
       for(i=0;i<10;i++) dim[i] = 1;
     }
     for(i=0;i<10;i++) {
       if( dim[i] == 0 ) {
         flag = 1;
         break;
       }
     }
     if( flag == 0 && i == 10 ) {
       puts(" OK \n");
     }
     else {
       puts(" NG \n");
     }
     return flag;
}
typedef int logical;
#define false   0
#define true    1
char buf[100];
int 
scrlp09 (void)
{
      nextch();
      expression();
      puts(" OK ");
      return 0;
}
char chr;
int 
nextch (void)
{
      static char  indata[]="A+B+(C+D*E)/2";
      static int   ich=0;
      chr=indata[ich];
      if( chr == 0 ) {
        chr=' ';
        return 0;
      }
      ich=ich+1;
      if( ich == 100 ) ich = 100;
}
int 
expression (void)
{
      char        c;
      term();
      while( chr == '+' || chr == '-' || chr == '|' ) {
        c = chr;
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
      return 0;
}

int 
term (void)
{
      char c;
      factor();
      while( chr == '*' || chr == '/' || chr == '&' ) {
        c = chr;
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
int 
factor (void)
{
      if( 'a'<=chr && chr<='z' ||
          'A'<=chr && chr<='Z' ) {
sprintf(buf,"  MOVE   %c , D0",chr);out(buf);
      }
      else if( '0'<=chr && chr<='9' ) {
sprintf(buf,"  MOVE  #%c , D0",chr);out(buf);
      }
      else if( chr == '(' ) {
        nextch();
        expression();
        if( chr != ')' ) {
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
int 
out (char *c)
{
      static int i=0;
      if( strcmp(c,data[i++]) != 0 ) {
        puts(" NG ");
        printf("%s<<<\n",c);
        printf("%s<<<\n",data[i-1]);
        exit(1);
      }
}

int 
scrlp10 (void)
{
    puts(" OK ");
}
 union tag1cd {
#if INT64
   unsigned __int32   a;
#else
   unsigned int   a;
#endif
   struct tag2cd {
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
     u1.b.b1=u1.b.b1-0x20;
     u1.b.b2=u1.b.b2-0x20;
     u1.b.b3=u1.b.b3-0x20;
     u1.b.b4=u1.b.b4-0x20;
 }
 void 
fun2 (int a) {
     u1.a=u1.a+0x30303030;
 }
 union tag1a {
#if INT64
   unsigned __int32   a;
#else
   unsigned int   a;
#endif
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
     u1a.b.b1=u1a.b.b1-0x20;
     u1a.b.b2=u1a.b.b2-0x20;
     u1a.b.b3=u1a.b.b3-0x20;
     u1a.b.b4=u1a.b.b4-0x20;
 }
 void 
fun2a (int a) {
     u1a.a=u1a.a+0x30303030;
 }
 union tag1b {
#if INT64
   unsigned __int32   a;
#else
   unsigned int   a;
#endif
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
     u1b.b.b1=u1b.b.b1-0x20;
     u1b.b.b2=u1b.b.b2-0x20;
     u1b.b.b3=u1b.b.b3-0x20;
     u1b.b.b4=u1b.b.b4-0x20;
 }
 void 
fun2b (void) {
     u1b.a=u1b.a+0x30303030;
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
  sub1cd();
   else
  printf("********** SCPSI11 TEST  END  **********\n");
}
  int 
sub1cd (void)
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
 }
  s={'a','b',1,2,3,4,5,6,1.0,2.0,3.0,"xyz",L'a'};
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
}

#define GRDMAX    20

struct  GRDTYP {
    int                ref;
    struct  GRDTYP    *grdtp;
} ggrd[GRDMAX];

int 
scqih01 (void)
{
    int             i;
    struct  GRDTYP    *wgrdtp;

    wgrdtp = ggrd;
    for ( i = 0; i < GRDMAX - 1; i++) {
        wgrdtp->ref = i+1;
        wgrdtp->grdtp = wgrdtp++;
    }
    wgrdtp->ref = 0;
    wgrdtp->grdtp = 0;

    for ( i = 0; i < GRDMAX; i++) {
        if(( ggrd[i].ref != (i + 1)) && ( ggrd[i].ref != 0 )){
                printf("SCQIH01  ERROR\n");
                return 0;
        }
    }
    printf("\nSCQIH01  PASS\n");
}

#if INT64
#define int __int32
#endif

#define BSIZE 20

#define ns_1     1
#define ns_2     3
#define ns_3     7
#define ns_4    15
#define ns_5    31
#define ns_6    63
#define ns_7   127
#define ns_r    15

struct  BITFIELD {
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
    unsigned int    bitr:4;
    unsigned int    bit7:7;
    unsigned int    bit6:6;
    unsigned int    bit5:5;
    unsigned int    bit4:4;
    unsigned int    bit3:3;
    unsigned int    bit2:2;
    unsigned int    bit1:1;
#else
    unsigned int    bit1:1;
    unsigned int    bit2:2;
    unsigned int    bit3:3;
    unsigned int    bit4:4;
    unsigned int    bit5:5;
    unsigned int    bit6:6;
    unsigned int    bit7:7;
    unsigned int    bitr:4;
#endif
};

static  unsigned int    ans_setary [BSIZE] = {
    0x00000000, 0xa4420811, 0x48841022, 0xecc61833, 0x11082044,
    0xb54a2855, 0x598c3066, 0xfdce3877, 0x02104088, 0xa6524899,
    0x4a9450aa, 0xeed658bb, 0x131860cc, 0xb75a68dd, 0x5b9c70ee,
    0xffde78ff, 0x00208100, 0xa4628911, 0x48a49122, 0xece69933
};

static unsigned int ans_all = 0xece69933;

void setary();

int 
scqih03 (void)
{
    int i;
    void *tp1;
    unsigned int *tp2;
    struct  BITFIELD    bf, bfary[BSIZE];

    bf.bit1 = ns_1;
    bf.bit2 = ns_2;
    bf.bit3 = ns_3;
    bf.bit4 = ns_4;
    bf.bit5 = ns_5;
    bf.bit6 = ns_6;
    bf.bit7 = ns_7;
    bf.bitr = ns_r;

    setary(bfary);
    for (i = 0; i < BSIZE; i++){
        if ((i % 2) == 0){
            bf.bit1 |= bfary[i].bit1;
            bf.bit2 |= bfary[i].bit2;
            bf.bit3 |= bfary[i].bit3;
            bf.bit4 |= bfary[i].bit4;
            bf.bit5 |= bfary[i].bit5;
            bf.bit6 |= bfary[i].bit6;
            bf.bit7 |= bfary[i].bit7;
            bf.bitr |= bfary[i].bitr;
        }
        else{
            bf.bit1 &= bfary[i].bit1;
            bf.bit2 &= bfary[i].bit2;
            bf.bit3 &= bfary[i].bit3;
            bf.bit4 &= bfary[i].bit4;
            bf.bit5 &= bfary[i].bit5;
            bf.bit6 &= bfary[i].bit6;
            bf.bit7 &= bfary[i].bit7;
            bf.bitr &= bfary[i].bitr;
        }
    }
    tp1 = (void *)&bf;
    tp2 = (unsigned int *)tp1;
    if (*tp2 != ans_all)
        printf("SCQIH03  NG.\n");
    else
        printf("\nSCQIH03  PASS.\n");
}


void 
setary (struct BITFIELD *arpt)
{
    int i;
    void *tp1;
    unsigned int *tp2;

    for ( i = 0; i < BSIZE; i++){
        arpt->bit1 = (i % (ns_1 + 1));
        arpt->bit2 = (i % (ns_2 + 1));
        arpt->bit3 = (i % (ns_3 + 1));
        arpt->bit4 = (i % (ns_4 + 1));
        arpt->bit5 = (i % (ns_5 + 1));
        arpt->bit6 = (i % (ns_6 + 1));
        arpt->bit7 = (i % (ns_7 + 1));
        arpt->bitr = (i % (ns_r + 1));
        tp1 = (void *)arpt;
        tp2 = (unsigned int *)tp1;
        if (*tp2 != ans_setary[i])
            printf("SCQIH03  NG.(in setary(): i=%d)\n", i);
        arpt++;
    }
}

#if INT64
#undef int
#endif


#define A_SIZE 256
#define TRUEA  1
#define FALSEA 0

typedef int BOOL;

struct  R_CODE{
    unsigned char   er_1:1;
    unsigned char   er_2:1;
    unsigned char   er_3:1;
    unsigned char   er_x:5;
};

void cp1(int *);
void cp2(int *);
BOOL check1(struct R_CODE *, int *);
BOOL check2(struct R_CODE *, int *);

int *exv1;  
int *exv2;  
int *pcnv;  

int 
scqih06 (void)
{
    int             elt_count = A_SIZE;
    int             elt_size  = sizeof(int);
    int             array[256];
    int             i;
    struct R_CODE r_code;

    r_code.er_1 = r_code.er_2 = r_code.er_3 = FALSEA;

    if ((exv1 = (int *)calloc( elt_count, elt_size)) == NULL){
        printf("exv1 : calloc error.\n");
        exit(0);
    }
    if ((exv2 = (int *)calloc( elt_count, elt_size)) == NULL){
        printf("exv2 : calloc error.\n");
        exit(0);
    }
    if ((pcnv = (int *)calloc( elt_count, elt_size)) == NULL){
        printf("pcnv : calloc error.\n");
        exit(0);
    }

    for ( i = 0; i < A_SIZE; ++i)
        array[i] = i;
    cp1(array);

    switch( check1(&r_code, array) ){
    case TRUEA:
        break;
    case FALSEA:
        if (r_code.er_1 == TRUEA)
            printf("exv1 : check1 error.\n");
        if (r_code.er_2 == TRUEA)
            printf("exv2 : check1 error.\n");
        if (r_code.er_3 == TRUEA)
            printf("pcnv : check1 error.\n");
        exit(0);
        break;
    }
    cp2(array);

    switch( check2(&r_code, array) ){
    case TRUEA:
        break;
    case FALSEA:
        if (r_code.er_1 == TRUEA)
            printf("exv1 : check2 error.\n");
        if (r_code.er_2 == TRUEA)
            printf("exv2 : check2 error.\n");
        if (r_code.er_3 == TRUEA)
            printf("pcnv : check2 error.\n");
        exit(0);
        break;
    }
    printf("SCQIH06 PASS.\n");
}


void cp1(int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int i;

    for ( i = 0; i < A_SIZE; ++i)
        *(exv1+i) = *(exv2+i) = *(pcnv+i) = *(apt+i);
}

void cp2(int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int i;

    for ( i = 0; i < A_SIZE; ++i){
        *(apt+i) = *(exv1+i);
        *(apt+i) = *(exv2+i);
        *(apt+i) = *(pcnv+i);
    }
}

BOOL check1(struct R_CODE *rcdpt, int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int         i;
    BOOL     e_flag = TRUEA;

    rcdpt->er_1 = rcdpt->er_2 = rcdpt->er_3 = FALSEA;

    for (i = 0; i < A_SIZE; ++i){
        if ( (*apt+i) != *(exv1+i) ){
            e_flag = FALSEA;
            rcdpt->er_1 = TRUEA;
        }
        if ( (*apt+i) != *(exv2+i) ){
            e_flag = FALSEA;
            rcdpt->er_2 = TRUEA;
        }
        if ( (*apt+i) != *(pcnv+i) ){
            e_flag = FALSEA;
            rcdpt->er_3 = TRUEA;
        }
    }
    return (e_flag);
}

BOOL check2(struct R_CODE *rcdpt, int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int         i;
    BOOL     e_flag = TRUEA;

    rcdpt->er_1 = rcdpt->er_2 = rcdpt->er_3 = FALSEA;

    for (i = 0; i < A_SIZE; ++i){
        if ( (*apt+i) != *(exv1+i) ){
            e_flag = FALSEA;
            rcdpt->er_1 = TRUEA;
        }
        if ( (*apt+i) != *(exv2+i) ){
            e_flag = FALSEA;
            rcdpt->er_2 = TRUEA;
        }
        if ( (*apt+i) != *(pcnv+i) ){
            e_flag = FALSEA;
            rcdpt->er_3 = TRUEA;
        }
    }
    return (e_flag);
}

#define TRUEB 1
#define FALSEB 0

#define FUNC_N 9

typedef int BOOLL;

int x_func0(), x_func1(), x_func2(),
    x_func3(), x_func4(), x_func5(),
    x_func6(), x_func7(), x_func8() ;

int 
scqih07 (void)
{
    int i, j, k, l, m, n;
    BOOLL flag;
    static int (*ftbl[])() = {x_func0, x_func1, x_func2,
                              x_func3, x_func4, x_func5,
                              x_func6, x_func7, x_func8};

    flag = TRUEB;
    for (i = 0; i < FUNC_N; ++i){
        j = i;
        k = i;
        l = i;
        m = i;
        n = i;
        if((*ftbl[i])() != i){
            printf("SCQIH07-%d NG.\n", i);
            flag = FALSEB;
        }
    }
    if (flag == TRUEB)
        printf("SCQIH07 PASS.\n");
    else
        printf("SCQIH07 NG.\n");
}

int 
x_func0 (void)
{
    return (0);
}

int 
x_func1 (void)
{
    return (1);
}

int 
x_func2 (void)
{
    return (2);
}

int 
x_func3 (void)
{
    return (3);
}

int 
x_func4 (void)
{
    return (4);
}

int 
x_func5 (void)
{
    return (5);
}

int 
x_func6 (void)
{
    return (6);
}

int 
x_func7 (void)
{
    return (7);
}

int 
x_func8 (void)
{
    return (8);
}
#define TRUEC     1
#define FALSEC    0

typedef int BOOLC;

#define WLONG_INT TRUEC

int 
scqih08 (void)
{
    BOOLC flag;
    int i;
#if WLONG_INT
    long long int lli;
#endif
    long int      li;
    short int     si;
    signed char   c;
#if WLONG_INT
    unsigned long long int ulli;
#endif
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    flag = TRUEC;
#if WLONG_INT
    lli = 1;
    lli = lli << 1;
#endif

    li = 1;
    li = li << 1;

    si = 1;
    si = si << 1;

    c = 1;
    c = c << 1;

#if WLONG_INT
    ulli = 1;
    ulli = ulli << 1;
#endif

    uli = 1;
    uli = uli << 1;

    usi = 1;
    usi = usi << 1;

    uc = 1;
    uc = uc << 1;

#if WLONG_INT
    if (lli  != 2){
        printf("lli  shift error. :%d\n", lli );
        flag = FALSEC;
    }
#endif
    if (li   != 2){
        printf("li   shift error. :%d\n", li );
        flag = FALSEC;
    }
    if (si   != 2){
        printf("si   shift error. :%d\n", si );
        flag = FALSEC;
    }
    if (c    != 2){
        printf("c    shift error. :%d\n", c  );
        flag = FALSEC;
    }
#if WLONG_INT
    if (ulli != 2){
        printf("ulli shift error. :%d\n", ulli);
        flag = FALSEC;
    }
#endif
    if (uli  != 2){
        printf("uli  shift error. :%d\n", uli );
        flag = FALSEC;
    }
    if (usi  != 2){
        printf("usi  shift error. :%d\n", usi );
        flag = FALSEC;
    }
    if (uc   != 2){
        printf("uc   shift error. :%d\n", uc );
        flag = FALSEC;
    }
    if (flag != TRUEC)
        printf("SCQIH08 NG.\n");
    else
        printf("SCQIH08 PASS.\n");
}
#define TRUED     1
#define FALSED    0

#define ASFT2    TRUED

#define I8_CON 4611686018427387904LL
#if INT64 || LONG64 || __x86_64__ || __aarch64__
#define I4_CON 0x4000000000000000L
#else
#define I4_CON 1073741824
#endif
#define I2_CON 16384
#define I1_CON 64
#define U8_CON 9223372036854775808LL
#if INT64 || LONG64 || __x86_64__ || __aarch64__
#define U4_CON 0x8000000000000000L
#else
#define U4_CON 2147483648
#endif
#define U2_CON 32768
#define U1_CON 128

typedef int BOOLD;

BOOLD shftchk1(), shftchk2(), shftchk3(), shftchk4(),
     shftchk5(), shftchk6(), shftchk7(), shftchk8();

int 
scqih09 (void)
{
    int flag;

    flag = TRUED;

    if (shftchk1() != TRUED){
        printf("SCQIH09 #1 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk2() != TRUED){
        printf("SCQIH09 #2 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk3() != TRUED){
        printf("SCQIH09 #3 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk4() != TRUED){
        printf("SCQIH09 #4 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk5() != TRUED){
        printf("SCQIH09 #5 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk6() != TRUED){
        printf("SCQIH09 #6 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk7() != TRUED){
        printf("SCQIH09 #7 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk8() != TRUED){
        printf("SCQIH09 #8 NG.\n\n");
        flag = FALSED;
    }

    if (flag == TRUED)
        printf("SCQIH09 PASS.\n");
    else
        printf("SCQIH09 NG.\n");
}


BOOLD 
shftchk1 (void)
{
    BOOLD flag;
    long int shli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shli = sizeof(lli) * 8 - 2;
    lli = lli << shli;
#endif

    li = 1;
    shli = sizeof(li) * 8 - 2;
    li = li << shli;

    si = 1;
    shli = sizeof(si) * 8 - 2;
    si = si << shli;

    c = 1;
    shli = sizeof(c) * 8 - 2;
    c = c << shli;

#if ASFT2
    ulli = 1;
    shli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shli;
#endif

    uli = 1;
    shli = sizeof(uli) * 8 - 1;
    uli = uli << shli;

    usi = 1;
    shli = sizeof(usi) * 8 - 1;
    usi = usi << shli;

    uc = 1;
    shli = sizeof(uc) * 8 - 1;
    uc = uc << shli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shli error. :%d\n", lli );
        flag = FALSED;
    }
#endif
    if (li   != I4_CON){
        printf("li   shli error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shli error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shli error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shli error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shli error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shli error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shli error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD 
shftchk2 (void)
{
    BOOLD flag;
    short int shsi;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shsi = sizeof(lli) * 8 - 2;
    lli = lli << shsi;
#endif

    li = 1;
    shsi = sizeof(li) * 8 - 2;
    li = li << shsi;

    si = 1;
    shsi = sizeof(si) * 8 - 2;
    si = si << shsi;

    c = 1;
    shsi = sizeof(c) * 8 - 2;
    c = c << shsi;

#if ASFT2
    ulli = 1;
    shsi = sizeof(ulli) * 8 - 1;
    ulli = ulli << shsi;
#endif

    uli = 1;
    shsi = sizeof(uli) * 8 - 1;
    uli = uli << shsi;

    usi = 1;
    shsi = sizeof(usi) * 8 - 1;
    usi = usi << shsi;

    uc = 1;
    shsi = sizeof(uc) * 8 - 1;
    uc = uc << shsi;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shsi error. :%d\n", lli );
        flag = FALSED;
    }
#endif
    if (li   != I4_CON){
        printf("li   shsi error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shsi error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shsi error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shsi error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shsi error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shsi error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shsi error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD 
shftchk3 (void)
{
    BOOLD flag;
    signed char shc;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shc = sizeof(lli) * 8 - 2;
    lli = lli << shc;
#endif

    li = 1;
    shc = sizeof(li) * 8 - 2;
    li = li << shc;

    si = 1;
    shc = sizeof(si) * 8 - 2;
    si = si << shc;

    c = 1;
    shc = sizeof(c) * 8 - 2;
    c = c << shc;

#if ASFT2
    ulli = 1;
    shc = sizeof(ulli) * 8 - 1;
    ulli = ulli << shc;
#endif

    uli = 1;
    shc = sizeof(uli) * 8 - 1;
    uli = uli << shc;

    usi = 1;
    shc = sizeof(usi) * 8 - 1;
    usi = usi << shc;

    uc = 1;
    shc = sizeof(uc) * 8 - 1;
    uc = uc << shc;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shc error. :%d\n", lli );
        flag = FALSED;
    }
#endif
    if (li   != I4_CON){
        printf("li   shc error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shc error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shc error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shc error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shc error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shc error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shc error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD 
shftchk4 (void)
{
    BOOL flag;
    long long int shlli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shlli = sizeof(lli) * 8 - 2;
    lli = lli << shlli;
#endif

    li = 1;
    shlli = sizeof(li) * 8 - 2;
    li = li << shlli;

    si = 1;
    shlli = sizeof(si) * 8 - 2;
    si = si << shlli;

    c = 1;
    shlli = sizeof(c) * 8 - 2;
    c = c << shlli;

#if ASFT2
    ulli = 1;
    shlli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shlli;
#endif

    uli = 1;
    shlli = sizeof(uli) * 8 - 1;
    uli = uli << shlli;

    usi = 1;
    shlli = sizeof(usi) * 8 - 1;
    usi = usi << shlli;

    uc = 1;
    shlli = sizeof(uc) * 8 - 1;
    uc = uc << shlli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shlli error. :%d\n", lli );
        flag = FALSED;
    }
#endif
    if (li   != I4_CON){
        printf("li   shlli error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shlli error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shlli error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shlli error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shlli error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shlli error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shlli error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD 
shftchk5 (void)
{
    BOOLD flag;
    signed char shlli;
    unsigned long int shuli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char          c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shuli = sizeof(lli) * 8 - 2;
    lli = lli << shuli;
#endif

    li = 1;
    shuli = sizeof(li) * 8 - 2;
    li = li << shuli;

    si = 1;
    shuli = sizeof(si) * 8 - 2;
    si = si << shuli;

    c = 1;
    shuli = sizeof(c) * 8 - 2;
    c = c << shuli;

#if ASFT2
    ulli = 1;
    shuli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shuli;
#endif

    uli = 1;
    shuli = sizeof(uli) * 8 - 1;
    uli = uli << shuli;

    usi = 1;
    shuli = sizeof(usi) * 8 - 1;
    usi = usi << shuli;

    uc = 1;
    shuli = sizeof(uc) * 8 - 1;
    uc = uc << shuli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shuli error. :%d\n", lli );
        flag = FALSED;
    }
#endif
    if (li   != I4_CON){
        printf("li   shuli error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shuli error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shuli error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shuli error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shuli error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shuli error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shuli error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD 
shftchk6 (void)
{
    BOOLD flag;
    unsigned short int shusi;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shusi = sizeof(lli) * 8 - 2;
    lli = lli << shusi;
#endif

    li = 1;
    shusi = sizeof(li) * 8 - 2;
    li = li << shusi;

    si = 1;
    shusi = sizeof(si) * 8 - 2;
    si = si << shusi;

    c = 1;
    shusi = sizeof(c) * 8 - 2;
    c = c << shusi;

#if ASFT2
    ulli = 1;
    shusi = sizeof(ulli) * 8 - 1;
    ulli = ulli << shusi;
#endif

    uli = 1;
    shusi = sizeof(uli) * 8 - 1;
    uli = uli << shusi;

    usi = 1;
    shusi = sizeof(usi) * 8 - 1;
    usi = usi << shusi;

    uc = 1;
    shusi = sizeof(uc) * 8 - 1;
    uc = uc << shusi;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shusi error. :%d\n", lli );
        flag = FALSED;
    }
#endif
    if (li   != I4_CON){
        printf("li   shusi error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shusi error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shusi error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shusi error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shusi error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shusi error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shusi error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD 
shftchk7 (void)
{
    BOOLD flag;
    unsigned char shuc;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shuc = sizeof(lli) * 8 - 2;
    lli = lli << shuc;
#endif

    li = 1;
    shuc = sizeof(li) * 8 - 2;
    li = li << shuc;

    si = 1;
    shuc = sizeof(si) * 8 - 2;
    si = si << shuc;

    c = 1;
    shuc = sizeof(c) * 8 - 2;
    c = c << shuc;

#if ASFT2
    ulli = 1;
    shuc = sizeof(ulli) * 8 - 1;
    ulli = ulli << shuc;
#endif

    uli = 1;
    shuc = sizeof(uli) * 8 - 1;
    uli = uli << shuc;

    usi = 1;
    shuc = sizeof(usi) * 8 - 1;
    usi = usi << shuc;

    uc = 1;
    shuc = sizeof(uc) * 8 - 1;
    uc = uc << shuc;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shuc error. :%d\n", lli );
        flag = FALSED;
    }
#endif
    if (li   != I4_CON){
        printf("li   shuc error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shuc error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shuc error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shuc error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shuc error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shuc error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shuc error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD 
shftchk8 (void)
{
    BOOLD flag;
    unsigned long long int shulli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shulli = sizeof(lli) * 8 - 2;
    lli = lli << shulli;
#endif

    li = 1;
    shulli = sizeof(li) * 8 - 2;
    li = li << shulli;

    si = 1;
    shulli = sizeof(si) * 8 - 2;
    si = si << shulli;

    c = 1;
    shulli = sizeof(c) * 8 - 2;
    c = c << shulli;

#if ASFT2
    ulli = 1;
    shulli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shulli;
#endif

    uli = 1;
    shulli = sizeof(uli) * 8 - 1;
    uli = uli << shulli;

    usi = 1;
    shulli = sizeof(usi) * 8 - 1;
    usi = usi << shulli;

    uc = 1;
    shulli = sizeof(uc) * 8 - 1;
    uc = uc << shulli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shulli error. :%d\n", lli );
        flag = FALSED;
    }
#endif
    if (li   != I4_CON){
        printf("li   shulli error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shulli error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shulli error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shulli error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shulli error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shulli error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shulli error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}
#define TRUEE     1
#define FALSEE    0

#define ASFTE2   TRUEE

typedef int BOOLE;

BOOLE shftchk1(), shftchk2(), shftchk3(), shftchk4(),
     shftchk5(), shftchk6(), shftchk7(), shftchk8();
BOOLE shftch8 (void);
BOOLE shftch7 (void);
BOOLE shftch6 (void);
BOOLE shftch5 (void);
BOOLE shftch4 (void);
BOOLE shftch3 (void);
BOOLE shftch2 (void);
BOOLE shftch1 (void);

int 
scqih10 (void)
{
    int flag;

    flag = TRUEE;

    if (shftch1() != TRUEE){
        printf("SCQIH10 #1 NG.\n");
        flag = FALSEE;
    }
    if (shftch2() != TRUEE){
        printf("SCQIH10 #2 NG.\n");
        flag = FALSEE;
    }
    if (shftch3() != TRUEE){
        printf("SCQIH10 #3 NG.\n");
        flag = FALSEE;
    }
    if (shftch4() != TRUEE){
        printf("SCQIH10 #4 NG.\n");
        flag = FALSEE;
    }
    if (shftch5() != TRUEE){
        printf("SCQIH10 #5 NG.\n");
        flag = FALSEE;
    }
    if (shftch6() != TRUEE){
        printf("SCQIH10 #6 NG.\n");
        flag = FALSEE;
    }
    if (shftch7() != TRUEE){
        printf("SCQIH10 #7 NG.\n");
        flag = FALSEE;
    }
    if (shftch8() != TRUEE){
        printf("SCQIH10 #8 NG.\n");
        flag = FALSEE;
    }

    if (flag == TRUEE)
        printf("SCQIH10 PASS.\n");
    else
        printf("SCQIH10 NG.\n");
}


BOOLE 
shftch1 (void)
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (long int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (long int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shli error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shli error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shli error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shli error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shli error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shli error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shli error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shli error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE 
shftch2 (void)
{
    BOOLE flag;
    short int shsi;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (short int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (short int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (short int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (short int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (short int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (short int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (short int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (short int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shsi error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shsi error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shsi error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shsi error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shsi error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shsi error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shsi error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shsi error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE 
shftch3 (void)
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (signed char)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (signed char)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (signed char)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (signed char)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (signed char)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (signed char)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (signed char)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (signed char)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shc error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shc error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shc error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shc error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shc error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shc error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shc error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shc error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE 
shftch4 (void)
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (long long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (long long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (long long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (long long int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (long long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (long long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (long long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (long long int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shlli error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shlli error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shlli error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shlli error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shlli error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shlli error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shlli error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shlli error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE 
shftch5 (void)
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (unsigned long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned long int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (unsigned long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned long int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shuli error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shuli error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shuli error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shuli error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shuli error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shuli error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shuli error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shuli error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE 
shftch6 (void)
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (unsigned short int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned short int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned short int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned short int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (unsigned short int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned short int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned short int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned short int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shusi error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shusi error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shusi error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shusi error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shusi error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shusi error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shusi error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shusi error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE 
shftch7 (void)
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (unsigned char)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned char)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned char)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned char)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (unsigned char)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned char)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned char)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned char)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shuc error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shuc error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shuc error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shuc error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shuc error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shuc error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shuc error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shuc error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE 
shftch8 (void)
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (unsigned long long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned long long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned long long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned long long int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (unsigned long long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned long long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned long long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned long long int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shulli error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shulli error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shulli error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shulli error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shulli error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
    if (uli  != U4_CON){
        printf("uli  shulli error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shulli error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shulli error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}
#define TRUE 0
#define FALSE -1

int nx;
static int errflg = FALSE;
static int colm = 0;
static int res [92][8] = {{ 0, 4, 7, 5, 2, 6, 1, 3},
                          { 0, 5, 7, 2, 6, 3, 1, 4},
                          { 0, 6, 3, 5, 7, 1, 4, 2},
                          { 0, 6, 4, 7, 1, 3, 5, 2},
                          { 1, 3, 5, 7, 2, 0, 6, 4},
                          { 1, 4, 6, 0, 2, 7, 5, 3},
                          { 1, 4, 6, 3, 0, 7, 5, 2},
                          { 1, 5, 0, 6, 3, 7, 2, 4},
                          { 1, 5, 7, 2, 0, 3, 6, 4},
                          { 1, 6, 2, 5, 7, 4, 0, 3},
                          { 1, 6, 4, 7, 0, 3, 5, 2},
                          { 1, 7, 5, 0, 2, 4, 6, 3},
                          { 2, 0, 6, 4, 7, 1, 3, 5},
                          { 2, 4, 1, 7, 0, 6, 3, 5},
                          { 2, 4, 1, 7, 5, 3, 6, 0},
                          { 2, 4, 6, 0, 3, 1, 7, 5},
                          { 2, 4, 7, 3, 0, 6, 1, 5},
                          { 2, 5, 1, 4, 7, 0, 6, 3},
                          { 2, 5, 1, 6, 0, 3, 7, 4},
                          { 2, 5, 1, 6, 4, 0, 7, 3},
                          { 2, 5, 3, 0, 7, 4, 6, 1},
                          { 2, 5, 3, 1, 7, 4, 6, 0},
                          { 2, 5, 7, 0, 3, 6, 4, 1},
                          { 2, 5, 7, 0, 4, 6, 1, 3},
                          { 2, 5, 7, 1, 3, 0, 6, 4},
                          { 2, 6, 1, 7, 4, 0, 3, 5},
                          { 2, 6, 1, 7, 5, 3, 0, 4},
                          { 2, 7, 3, 6, 0, 5, 1, 4},
                          { 3, 0, 4, 7, 1, 6, 2, 5},
                          { 3, 0, 4, 7, 5, 2, 6, 1},
                          { 3, 1, 4, 7, 5, 0, 2, 6},
                          { 3, 1, 6, 2, 5, 7, 0, 4},
                          { 3, 1, 6, 2, 5, 7, 4, 0},
                          { 3, 1, 6, 4, 0, 7, 5, 2},
                          { 3, 1, 7, 4, 6, 0, 2, 5},
                          { 3, 1, 7, 5, 0, 2, 4, 6},
                          { 3, 5, 0, 4, 1, 7, 2, 6},
                          { 3, 5, 7, 1, 6, 0, 2, 4},
                          { 3, 5, 7, 2, 0, 6, 4, 1},
                          { 3, 6, 0, 7, 4, 1, 5, 2},
                          { 3, 6, 2, 7, 1, 4, 0, 5},
                          { 3, 6, 4, 1, 5, 0, 2, 7},
                          { 3, 6, 4, 2, 0, 5, 7, 1},
                          { 3, 7, 0, 2, 5, 1, 6, 4},
                          { 3, 7, 0, 4, 6, 1, 5, 2},
                          { 3, 7, 4, 2, 0, 6, 1, 5},
                          { 4, 0, 3, 5, 7, 1, 6, 2},
                          { 4, 0, 7, 3, 1, 6, 2, 5},
                          { 4, 0, 7, 5, 2, 6, 1, 3},
                          { 4, 1, 3, 5, 7, 2, 0, 6},
                          { 4, 1, 3, 6, 2, 7, 5, 0},
                          { 4, 1, 5, 0, 6, 3, 7, 2},
                          { 4, 1, 7, 0, 3, 6, 2, 5},
                          { 4, 2, 0, 5, 7, 1, 3, 6},
                          { 4, 2, 0, 6, 1, 7, 5, 3},
                          { 4, 2, 7, 3, 6, 0, 5, 1},
                          { 4, 6, 0, 2, 7, 5, 3, 1},
                          { 4, 6, 0, 3, 1, 7, 5, 2},
                          { 4, 6, 1, 3, 7, 0, 2, 5},
                          { 4, 6, 1, 5, 2, 0, 3, 7},
                          { 4, 6, 1, 5, 2, 0, 7, 3},
                          { 4, 6, 3, 0, 2, 7, 5, 1},
                          { 4, 7, 3, 0, 2, 5, 1, 6},
                          { 4, 7, 3, 0, 6, 1, 5, 2},
                          { 5, 0, 4, 1, 7, 2, 6, 3},
                          { 5, 1, 6, 0, 2, 4, 7, 3},
                          { 5, 1, 6, 0, 3, 7, 4, 2},
                          { 5, 2, 0, 6, 4, 7, 1, 3},
                          { 5, 2, 0, 7, 3, 1, 6, 4},
                          { 5, 2, 0, 7, 4, 1, 3, 6},
                          { 5, 2, 4, 6, 0, 3, 1, 7},
                          { 5, 2, 4, 7, 0, 3, 1, 6},
                          { 5, 2, 6, 1, 3, 7, 0, 4},
                          { 5, 2, 6, 1, 7, 4, 0, 3},
                          { 5, 2, 6, 3, 0, 7, 1, 4},
                          { 5, 3, 0, 4, 7, 1, 6, 2},
                          { 5, 3, 1, 7, 4, 6, 0, 2},
                          { 5, 3, 6, 0, 2, 4, 1, 7},
                          { 5, 3, 6, 0, 7, 1, 4, 2},
                          { 5, 7, 1, 3, 0, 6, 4, 2},
                          { 6, 0, 2, 7, 5, 3, 1, 4},
                          { 6, 1, 3, 0, 7, 4, 2, 5},
                          { 6, 1, 5, 2, 0, 3, 7, 4},
                          { 6, 2, 0, 5, 7, 4, 1, 3},
                          { 6, 2, 7, 1, 4, 0, 5, 3},
                          { 6, 3, 1, 4, 7, 0, 2, 5},
                          { 6, 3, 1, 7, 5, 0, 2, 4},
                          { 6, 4, 2, 0, 5, 7, 1, 3},
                          { 7, 1, 3, 0, 6, 4, 2, 5},
                          { 7, 1, 4, 2, 0, 6, 3, 5},
                          { 7, 2, 0, 5, 1, 4, 6, 3},
                          { 7, 3, 0, 2, 5, 1, 6, 4}};

void generate();

int 
scqih02 (void)
{
    int k, x[8], col[8], up[15], down[15];

    nx = 0;
    for( k = 0; k < 8; k++)
        col[k] = TRUE;
    for( k = 0; k < 15; k++)
        up[k] = down[k] = TRUE;
    generate( x, col, up, down);
    if ( errflg == FALSE)
        printf("SCQIH02  PASS.\n");
    else
        printf("SCQIH02  NG.\n");
}


void 
generate (int x[8], int col[8], int up[15], int down[15])
{
    int h, k;

    for( h = 0; h < 8; h++){
        if ((col[h] == TRUE) &&
            (up[nx-h+7] == TRUE) &&
            (down[nx+h] == TRUE) ){
            x[nx] = h;
            col[h] = up[nx-h+7] = down[nx+h] = FALSE;
            nx++;
            if ( nx == 8){
                for (k = 0; k < 8; k++){
                    if ( res[colm][k] != x[k]){
                        printf("ERROR at RES[%3d][%3d]\n",
                               colm, k);
                        errflg = TRUE;
                    }
                }
                colm ++;
            }else
                generate( x, col, up, down);
            nx--;
            col[h] = up[nx-h+7] = down[nx+h] = TRUE;
        }
    }
}

typedef int BOOLF;

#define TRUEA 1
#define FALSEA 0

#define ON   1
#define OFF  0

#define WLONG_INTA FALSEA

#if WLONG_INTA
#   define  SIZE8 3
#   define  SIZE4 7
#   define  SIZE2 15
#   define  SIZE1 31
#else
#   define  SIZE4 15
#   define  SIZE2 15
#   define  SIZE1 31
#endif

struct  TAG{
#if WLONG_INTA
    long long int           i8;
    long long int           ia8[SIZE8];
    unsigned long long int  u8;
    unsigned long long int  ua8[SIZE8];
#endif
    long int                i4;
    long int                ia4[SIZE4];
    unsigned long int       u4;
    unsigned long int       ua4[SIZE4];
    short int               i2;
    short int               ia2[SIZE2];
    unsigned short int      u2;
    unsigned short int      ua2[SIZE2];
    signed char             c1;
    signed char             ca1[SIZE1];
    unsigned char           u1;
    unsigned char           ua1[SIZE1];
};

struct  TAG setst();
BOOLF     chkst();
void        prst256();


int 
scqih04 (void)
{
    struct TAG st256;

    st256 = setst(ON);
    if (chkst(&st256, ON) == FALSEA){
        printf("SCQIH04  NG. (#1)\n");
        exit(0);
    }
    st256 = setst(OFF);
    if (chkst(&st256, OFF) == FALSEA){
        printf("SCQIH04  NG. (#2)\n");
        exit(0);
    }
    printf("SCQIH04  PASS.\n");
}


struct TAG 
setst (BOOLF p_sw)
{
    struct  TAG ret_st;
    int i;

    switch(p_sw){
    case ON:
#if WLONG_INTA
        ret_st.i8 = -1                ;
        ret_st.u8 = 0xffffffffffffffff;
        for (i = 0; i < SIZE8; i++){
            ret_st.ia8[i] = -1              ;
            ret_st.ua8[i] = 0xffffffffffffffff;
        }
#endif
        ret_st.i4 = -1        ;
        ret_st.u4 = 0xffffffff;
        for (i = 0; i < SIZE4; i++){
            ret_st.ia4[i] = -1      ;
            ret_st.ua4[i] = 0xffffffff;
        }
        ret_st.i2 = -1    ;
        ret_st.u2 = 0xffff;
        for (i = 0; i < SIZE2; i++){
            ret_st.ia2[i] = -1  ;
            ret_st.ua2[i] = 0xffff;
        }
        ret_st.c1 = 0xff;
        ret_st.u1 = 0xff;
        for (i = 0; i < SIZE1 - 1; i++){
            ret_st.ca1[i] = -1  ;
            ret_st.ua1[i] = 0xff;
        }
        break;
    case OFF:
#if WLONG_INTA
        ret_st.i8 = 0                 ;
        ret_st.u8 = 0x0000000000000000;
        for (i = 0; i < SIZE8; i++){
            ret_st.ia8[i] = 0               ;
            ret_st.ua8[i] = 0x0000000000000000;
        }
#endif
        ret_st.i4 = 0         ;
        ret_st.u4 = 0x00000000;
        for (i = 0; i < SIZE4; i++){
            ret_st.ia4[i] = 0       ;
            ret_st.ua4[i] = 0x00000000;
        }
        ret_st.i2 = 0     ;
        ret_st.u2 = 0x0000;
        for (i = 0; i < SIZE2; i++){
            ret_st.ia2[i] = 0   ;
            ret_st.ua2[i] = 0x0000;
        }
        ret_st.c1 = 0x00;
        ret_st.u1 = 0x00;
        for (i = 0; i < SIZE1 - 1; i++){
            ret_st.ca1[i] = 0x00;
            ret_st.ua1[i] = 0x00;
        }
        break;
    default:
        printf("SCQIH04 \"setst\"'s argument error.\n");
        exit(0);
    }
    return (ret_st);
}


BOOLF 
chkst (struct TAG *chk_st_p, BOOLF p_sw)
{
    BOOLF ret_chk;
    int     i;

    ret_chk = TRUEA;

    switch (p_sw){
    case ON:
        if(
#if WLONG_INTA
            (chk_st_p->i8 != -1                ) ||
            (chk_st_p->u8 != 0xffffffffffffffff) ||
#endif
            (chk_st_p->i4 != -1        ) ||
            (chk_st_p->u4 != 0xffffffff) ||
            (chk_st_p->i2 != -1    ) ||
            (chk_st_p->u2 != 0xffff) ||
            (chk_st_p->c1 != -1  ) ||
            (chk_st_p->u1 != 0xff)                  ){
            ret_chk = FALSE;
            printf("chkst(on) err - 1 \n");
        }
#if WLONG_INTA
        for (i = 0; i < SIZE8; i++)
            if ((chk_st_p->ia8[i] != -1              ) ||
                (chk_st_p->ua8[i] != 0xffffffffffffffff) ){
                ret_chk = FALSEA;
                printf("chkst(on) err - 2 (array i8 or u8)\n");
            }
#endif
        for (i = 0; i < SIZE4; i++)
            if ((chk_st_p->ia4[i] != -1      ) ||
                (chk_st_p->ua4[i] != 0xffffffff) ){
                ret_chk = FALSEA;
                printf("chkst(on) err - 3 (array i4 or u4)\n");
            }
        for (i = 0; i < SIZE2; i++)
            if ((chk_st_p->ia2[i] != -1 ) ||
                (chk_st_p->ua2[i] != 0xffff) ){
                ret_chk = FALSEA;
                printf("chkst(on) err - 4 (array i2 or u2)\n");
            }
        for (i = 0; i < SIZE1 - 1; i++)
            if ((chk_st_p->ca1[i] != -1  ) ||
                (chk_st_p->ua1[i] != 0xff) ){
                ret_chk = FALSEA;
                printf("chkst(on) err - 5 (array i1 or u1)\n");
            }
        break;
    case OFF:
        if(
#if WLONG_INTA
            (chk_st_p->i8 != 0                 ) ||
            (chk_st_p->u8 != 0x0000000000000000) ||
#endif
            (chk_st_p->i4 != 0         ) ||
            (chk_st_p->u4 != 0x00000000) ||
            (chk_st_p->i2 != 0     ) ||
            (chk_st_p->u2 != 0x0000) ||
            (chk_st_p->c1 != 0x00) ||
            (chk_st_p->u1 != 0x00)                  ){
            ret_chk = FALSEA;
            printf("chkst(off) err - 1 \n");
        }
#if WLONG_INTA
        for (i = 0; i < SIZE8; i++)
            if ((chk_st_p->ia8[i] != 0               ) ||
                (chk_st_p->ua8[i] != 0x0000000000000000) ){
                ret_chk = FALSEA;
                printf("chkst(off) err - 2 (array i8 or u8)\n");
            }
#endif
        for (i = 0; i < SIZE4; i++)
            if ((chk_st_p->ia4[i] != 0       ) ||
                (chk_st_p->ua4[i] != 0x00000000) ){
                ret_chk = FALSEA;
                printf("chkst(off) err - 3 (array i4 or u4)\n");
            }
        for (i = 0; i < SIZE2; i++)
            if ((chk_st_p->ia2[i] != 0   ) ||
                (chk_st_p->ua2[i] != 0x0000) ){
                ret_chk = FALSEA;
                printf("chkst(off) err - 4 (array i2 or u2)\n");
            }
        for (i = 0; i < SIZE1 - 1; i++)
            if ((chk_st_p->ca1[i] != 0x00) ||
                (chk_st_p->ua1[i] != 0x00) ){
                ret_chk = FALSEA;
                printf("chkst(off) err - 5 (array i1 or u1)\n");
            }
        break;
    default:
        printf("SCQIH04 \"chkst\"'s argument error.\n");
        exit(0);
    }
    return (ret_chk);
}


void 
prst256 (struct TAG *pr_st_p)
{
    int i;

#if WLONG_INTA
    printf("st256.i8 = %16x  ", pr_st_p->i8);
    printf("st256.u8 = %16x\n", pr_st_p->u8);
    for (i = 0; i < SIZE8; i++){
        printf("st256.ia8 = %16x  ", pr_st_p->ia8[i]);
        printf("st256.ua8 = %16x\n", pr_st_p->ua8[i]);
    }
#endif
    printf("st256.i4 = %8x  ", pr_st_p->i4);
    printf("st256.u4 = %8x\n", pr_st_p->u4);
    for (i = 0; i < SIZE4; i++){
        printf("st256.ia4 = %8x  ", pr_st_p->ia4[i]);
        printf("st256.ua4 = %8x\n", pr_st_p->ua4[i]);
    }
    printf("st256.i2 = %4x  ", pr_st_p->i2);
    printf("st256.u2 = %4x\n", pr_st_p->u2);
    for (i = 0; i < SIZE2; i++){
        printf("st256.ia2 = %4x  ", pr_st_p->ia2[i]);
        printf("st256.ua2 = %4x\n", pr_st_p->ua2[i]);
    }
    printf("st256.c1 = %2x  ", pr_st_p->c1);
    printf("st256.u1 = %2x\n", pr_st_p->u1);
    for (i = 0; i < SIZE1 - 1; i++){
        printf("st256.ca1 = %2x  ", pr_st_p->ca1[i]);
        printf("st256.ua1 = %2x\n", pr_st_p->ua1[i]);
    }
}
