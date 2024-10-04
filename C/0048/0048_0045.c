
#include <stdio.h>
#include <math.h>
#include <string.h>
int stfunc (int i, int j);
int func (void);
int f79 (void);
int f78 (void);
int f77 (void);
int f76 (void);
int f75 (void);
int f72 (void);
int f71 (void);
int f70 (void);
int f65 (void);
int f64 (void);
int f63 (void);
int f62 (void);
int m3eva079 (void);
int m3eva078 (void);
int m3eva077 (void);
int m3eva076 (void);
int m3eva075 (void);
int m3eva074 (void);
int m3eva073 (void);
int m3eva072 (void);
int m3eva071 (void);
int m3eva070 (void);
int mptest04 (void);
int mptest03 (void);
int mptest01 (void);
int scrgb09 (void);
int scqih13 (void);
int m3eva069 (void);
int m3eva068 (void);
int m3eva067 (void);
int m3eva066 (void);
int m3eva065 (void);
int m3eva064 (void);
int m3eva063 (void);
int m3eva062 (void);
int mptest02 (void);
int 
main (void)
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    m3eva062();
    m3eva063();
    m3eva064();
    m3eva065();
    m3eva066();
    m3eva067();
    m3eva068();
    m3eva069();
    scqih13();
    scrgb09();
    mptest01();
    mptest02();
    mptest03();
    mptest04();
    m3eva070();
    m3eva071();
    m3eva072();
    m3eva073();
    m3eva074();
    m3eva075();
    m3eva076();
    m3eva077();
    m3eva078();
    m3eva079();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}


static int a62;

int 
m3eva062 (void)
{
  int a62=5;
  if( a62==5 && f62() )
   printf("\nM3EVA062 TEST OK \n");
  else
   printf("M3EVA062 TEST NG = %d \n",a62);
  return 0;
}
int 
f62 (void)
{
  if( a62==0 )
   return 1;
  else
   return 0;
}
static int a63;

int 
m3eva063 (void)
{
  int a63;
  a63 = 5;
  if( a63==5 && f63() )
   printf("\nM3EVA063 TEST OK \n");
  else
   printf("M3EVA063 TEST NG = %d \n",a63);
  return 0;
}
int 
f63 (void)
{
  if( a63==0 )
   return 1;
  else
   return 0;
}
static int a64;

int 
m3eva064 (void)
{
  int a64=3;
  char x=0;
  {
    int a64=5;
    if( a64==5 )
       x=1;
    else
       printf("M3EVA064 TEST NG = %d \n",a64);
  }
  if( a64==3 && x==1 && f64() )
    printf("\nM3EVA064 TEST OK \n");
  else
    printf("M3EVA064 TEST NG = %d \n",a64);
  return 0;
}
int 
f64 (void)
{
  if( a64==0 )
   return 1;
  else
   return 0;
}
static int a65;

int 
m3eva065 (void)
{
  int a65=3;
  char x=0;
  {
    int a65;
    a65 = 5;
    if( a65==5 )
     x=1;
    else
     printf("M3EVA065 TEST NG = %d \n",a65);
  }
  if( a65==3 && x==1 && f65() )
    printf("\nM3EVA065 TEST OK \n");
  else
    printf("M3EVA065 TEST NG = %d \n",a65);
  return 0;
}
int 
f65 (void)
{
  if( a65==0 )
   return 1;
  else
   return 0;
}
static int a66;

int 
m3eva066 (void)
{
  struct {
           int a66;
           char b;
         }st66;
  union  {
           int a66;
           char b;
         }un66;
  st66.a66=20;
  un66.a66=30;
  if( a66==0 && st66.a66==20 && un66.a66==30 )
    printf("\nM3EVA066 TEST OK \n");
  else
    printf("M3EVA066 TEST NG \n");
  return 0;
}
static int a67;

int f167( int a67 );
int 
m3eva067 (void)
{
  int f267( int a67 );
  int x=20;
  int y=30;
  if( f167(x) && f267(y) && a67==0 )
   printf("\nM3EVA067 TEST OK \n");
  else
   printf("M3EVA067 TEST NG \n");
  return 0;
}
 int f167( int a67 )
{
  if( a67==20 )
   return 1;
  else
   return 0;
}
 int f267( int a67 )
{
  if( a67==30 )
   return 1;
  else
   return 0;
}
static int a68;

int 
f168 (int a68)
{
  if( a68==20 )
   return 1;
  else
   return 0;
}
int 
f268 (int a68)
{
  if( a68==30 )
   return 1;
  else
   return 0;
}
int 
m3eva068 (void)
{
  int x=20;
  int y=30;
  if( f168(x) && f268(y) && a68==0 )
   printf("\nM3EVA068 TEST OK \n");
  else
   printf("M3EVA068 TEST NG \n");
  return 0;
}
static int a69;
static int a69=10;

