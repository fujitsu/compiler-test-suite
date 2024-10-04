
#include <stdio.h>
int funcc (void);
int funcb (void);
int func8 (void);
int func7 (void);
int func6 (void);
int func5 (void);
int func4 (void);
int func3 (void);
int func50 (void);
int func40 (void);
int func30 (void);
int func2 (void);
int funca (void);
int m3gcdo01 (void);
int m3gass01 (void);
int m3eva337 (void);
int m3eva207 (void);
int scrna01 (void);
int scrlp16 (void);
int mptest05 (void);
int mptest03 (void);
int main()  {

  mptest03();   
  mptest05();   
  scrlp16();    
  scrna01();    
  m3eva207();   
  m3eva337();   
  m3gass01();   
  m3gcdo01();   

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


#include <string.h>

 static int data[20]={18,17,20,9,4,6,1,8,11,7,5,14,19,2,12,3,10,
                           13,15,16};
 int  w_da[20];
 struct st1 {
     int *da_p;
     int *wdap;
     int  n;
 };
 int l_s(struct st1),s_l(struct st1),ave(int * , int);
 int ck(struct st1 *,char,int);
 int errck(int,char),erjl(int *),erjs(int *),erjv(int);

 int 
mptest05 (void)
 {
   struct st1 st;
   int      i,rst[3];
   char *rt;
   static char *sok="OK",
               *sng="NG";

      printf("\n***** MPTEST05 START ***** \n");
      rt=sok;
      st.n=20;
      st.da_p=data;
      st.wdap=w_da;
      memcpy((char *)w_da,(char *)data,80);
      rst[0]=l_s(st);
      memcpy((char *)w_da,(char *)data,80);
      rst[1]=s_l(st);
      memcpy((char *)w_da,(char *)data,80);
      rst[2]=ave(st.wdap,st.n);
      for(i=0;i<3;i++){
         if(rst[i]!=0){
            printf("*** NG  %d \n",i);
            rt=sng;
         }else{
            printf("*** OK  %d \n",i);
         }
      }
      printf("***** MPTEST05  %s ***** \n",rt);
}

int l_s(struct st1 st)
{
     int i,j,*da_p,w,nn ;
     da_p=st.wdap;
     nn=st.n;
     for(i=0;i<st.n;i++){
          for(j=0;j<nn-1;j++){
               if(*da_p < *(da_p+1)){
                    w = *da_p;
                    *da_p = *(da_p+1);
                    *(da_p+1) = w;
               }
               da_p+=1;
          }
          nn-=1;
          da_p=st.wdap;
    }
    return(ck(&st,'l',0));
}

int s_l(struct st1 st)
{
     int i,j,*da_p,w,nn ;
     da_p=st.wdap;
     nn=st.n;
     for(i=0;i<st.n;i++){
          for(j=0;j<nn-1;j++){
               if(*da_p > *(da_p+1)){
                    w = *da_p;
                    *da_p = *(da_p+1);
                    *(da_p+1) = w;
               }
               da_p+=1;
          }
          nn-=1;
          da_p=st.wdap;
    }
    return(ck(&st,'s',0));
}

int ave(int *da,int n)
{
     int s,av,i;
     s=0;
     for(i=0;i<n;i++)
          s=*(da+i)+s;
     av=s*10/n;
     return(ck(0,'a',av));
}

int ck(struct st1 *st,char str,int var)
{
     switch(str){
        case 'l':
          return(errck(erjl(st->wdap),str));
        case 's':
          return(errck(erjs(st->wdap),str));
        case 'a':
          return(errck(erjv(var),str));
        default:
          return(-1);
    }
}

int errck(int jg,char ss)
{
   switch(jg){
     case 0:
       printf("*** OK *** %c ***\n",ss);
       return(0);
     case 1:
       printf("*** NG *** %c ***\n",ss);
       return(1);
     default:
       return(-1);
  }
}

int erjs(int *p)
{
   int i,j;
   for(i=0;i<20;i++){
      if(*(p+i)==i+1) continue;
      else{
        printf(" '' ERJS ''\n");
        for(j=0;j<20;j++)
          printf("   %d = %d,",j,*(p+j));
        printf("\n");
        return(1);
      }
   }
   return(0);
}

int erjl(int *p)
{
   int i,j,k;
   for(i=19,j=1;i>=0;i--,j++){
      if(*(p+i)==j) continue;
      else{
        printf(" '' IN ERJL ''\n");
        for(k=0;k<20;k++)
          printf("   %d = %d,",k,*(p+k));
        printf("\n");
        return(1);
      }
   }
   return(0);
}

int erjv(int a)
{
   if(a==105) return(0);
   printf(" '' IN ERJV ''\n");
   printf("    AVE.=%d \n",a);
   return(1);
}



struct tag1 {
  struct tag2 {
    int a;
    int b;
  } r1;
  struct tag3 {
    int c;
    int d;
  } r2;
};

int 
scrlp16 (void)
{
          struct tag1 st;
          struct tag1 init = {
                                 { 12345, 12345 },
                                 { 12345, 12345 }
                             };
          int count;

          for(count=0,st.r1.a = 0; st.r1.a < 10;count++,st.r1.a++ ) {
            st = init;
          }
          if( count == 1 ) puts(" SCRLP16 OK1 ");
          else             puts(" SCRLP16 NG1 ");
          for(count=0,st.r1.b = 0; st.r1.b < 10;count++,st.r1.b++ ) {
            st = init;
          }
          if( count == 1 ) puts(" SCRLP16 OK2 ");
          else             puts(" SCRLP16 NG2 ");
          for(count=0,st.r2.c = 0; st.r2.c < 10;count++,st.r2.c++ ) {
            st = init;
          }
          if( count == 1 ) puts(" SCRLP16 OK3 ");
          else             puts(" SCRLP16 NG3 ");
          for(count=0,st.r2.d = 0; st.r2.d < 10;count++,st.r2.d++ ) {
            st = init;
          }
          if( count == 1 ) puts(" SCRLP16 OK4 ");
          else             puts(" SCRLP16 NG4 ");
}

#define  array_max   49
#define  use         '1'
#define  wave        5
#define  mask1       0x7000
#define  mask2       0x3000
#define  tmask       0x4000
struct insidetr{
        unsigned short int attr1 :1;
        unsigned short int attr2 :1;
        unsigned short int attr3 :1;
} *ptr;
struct inside {
       char used;
       int  value;
       struct insidetr  atrbt;
 } ws[array_max+1];
 int 
scrna01 (void)
 {
 int i,count;
 struct    inside   *p;
 unsigned  short  *q;
     for(i=0; i < array_max ; i++){
          p = &ws[i];
          if(i%2 == 0) {
               p->used  = use;
               p->value = i*wave;
               q=(unsigned short *)(&(p->atrbt));
               *q=mask1;
          }
          else
               p->value = i;
               q=(unsigned short *)(&(p->atrbt));
               *q = mask2;
     }
     for(count=0,i=0; i < array_max ; i++){
          p = &ws[i];
          if(p->used == use){
               q=(unsigned short *)(&(p->atrbt));
               if(*q & tmask)
                  count ++;
          }
    }
    if (count = 25) printf(" ok ");
    else            printf(" ng ");
 }


#ifdef v10
int 
main (void)
{
      int x;

      x = -3 + 4 * 5 - 6; printf("%d\n",x);
      x = 3 + 4 % 5 - 6;  printf("%d\n",x);
      x = -3 * 4 % - 6 /5;printf("%d\n",x);
      x = ( 7 + 6 ) % 5 /2; printf("%d\n",x);
}
#else
int 
scrpz01 (void)
{
      int x;

      x = -3 + 4 * 5 - 6;   if( x != 11 ) puts(" NG ");
      x = 3 + 4 % 5 - 6;    if( x != 1 ) puts(" NG ");
      x = -3 * 4 % - 6 /5;  if( x != 0 ) puts(" NG ");
      x = ( 7 + 6 ) % 5 /2; if( x != 1 ) puts(" NG ");
      puts(" SCRPZ01 PASS ");
}
#endif

int 
f (void)
{
  {
    static int a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}

int 
m3eva207 (void)
{
  static int a=20;
  if( a==20 && f() )
      printf("M3EVA207 TEST OK \n");
    else
      printf("M3EVA207 TEST NG = %d \n",a);
}


static int a;
extern int a=10;
int 
m3eva337 (void)
{
  if( a==10 )
   printf("M3EVA337 RECOV OK \n");
  else
   printf("M3EVA337 RECOV NG = %d \n",a);
}

int 
m3gass01 (void)
{
  printf("M3GASS01 START\n");
  funca();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  printf("M3GASS01 END  \n");
}
int 
funca (void){
  volatile int a,ar[5]={0};
           int b,br[5]={0};
  volatile int *ap=ar;
  int *bp=br;
  a=ar[0];
  b=a+1;
  br[0]=b;
  ar[b&&1]=1+br[0];
  if (ar[1]==2)
    printf("M3GASS01 FUNCA OK\n");
  else
    printf("M3GASS01 FUNCA NG; AR[1]=%d\n",ar[1]);
}
int 
func2 (void){
  volatile struct stag {
    int aa;
  } sta;
  volatile struct stag stb;
  volatile union utag{
    int aa;
  } una;
  volatile union  utag unb;

  stb.aa=1;
  unb.aa=1;
  stb=stb;
  sta=stb;
  unb=unb;
  una=unb;
  if (sta.aa==1 && una.aa==1)
    printf("M3GASS01 FUNC2 OK\n");
  else  {
    printf("M3GASS01 FUNC2 NG\n");
    printf("STA.AA=%d\n",sta.aa);
    printf("UNA.AA=%d\n",una.aa);
  }
}
int 
func3 (void){
  volatile int a,ar[5]={0};
           int b,br[5]={0};
  volatile int *ap=ar;
  int *bp=br;
  ap=bp;
  ap=ap+0;
  bp=bp+0;

  if (*ap==0 && *bp==0)
    printf("M3GASS01 FUNC3 OK\n");
  else  {
    printf("M3GASS01 FUNC3 NG\n");
    printf("*AP=%d\n",*ap);
    printf("*BP=%d\n",*bp);
  }
}
int 
func4 (void){
    void *vp;
    int a=1;
    int *ap  ;
    ap = &a ;

    vp=ap;
    ap=vp;
  if (*ap==1)
    printf("M3GASS01 FUNC4 OK\n");
  else  {
    printf("M3GASS01 FUNC4 NG\n");
    printf("*AP=%d\n",*ap);
    }
}
int 
func5 (void){
    volatile  int *vpq;
    volatile int aq=1;
    volatile int*apq  ;
    apq= &aq;

    vpq=apq;
    apq=vpq;
  if (*apq==1)
    printf("M3GASS01 FUNC5 OK\n");
  else  {
    printf("M3GASS01 FUNC5 NG\n");
    printf("*APQ=%d\n",*apq);
    }
}
volatile  static int arq[1];
int 
func6 (void){
    volatile  int *vpq;
    volatile  int *apq=arq;
    vpq=apq;
    apq=vpq;
    {
      volatile extern int arq[1];
      arq[0]=1;
    }
  if (*apq==1)
    printf("M3GASS01 FUNC6 OK\n");
  else  {
    printf("M3GASS01 FUNC6 NG\n");
    printf("*APQ=%d\n",*apq);
  }
}
static int ar[1];
int 
func7 (void){
    void *vp;
    int * ap=ar;
    vp=ap;
    ap=vp;
    {
      extern int ar[1];
      ar[0]=1;
    }
  if (*ap==1 )
    printf("M3GASS01 FUNC7 OK\n");
  else  {
    printf("M3GASS01 FUNC7 NG\n");
    printf("*AP=%d\n",*ap);
    }
}
int 
func8 (void){
  int *ap   ;
  ap=0;

  if (ap==0)
    printf("M3GASS01 FUNC8 OK\n");
  else {
    printf("M3GASS01 FUNC8 NG\n");
    printf("AP=%d\n",ap);
    }
}


int 
m3gbit01 (void)
{


   printf("*** M3GARI01 ** MK3 TEST ** STARTED ***\n");



{ 
   struct ST11 {
      char          :0;
      int   a, b, c, d;
   } st11 = { 1, 2, 3, 4 };


   if ((sizeof(st11) == 4*4) && (st11.d == 4))
      printf("*** M3GBIT01 - 01 ** OK ***\n");
   else
      printf("=== M3GBIT01 - 01 == NG ===\n");
} 


{ 
   struct ST21 {
      char  :0;
      int   :0;
      short :0;
      int   :0;
      int   :0;
      char a:1;
   } st21;


   if (sizeof(st21) == 4)
      printf("*** M3GBIT01 - 02 ** OK ***\n");
} 


{ 
   struct ST31 {
      char   a;
      int    b;
      short  c;
      int    d;
      int    e;
   } st31 = { 1, 2, 3, 4, 5 };


   if ((sizeof(st31) == 4*5) && (st31.e == 5))
      printf("*** M3GBIT01 - 03 ** OK ***\n");
   else
      printf("=== M3GBIT01 - 03 == NG ===\n");
} 


{ 
   struct ST41 {
      int  a;
      struct ST42 {
         char  b;
         struct ST43 {
            int   :0;
            char   c;
            short  d, e;
         } st43;
      } st42;
   } st41 = { 1, 2, 3, 4, 5 };


   if ((sizeof(st41) == 4*4) && (st41.st42.st43.e == 5))
      printf("*** M3GBIT01 - 04 ** OK ***\n");
   else
      printf("=== M3GBIT01 - 04 == NG ===\n");
} 


{ 
   struct ST51 {
      int  a;
      struct ST52 {
         char  b;
      } st52;
   } st51 = { 1, 2 };


   if ((sizeof(st51) == 4*2) && (st51.st52.b == 2))
      printf("*** M3GBIT01 - 05 ** OK ***\n");
   else
      printf("=== M3GBIT01 - 05 == NG ===\n");
} 


{ 
   struct ST61 {
      short  a;
      struct ST62 {
         char  :0;
         struct ST63 {
            char  :0;
            short b, c;
            int   d, e;
         } st63;
      } st62;
   } st61 = { 1, 2, 3, 4, 5 };


   if ((sizeof(st61) == 4*4) && (st61.st62.st63.e == 5))
      printf("*** M3GBIT01 - 06 ** OK ***\n");
   else
      printf("=== M3GBIT01 - 06 == NG ===\n");
} 


{ 
   struct ST71 {
      char  a;
      struct ST72 {
         short  :0;
         char   b;
         struct ST73 {
            int  :0;
            short c;
            char  d, e ,f ;
         } st73;
      } st72;
   } st71 = { 1, 2, 3, 4, 5 };


   if ((sizeof(st71) == 4*4) && (st71.st72.st73.e == 5))
      printf("*** M3GBIT01 - 07 ** OK ***\n");
   else
      printf("=== M3GBIT01 - 07 == NG ===\n");
} 


{ 
   struct ST81 {
      short  a;
      struct ST82 {
         int   :0;
         short  b;
         struct ST83 {
            char  :0;
            char  c, d;
            short e;
         } st83;
      } st82;
   } st81 = { 1, 2, 3, 4, 5 };


   if ((sizeof(st81) == 4*3) && (st81.st82.st83.e == 5))
      printf("*** M3GBIT01 - 08 ** OK ***\n");
   else
      printf("=== M3GBIT01 - 08 == NG ===\n");
} 


{ 
   struct ST91 {
      short  a;
      struct ST92 {
         int   b;
         struct ST93 {
            short c, d, e;
         } st93;
      } st92;
   } st91 = { 1, 2, 3, 4, 5 };


   if ((sizeof(st91) == 4*4) && (st91.st92.st93.e == 5))
      printf("*** M3GBIT01 - 09 ** OK ***\n");
   else
      printf("=== M3GBIT01 - 09 == NG ===\n");
} 

   printf("******* M3GARI01 TEST ENDED *******\n");
}

int 
m3gcdo01 (void)
{
  printf("M3GCDO01 START\n");
  funcb();
  funcc();
  func30();
  func40();
  printf("M3GCDO01 END  \n");
}
int 
funcb (void){
  static int i=0;
  static short int s=1;
  static char  c=2;
  static unsigned int ui=3;
  static unsigned short int us=4;
  static unsigned char   uc=5;
  int ia;
  short int sa;
  unsigned int uia;
  unsigned short int usa;
  unsigned char uca;

  ia=(i)?s:ui;sa=(i+s)?i:uc;
  if (ia=ui && sa==i)
    printf("M3GCDO01 FUNCB OK\n");
  else
    printf("M3GCDO01 FUNCB NG\n");
}
int 
funcc (void){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;

  ia=(i+s)?(i+i):(c*c);sa=(i*i)?(s*s):(s*c/s);
  ca=(us[0])?(*(ip-i+i)):(uc[1]);
  uia=(*(sp+s-2))?(us[c-s]):(*(sp+i));
  usa=(f())?(f()):(f()+1);

  if (ia==0 && sa==3 && ca==0 && uia==5 && usa==1)
    printf("M3GCDO01 FUNCC OK\n");
  else
    printf("M3GCDO01 FUNCC NG\n");
}
int 
ff (void)
{
   return 1;
}
int 
func30 (void){
  static int i=1,*ip=&i;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static struct tag{ int a;} st={1},*stp=&st;
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;

  ia=(i||i)?(ui[0]||(*stp).a):(s||s);
  sa=(i&&ui[1])?(s&&s):(st.a&&uc[3]);

  if (ia=i+i)
    printf("M3GCDO01 FUNC30 OK\n");
  else
    printf("M3GCDO01 FUNC30 NG\n");
}
int 
func40 (void){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  int ia;
  short int sa;
  char  ca;
  double da;
  unsigned short int usa;
  unsigned char   uca;

  ia=(i||(i&&i))?(0+0+0):(5+5*4/6%3);
  da=(ar[i]&&((c-c)||*(ar+1)))?((float)1.0):((double)2);

  if (ia==0 && da==2.0)
    printf("M3GCDO01 FUNC4 OK\n");
  else
    printf("M3GCDO01 FUNC4 NG\n");
}
int 
func50 (void){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  int ia;
  short int sa;
  char  ca;
  double da;
  unsigned short int usa;
  unsigned char   uca;

  ia=(i?i:i)?(i?(ar[3]):(ui+ui)):((s+s)?(uc+uc):(us+us));
  da=(ar[0]?uc:ar[1])?((i||i)?ui:ui):(ar[0]?uc:ui);

  if (ia==1 && da==4)
    printf("M3GCDO01 FUNC50 OK\n");
  else
    printf("M3GCDO01 FUNC50 NG\n");
}
