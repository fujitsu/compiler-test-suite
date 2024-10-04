
#include <stdio.h>
#include <setjmp.h>
#include <string.h>
#include <math.h>
int f39 (void);
int f38 (void);
int f34 (void);
int f33 (void);
int f32 (void);
int scrlc02 (void);
int scrlc01 (void);
int scrgb09 (void);
int scqih13 (void);
int m3mpcm06 (void);
int m3mpcm05 (void);
int m3mpcm04 (void);
int m3mpcm03 (void);
int m3eva040 (void);
int m3eva039 (void);
int m3eva038 (void);
int m3eva037 (void);
int m3eva036 (void);
int m3eva035 (void);
int m3eva034 (void);
int m3eva033 (void);
int m3eva032 (void);
int m3eva031 (void);
int m3eva030 (void);
int m3eva028 (void);
int m3eva027 (void);
int m3eva026 (void);
int m3eva025 (void);
int m3eva024 (void);
int m3eva023 (void);
int m3eva022 (void);
int m3eva021 (void);
int 
main (void)
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
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
    m3eva032();
    m3eva033();
    m3eva034();
    m3eva035();
    m3eva036();
    m3eva037();
    m3eva038();
    m3eva039();
    m3eva040();
    m3mpcm03();
    m3mpcm04();
    m3mpcm05();
    m3mpcm06();
    scqih13();
    scrgb09();
    scrlc01();
    scrlc02();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}

static int a21=10;

int f121( int a21 );
int 
m3eva021 (void)
{
  int f221( int a21 );
  int x=20;
  int y=30;
  if( f121(x) && f221(y) && a21==10 )
   printf("\nM3EVA021 TEST OK \n");
  else
   printf("M3EVA021 TEST NG \n");
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

int 
f122 (int a22)
{
  if( a22==20 )
   return 1;
  else
   return 0;
}
int 
f222 (int a22)
{
  if( a22==30 )
   return 1;
  else
   return 0;
}
int 
m3eva022 (void)
{
  int x=20;
  int y=30;
  if( f122(x) && f222(y) && a22==10 )
   printf("\nM3EVA022 TEST OK \n");
  else
   printf("M3EVA022 TEST NG \n");
}
static int a23=10;

int 
m3eva023 (void)
{
  static int a23=20;
  if( a23==20 )
   printf("\nM3EVA023 TEST OK \n");
  else
   printf("M3EVA023 TEST NG \n");
}
static int a24=10;

int 
m3eva024 (void)
{
  static int a24;
  a24 = 20 ;
  if( a24==20 )
   printf("\nM3EVA024 TEST OK \n");
  else
   printf("M3EVA024 TEST NG \n");
}
static int a25=10;

int 
m3eva025 (void)
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
}
static int a26=10;

int 
m3eva026 (void)
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
}
static int a27[3]={10,10,10};

extern int a27[3];
int 
m3eva027 (void)
{
  if( a27[2]==10 )
    printf("\nM3EVA027 TEST OK \n");
  else
    printf("M3EVA027 TEST NG = %d \n",a27[2]);
}
static int a28[3]={10,10,10};

int 
m3eva028 (void)
{
  extern int a28[3];
  if( a28[2]==10 )
    printf("\nM3EVA028 TEST OK \n");
  else
    printf("M3EVA028 TEST NG = %d \n",a28[2]);
}
extern int a30=10;
int a30;
int 
m3eva030 (void)
{
  if( a30==10 )
   printf("\nM3EVA030 TEST OK \n");
  else
   printf("M3EVA030 TEST NG = %d \n",a30);
}
extern int a31=10;

int 
m3eva031 (void)
{
  int a31=5;
  if( a31==5 )
   printf("\nM3EVA031 TEST OK \n");
  else
   printf("M3EVA031 TEST NG = %d \n",a31);
}
extern int a32=10;

int 
m3eva032 (void)
{
  int a32;
  a32 = 5;
  if( a32==5 && f32() )
   printf("\nM3EVA032 TEST OK \n");
  else
   printf("M3EVA032 TEST NG = %d \n",a32);
}
int 
f32 (void)
{
  if( a32==10 )
   return 1;
  else
   return 0;
}
extern int a33=10;

int 
m3eva033 (void)
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
}
int 
f33 (void)
{
  if( a33==10 )
   return 1;
  else
   return 0;
}
extern int a34=10;

int 
m3eva034 (void)
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
}
int 
f34 (void)
{
  if( a34==10 )
   return 1;
  else
   return 0;
}
extern int a35=10;

int 
m3eva035 (void)
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
}
extern int a36=10;

