#include <stdio.h>
int sub5aa (int j);
int subqr (void);
int add (void);
int subr (int i);
int mptest20 (void);
int mptest19 (void);
int mptest18 (void);
int scrlp07 (void);
int scrlp06 (void);
int scrlp05 (void);
int scrlp04 (void);
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
int mptest16 (void);
int mptest15 (void);
int mptest14 (void);
int mptest13 (void);
int mptest12 (void);
int scrlp02 (void);
int scrlp02r (void);
int scrlp00 (void);
int scrlc15 (void);
int subaa (int i);
int main()
{
    void scrlp01();
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    scrlc15();
    scrlp00();
    scrlp01();
    scrlp02r();
    scrlp02();
    mptest12();
    mptest13();
    mptest14();
    mptest15();
    mptest16();
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
    scrlp04();
    scrlp05();
    scrlp06();
    scrlp07();
    mptest18();
    mptest19();
    mptest20();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
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
if(glb==u8+1) printf(" ----- ok2 ----- \n");
else          printf(" ----- ng2 ----- \n");

}
int l;

int 
scrlp00 (void)
{
      int sub();
      l=sub();
      if( l == 10 ) puts(" OK ");
      else          puts(" NG ");
}

int 
sub (void)
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
    for(i=0;i<10;i++) {
      dim[i] = 1;
    }
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
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + i;
    }
    return i;
}

static int 
sub2 (int dim[])
{
    int i;
    for(i=0;i<10;i++) {
      if( ( dim[i] = dim[i] + 1 ) == 0 ) break;
    }
    return i;
}

static int 
sub3 (int dim[])
{
    int i;
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
    for(global=0;global<10;global++) {
      dim[global] = dim[global] + 1;
    }
    return global;
}