int 
m3eva069 (void)
{
  if( a69==10 )
   printf("\nM3EVA069 TEST OK \n");
  else
   printf("M3EVA069 TEST NG \n");
  return 0;
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
    return 0;
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
  return 0;
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
#elif INT64 || LONG64
    unsigned __int32   bf0:4;
    unsigned __int32   bf1:4;
    unsigned __int32   bf2:4;
    unsigned __int32   bf3:4;
    unsigned __int32   bf4:4;
    unsigned __int32   bf5:4;
    unsigned __int32   bf6:4;
    unsigned __int32   bf7:4;
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
#if INT64 || LONG64
    unsigned __int32   uli;
#else
    unsigned long int   uli;
#endif
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
        printf("st1.sc.uli != 0x41200000.  now, st1.sc.uli =%8x\n",
                st1.sc.uli);
        printf("\nSCQIH14  NG.\n");
    }
    else
        printf("\nSCQIH14  PASS.\n");
    return 0;
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
      return 0;
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
  return 0;
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
  return 0;
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
   int func1(struct t1 *),init(int),chk(struct t1 *);
   char  cc;
   int   i,rtc;
   struct t1 *t1p;

   printf("\n***** MPTEST03 START *****\n");
   for( i=0 ; init(i) ; i++);
   for( t1p=&t1a ; t1p != 0 ; t1p = t1p->tp) {
      rtc = func1(t1p);
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
   return 0;
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

int func1(struct t1 *tp)
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
     return 0;
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
static int a70;
static int a70;

int 
m3eva070 (void)
{
  a70 = 10;
  if( f70() )
   printf("\nM3EVA070 TEST OK \n");
  else
   printf("M3EVA070 TEST NG \n");
  return 0;
}
int 
f70 (void)
{
  if( a70==10 )
   return 1;
  else
   return 0;
}
static int a71;

int 
m3eva071 (void)
{
  static int a71=20;
  if( a71==20 && f71() )
   printf("\nM3EVA071 TEST OK \n");
  else
   printf("M3EVA071 TEST NG \n");
  return 0;
}
int 
f71 (void)
{
  if( a71==0 )
   return 1;
  else
   return 0;
}
static int a72;

int 
m3eva072 (void)
{
  static int a72;
  a72 = 20;
  if( a72==20 && f72() )
   printf("\nM3EVA072 TEST OK \n");
  else
   printf("M3EVA072 TEST NG \n");
  return 0;
}
int 
f72 (void)
{
  if( a72==0 )
   return 1;
  else
   return 0;
}
static int a73;

int 
m3eva073 (void)
{
  char x=0;
  {
    static int a73=5;
    if( a73==5 )
       x=1;
    else
       printf("M3EVA073 TEST NG = %d \n",a73);
  }
  if( a73==0 && x==1 )
    printf("\nM3EVA073 TEST OK \n");
  else
    printf("M3EVA073 TEST NG = %d \n",a73);
  return 0;
}
static int a74[2][2];

int 
m3eva074 (void)
{
  char x=0;
  {
    static int a74[2][2];
    a74[1][1] = 5;
    if( a74[1][1]==5 )
       x=1;
    else
       printf("M3EVA074 TEST NG = %d \n",a74[1][1]);
  }
  if( a74[1][1]==0 && x==1 )
    printf("\nM3EVA074 TEST OK \n");
  else
    printf("M3EVA074 TEST NG = %d \n",a74[1][1]);
  return 0;
}
static int a75;
extern int a75;

int 
m3eva075 (void)
{
  a75 = 10;
  if( f75() )
    printf("\nM3EVA075 TEST OK \n");
  else
    printf("M3EVA075 TEST NG = %d \n",a75);
  return 0;
}
int 
f75 (void)
{
  if( a75==10 )
   return 1;
  else
   return 0;
}
static int a76[3];

int 
m3eva076 (void)
{
  extern int a76[3];
  a76[2]=10;
  if( f76() )
    printf("\nM3EVA076 TEST OK \n");
  else
    printf("M3EVA076 TEST NG = %d \n",a76[2]);
  return 0;
}
int 
f76 (void)
{
   if( a76[2]==10 )
    return 1;
   else
    return 0;
}
static int a77[3];

int 
m3eva077 (void)
{
    extern int a77[3];
    a77[2]=10;
    if( f77() )
      printf("\nM3EVA077 TEST OK \n");
    else
      printf("M3EVA077 TEST NG = %d \n",a77[2]);
    return 0;
}
int 
f77 (void)
{
  if( a77[2]==10 )
   return 1;
  else
   return 0;
}
extern int a78;
int a78=10;
int 
m3eva078 (void)
{
  a78+=10;
  if( f78() )
   printf("\nM3EVA078 TEST OK \n");
  else
   printf("M3EVA078 TEST NG = %d \n",a78);
  return 0;
}
int 
f78 (void)
{
  if( a78==20 )
   return 1;
  else
   return 0;
}
extern int a79;
int a79;
int 
m3eva079 (void)
{
  a79 = 10;
  if( f79() )
   printf("\nM3EVA079 TEST OK \n");
  else
   printf("M3EVA079 TEST NG = %d \n",a79);
  return 0;
}
int 
f79 (void)
{
  if( a79==10 )
   return 1;
  else
   return 0;
}
