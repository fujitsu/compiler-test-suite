#include <stdio.h>
#include <string.h>
int scrlc09 (void);
int scrlc04 (void);
int mptest29 (void);
int mptest28 (void);
int mptest27 (void);
int mptest26 (void);
int mptest23 (void);
int mptest22 (void);
int mptest21 (void);
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
int mptest25 (void);
int mptest30();
int main()
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
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
    mptest21();
    mptest22();
    mptest23();
    mptest25();
    mptest26();
    mptest27();
    mptest28();
    mptest29();
    mptest30();
    scrlc04();
    scrlc09();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
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
  return 0;
}
  void func1(),func3(),func5();
  int *func2(),func4();
int 
mptest21 (void)
  {
       func1();
       func3();
       func5();
       return 0;
  }
  void 
func1 (void)
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
#if __x86_64__ || __aarch64__
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
#if __x86_64__ || __aarch64__
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
#if __x86_64__ || __aarch64__
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
        static void   fun1(struct dmytag *x,struct dmytag *y) ;
        static int    fun2(struct dmytag *x,struct dmytag *y) ;
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
        fun1(&aa,&bb) ;
        aaa = fun2(&bb,&aa) ;
        if (aaa==strlen(&bb)
        && (bbb=memcmp(&bb,&aa,sizeof(struct dmytag)))==0) {
         printf("\n*** mptest25 ok ***\n") ;
        } else {
         printf("*** mptest25 ng *** %d \n",aaa) ;
         printf("                    %d \n",bbb) ;
        }
	return 0;
}
static void 
fun1 (struct dmytag *x, struct dmytag *y)
{
        x->a=1 ;
        strcpy (x,y);
        x->a+=1 ;
}
static int 
fun2 (struct dmytag *x, struct dmytag *y)
{
        y->a=x->a ;
        memcpy (y,x,sizeof(struct dmytag));
        x->a=y->a ;
        return strlen(y) ;
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
    memset(cc,'\0',9);
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

  int mptest28 (void)
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
int scrlc04 (void)
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
 return 0;
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
 return 0;
}