static int 
sub5 (int dim[])
{
    volatile int i;
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub6 (int dim[])
{
    static int i;
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub7 (int dim[])
{
    register int i;
    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub8 (int dim[])
{
    float i;
    for(i=0.0;i<10.0;i++) {
      dim[(int )i] = dim[(int )i] + 1;
    }
    return (int )i;
}

static int 
sub9 (int dim[])
{
    double i;
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

    for(a.i=0;a.i<10;a.i++) {
      dim[a.i] = dim[a.i] + 1;
    }
    return a.i;
}

static int 
sub12 (int dim[])
{
    unsigned char  i;

    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub13 (int dim[])
{
    char  i;

    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub14 (int dim[])
{
    short int i;

    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub15 (int dim[])
{
    unsigned short int i;

    for(i=0;i<10;i++) {
      dim[i] = dim[i] + 1;
    }
    return i;
}

static int 
sub16 (int dim[])
{
    unsigned int i;

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

    for(a.i=0;a.i<10;a.i++) {
      dim[a.i] = dim[a.i] + 1;
    }
    return a.i;
}

static int 
sub18 (int dim[])
{
    char *i;

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
struct tag {
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

struct tag *glb2;

void 
sub2r (void)
{
   static  struct tag aaa = { { { { 0,1 } , 0 }, 0 }, 0 };
   struct tag *p=&aaa;
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
   static struct tag aaa = { { { { 1,0 } , 0 }, 0 }, 0 };
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

 static int aaa[5]={1,2,3,4,5};
 struct st {
        int sti;
        char stc;
     };

int 
mptest12 (void)
 {
     int func1( int *i );
     struct st stfunc();
     static int bbb[5]={0,1,2,3,4};
     struct st sss;
     int i;
     sss.sti=0;
     sss.stc='a';
     sss = stfunc(sss,1);
     if((sss.sti!=1)||(sss.stc!='b')) {
        printf(" *** SSS - (1) NG *** SSS.STI=%d, SSS.STC=%c\n",
               sss.sti,sss.stc);
     } else {
        printf(" *** SSS - (1) OK *** \n");
     }
     if(!func1(bbb))
        printf(" *** BBB - OK ***\n");
     else{
        printf(" *** BBB - NG ***\n");
        for(i=0;i<5;printf("     BBB(%d)=%d,",i,bbb[i++]));
     }
     printf("\n ***** MPTEST12 END *****\n");
 }
 int 
func1 (int *ccc)
 {
    int i=0;
    for( ; i<5 ; i++,ccc++) *ccc=*ccc+1;
    for(i=4 ; i>=0 ; i--)
       if(*(--ccc) != aaa[i]) return(1);
    return(0);
 }
 struct st 
stfunc (struct st s, int i)
 {
    s.sti += i;
    s.stc += i;
    return(s);
 }
   void errcheck();
   int *a[5],b,subr1(int b),c,err=0;
int 
mptest13 (void)
     {
        printf("\n*** MPTEST13 -- START ***\n") ;
        b=400 ;
        a[0]=&b ;
        subr1(b);
        c=*a[0] ;
        if(c==400) printf("*** OK c = %d ***\n",c) ;
        else  {   printf("*** NG c = %d ***\n",c) ;
                   err++;
              }
        errcheck();
        printf("\n*** MPTEST13 -- END   ***\n") ;
     }
   int 
subr1 (int d)
     {
        int e ;
        d=d+200;
        a[1]=&d ;
        e=*a[1] ;
        if(e==600) printf("*** OK e = %d ***\n",e) ;
        else  {   printf("*** NG e = %d ***\n",e) ;
                   err++;
              }
     }
 void 
errcheck (void)
 {
      if(err==0)
       {
         printf("***    OK         ***\n");
       }
      else
       {
         printf("***    NG         ***\n");
       }
 }


int 
mptest14 (void)
{
    struct st func(),st0;
    int chk(struct st st0);
    st0 = func();
    if(chk(st0))
      printf(" *** CHK OK ***\n");
    else
      printf(" *** CHK NG ***\n");
    printf(" *****  MPTEST14  END  *****\n");
}
 struct st 
func (void)
{
  struct st s;
    s.sti=1;
    s.stc='a';
    return(s);
}
 int 
chk (struct st s)
{
   if(s.sti!=1)return(0);
   if(s.stc!='a')return(0);
   return(1);
}
   void subr2(int);
   int *a[5],b,c;
int 
mptest15 (void)
     {
        printf("\n*** MPTEST15 -- START ***\n") ;
        b=400 ;
        a[0]=&b ;
        subr2(b);
        c=*a[0] ;
        if(c==400)
         printf("*** MPTEST15 CHECK01 OK ***\n");
        else
         printf("*** MPTEST15 CHECK01 NG ***\n");
        printf("\n*** MPTEST15 -- END   ***\n") ;
     }
   void subr2(int d)
     {
        int e;
        d=d+200;
        a[1]=&d;
        e=*a[1];
        if(e==600)
         printf("*** MPTEST15 CHECK02 OK ***\n");
        else
         printf("*** MPTEST15 CHECK02 NG ***\n");
     }
   int bbb,*subr3(int *),*ggg;
int 
mptest16 (void)
     {
        bbb=10 ;
        ggg=subr3(&bbb) ;
        if(*ggg == 20)
          printf("*** MPTEST16  OK  ***\n") ;
        else
          printf("*** MPTEST16  NG  ***\n") ;
     }
   int *subr3(int *ddd)
     {
         struct  t1  {
            int **aaa[7][5][3]  ;
                     } ccc[4] ;
         *ddd = *ddd + 10 ;
         ccc[0].aaa[0][0][0] = &ddd ;
         ccc[3].aaa[6][4][2] = ccc[0].aaa[0][0][0] ;
         return(*ccc[3].aaa[6][4][2]) ;
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
   struct  t1  {
     int  a ;
     char b ;
               } ;
   int 
func1aa (struct t1 q)
   {
       q.a=q.a+1;
       return(q.a);
   }
int 
mptest18 (void)
   {
       struct t1 p ; int i;
       int func1aa();
       p.a=3 ;
       p.b='9' ;
       i = func1aa(p) ;
       if(i==4)
        printf("\n*** MPTEST18 OK ***\n") ;
       else
        printf("*** MPTEST18 NG ***\n") ;
   }
   static char ok_msg[] = {"*** MPTEST19 *** OK ***"}  ;
   static char ng_msg[] = {"*** MPTEST19 *** NG ***"}  ;
   struct t {
     int  a  ;
     int  b  ;
     } z ,funcaa()  ;
int 
mptest19 (void)
     {
        z=funcaa()  ;
        if(z.a==5 && z.b==7)
          printf("\n%s\n",ok_msg) ;
        else
          printf("%s\n",ng_msg) ;
     }
   struct t 
funcaa (void)
     {
       struct t s ;
       s.a=5  ;
       s.b=7  ;
       return(s) ;
     }
int 
mptest20 (void)
{
   int a[10],b[10],i,j,func3(int i);

   for(i=0;i<10;a[i]=i++);
   for(i=0;i<10;i++){
      b[i]=func3(a[i]);
      if(b[i]+a[i]!=10)
         printf("\n*** MPTEST20 <%2d> NG ***\n",i);
      else
         printf("\n*** MPTEST20 <%2d> OK ***\n",i);
   }
}
 int func3(int i)
{
   return(10-i);
}