int f136( int a36 );
int 
m3eva036 (void)
{
  int f236( int a36 );
  int x=20;
  int y=30;
  if( f136(x) && f236(y) && a36==10 )
   printf("\nM3EVA036 TEST OK \n");
  else
   printf("M3EVA036 TEST NG \n");
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

int 
f137 (int a37)
{
  if( a37==20 )
   return 1;
  else
   return 0;
}
int 
f237 (int a37)
{
  if( a37==30 )
   return 1;
  else
   return 0;
}
int 
m3eva037 (void)
{
  int x=20;
  int y=30;
  if( f137(x) && f237(y) && a37==10 )
   printf("\nM3EVA037 TEST OK \n");
  else
   printf("M3EVA037 TEST NG \n");
}
extern int a38=10;

int 
m3eva038 (void)
{
  static int a38=20;
  if( a38==20 && f38() )
   printf("\nM3EVA038 TEST OK \n");
  else
   printf("M3EVA038 TEST NG \n");
}
int 
f38 (void)
{
  if( a38==10 )
   return 1;
  else
   return 0;
}
extern int a39=10;

int 
m3eva039 (void)
{
  static int a39;
  a39 = 20;
  if( a39==20 && f39() )
   printf("\nM3EVA039 TEST OK \n");
  else
   printf("M3EVA039 TEST NG \n");
}
int 
f39 (void)
{
  if( a39==10 )
   return 1;
  else
   return 0;
}
extern int a40=10;

int 
m3eva040 (void)
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
}
 int   outi1,outi2;
int 
m3mpcm03 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
   pi=&ai;
   fi=*pi;
   if(bi==20) {
    *pi=15;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("error of a-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("error of a-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of a-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=ai+bi;
   if(bi==20) {
     *pi=15;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("error of c-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of c-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of c-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=bi+(*pi);
   if(bi==20) {
     ai=15;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of b-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of b-2:ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-2\n");
     }
   }
   ai=10;
 }
#if INT64
#define int __int32
#endif

 int   outi1a,outi2a;
 float outf1a,outf2a;
int 
m3mpcm04 (void)
 {
   int *pi,*qi;
   int ai,bi,ci,di,ei,fi;
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
   union alis  xu;
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
   if(ci==30) {
     xu.xi=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-1 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-1 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-1\n");
     }
   }
   ai=10;
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     pu->xi=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-2 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-2 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-2\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     pu->xf=200.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=pu->xf+bi;
     printf("error of b-1-3 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000 && ei!=0x43480000) 
     {
       printf("error of b-1-3 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-3\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.xf=200.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=xu.xf+bi;
     printf("error of b-1-4 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000 && ei!=0x43480000) 
     {
       printf("error of b-1-4 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-4\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.cc[0]=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-5 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-5 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-5\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     pu->cc[0]=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-6 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-6 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-6\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.xi=200;
   }
   ei=pu->as.aa[0];
   if(ei!=200) {
     printf("error                 \n");
   }
 }
#if INT64
#undef int
#endif
 int   outi1b,outi2b;
int 
m3mpcm05 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   float af;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
   pi=&ai;
   fi=*pi;
   *pi=15;
   if(bi==20) {
     af=20.0;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("error of a-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("error of a-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of a-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=ai+bi;
   *pi=15;
   if(bi==20) {
     af=20.0;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("error of c-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of c-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of c-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=bi+(*pi);
   ai=15;
   if(bi==20) {
     af=20.0;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of b-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of b-2:ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-2\n");
     }
   }
   ai=10;
 }
#if INT64
#define int __int32
#endif
 int   outi1c,outi2c;
 float outf1c,outf2c;
int 
m3mpcm06 (void)
 {
   int *pi,*qi;
   int ai,bi,ci,di,ei,fi;
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
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-1 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-1 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-1\n");
     }
   }
   ai=10;
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->xi=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-2 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-2 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-2\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->xf=200.0;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=pu->xf+bi;
     printf("error of b-1-3 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000 && ei!=0x43480000) 
     {
       printf("error of b-1-3 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-3\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xf=200.0;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=xu.xf+bi;
     printf("error of b-1-4 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000 && ei!=0x43480000) 
     {
       printf("error of b-1-4 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-4\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.cc[0]=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-5 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-5 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-5\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->cc[0]=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-6 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-6 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-6\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xi=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   if(ei!=200) {
     printf("error                 \n");
   }
 }
#if INT64
#undef int
#endif

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
    double rand();
    int i;

    for (i = 0; i < ARRAY_MAX; ++i){
        s1[i].right = s1[i].left = 0;
        s1[i].member = rand();
    }
}


double 
rand (void)
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
#if _WIN32
    unsigned long int   bf7:4;
    unsigned long int   bf6:4;
    unsigned long int   bf5:4;
    unsigned long int   bf4:4;
    unsigned long int   bf3:4;
    unsigned long int   bf2:4;
    unsigned long int   bf1:4;
    unsigned long int   bf0:4;
#else
    unsigned long int   bf0:4;
    unsigned long int   bf1:4;
    unsigned long int   bf2:4;
    unsigned long int   bf3:4;
    unsigned long int   bf4:4;
    unsigned long int   bf5:4;
    unsigned long int   bf6:4;
    unsigned long int   bf7:4;
#endif
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
    st1.sc.fl     = 1.000000000000000;
    st1.sc.bf.bf2 = 2;
    if (st1.sc.uli != 0x41200000){
        printf("st1.sc.uli != 0x41200000.  now, sc1.sc.uli =%8x\n",
                st1.sc.uli);
        printf("\nSCQIH14  NG.\n");
    }
    else
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
