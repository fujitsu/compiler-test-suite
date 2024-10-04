
#include <stdio.h>
#include <string.h>
int sub5aa (int j);
int subqr (void);
int add (void);
int mptest10 (void);
int mptest09 (void);
int mptest08 (void);
int m3etre63 (void);
int m3etre62 (void);
int m3etre61 (void);
int scrlp07 (void);
int scrlp06 (void);
int scrlp05 (void);
int scrlp04 (void);
int scrlp02 (void);
int scrlp02r (void);
int scrlp00 (void);
int scrlc15 (void);
int subr (int i);
int subaa (int i);
int chk (void);
int 
main (void)
{
    void scrlp01();
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    scrlc15();
    scrlp00();
    scrlp01();
    scrlp02r();
    scrlp02();
    scrlp04();
    scrlp05();
    scrlp06();
    scrlp07();
    m3etre61();
    m3etre62();
    m3etre63();
    mptest08();
    mptest09();
    mptest10();
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
int 
m3etre61 (void)
  {
printf("\n*** M3ETRE61 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5,a=0;
  i=a-- > 1;
  if(i==0&a==-1)
    printf("*** M3ETRE61-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-01 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f();
  i=(f(a)> 1);
  if(i==1)
    printf("*** M3ETRE61-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-02 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a++>= 1;
  if(i==0&&a==1)
    printf("*** M3ETRE61-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-03 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a-->= 1;
  if(i==0&a==-1)
    printf("*** M3ETRE61-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-04 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f();
  i=(f(a)>=1);
  if(i==1)
    printf("*** M3ETRE61-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a++== 1;
  if(i==0&&a==1)
    printf("*** M3ETRE61-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a--== 1;
  if(i==0&a==-1)
    printf("*** M3ETRE61-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f();
  i=(f(a)==1);
  if(i==0)
    printf("*** M3ETRE61-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a++!= 1;
  if(i==1&&a==1)
    printf("*** M3ETRE61-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-09 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a--!= 1;
  if(i==1&a==-1)
    printf("*** M3ETRE61-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE61 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
f (int a)
  {
    a=2;
    return(a);
  }
int 
m3etre62 (void)
  {
printf("*** M3ETRE61 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5,a=0;
  i=a-- > 1;
  if(i==0&a==-1)
    printf("*** M3ETRE61-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-01 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,faa();
  i=(faa(a)> 1);
  if(i==1)
    printf("*** M3ETRE61-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-02 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a++>= 1;
  if(i==0&&a==1)
    printf("*** M3ETRE61-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-03 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a-->= 1;
  if(i==0&a==-1)
    printf("*** M3ETRE61-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-04 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,faa();
  i=(faa(a)>=1);
  if(i==1)
    printf("*** M3ETRE61-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a++== 1;
  if(i==0&&a==1)
    printf("*** M3ETRE61-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a--== 1;
  if(i==0&a==-1)
    printf("*** M3ETRE61-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,faa();
  i=(faa(a)==1);
  if(i==0)
    printf("*** M3ETRE61-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a++!= 1;
  if(i==1&&a==1)
    printf("*** M3ETRE61-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-09 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a--!= 1;
  if(i==1&a==-1)
    printf("*** M3ETRE61-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE61-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE61 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
faa (int a)
  {
    a=2;
    return(a);
  }
int 
m3etre63 (void)
  {
printf("*** M3ETRE63 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5,a=2;
  i=a++ % 1;
  if(i==0&a==3)
    printf("*** M3ETRE63-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-01 *** N G ********** N G ***\n");
}
{
  int i=5,a=2;
  i=a-- % 1;
  if(i==0&a==1)
    printf("*** M3ETRE63-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-02 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,fbb();
  i=(fbb(a) %1);
  if(i==0)
    printf("*** M3ETRE63-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-03 *** N G ********** N G ***\n");
}
{
  int i=5,a=2;
  i=a++ << 1;
  if(i==4&a==3)
    printf("*** M3ETRE63-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-04 *** N G ********** N G ***\n");
}
{
  int i=5,a=2;
  i=a-- << 1;
  if(i==4&a==1)
    printf("*** M3ETRE63-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,fbb();
  i=(fbb(a)<<1);
  if(i==4)
    printf("*** M3ETRE63-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=3;
  i=a++>>1;
  if(i==1&a==4)
    printf("*** M3ETRE63-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=3;
  i=a-->>1;
  if(i==1&a==2)
    printf("*** M3ETRE63-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,fbb();
  i=(fbb(a)>>1);
  if(i==1)
    printf("*** M3ETRE63-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-09 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=a++ ^ 1;
  if(i==1&a==1)
    printf("*** M3ETRE63-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE63-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE63 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
fbb (int a)
  {
    a=2;
    return(a);
  }

 static char *okng ="OK";

int 
mptest08 (void)
 {
   char *func1(int *),*func2(int *),*func3(int *);

   static int exi=0;
   char      *str;

     printf("\n***** MPTEST08 START *****\n");
     printf("    * CALL func1 *\n");
     str = func1(&exi);
     if(!strcmp(str,"    * OUT func1 *")){
        if(exi==1){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ NG exi=%d +++\n",exi);
           strcpy(okng,"NG");
        }
     } else {
        printf("     +++ NG func1 STRING str=%s\n",str);
     }
     printf("    * CALL func2 *\n");
     str = func2(&exi);
     if(!strcmp(str,"    * OUT func2 *")){
        if(exi==3){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ NG exi=%d +++\n",exi);
           strcpy(okng,"NG");
        }
     } else {
        printf("     +++ NG func2 STRING str=%s\n",str);
     }
     printf("    * CALL func3 *\n");
     str = func3(&exi);
     if(!strcmp(str,"    * OUT func3 *")){
        if(exi==6){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ NG exi=%d +++\n",exi);
           strcpy(okng,"NG");
        }
     } else {
        printf("     +++ NG func3 STRING str=%s\n",str);
     }

     printf("   ** MPTEST08 %s %s %s ** \n",okng,okng,okng);
     printf("***** MPTEST08 END *****\n\n");
 }

 char *
func1 (int *p)
 {
     *p = *p+1;
     return("    * OUT func1 *");
 }

 char *
func2 (int *p)
 {
    static int i=0;

     if(++i <= 2){
        *p = *p+1;
        func2(p);
     }
     return("    * OUT func2 *");
 }

 char *
func3 (int *p)
 {
    static int i=0;

     if(++i <= 3){
        *p = *p+1;
        func3(p);
     }
     return("    * OUT func3 *");
 }

 struct ss {
    int   ss_i1;
    int   ss_i2;
    char  ss_c;
    struct ss *next;
 };
 int schk(struct ss *);
 int defi1(struct ss *);
 int sortss(struct ss *);
 int defn(struct ss *);
 int defc(struct ss *);
 int defi2(struct ss *,int);

int 
mptest09 (void)
 {
     int m_i;
     static struct ss ss_m[26],*m_ssp;
     static char *msgok = "OK",
                 *msgng = "NG";
            char *msg;

     printf("\n***** MPTEST09 START *****\n");
     for(m_i=0 ; m_i<26 ; m_i++){
       defi1(&ss_m[m_i]);
     }

     for(m_i=0 ; defi2(ss_m,m_i++) ; ) ;
     while(defc(ss_m)) ;
     while(defn(ss_m)) ;

     for(m_i=0;m_i<26;m_i++){
        m_ssp=&ss_m[m_i];
     }

     msg = sortss(ss_m) ? msgok : msgng ;
     printf("   ** SORTSS RETURN %s **\n",msg);
     goto label3;
 label4:
     msg = schk(ss_m) ? msgok : msgng ;
     printf("   ** SCHK   RETURN %s **\n",msg);
     goto label5;
 label1:
     printf("***** MPTEST09 NG NG NG *****\n\n");
     goto label0;
 label2:
     printf("***** MPTEST09 OK OK OK *****\n");
     goto label0;
 label3:
     switch(strcmp(msg,"OK")){
       case 0 :
         goto label4;
       default:
         goto label1;
     }
 label5:
     switch(strcmp(msg,"OK")){
       case 0 :
         goto label2;
       default:
         goto label1;
     }
 label0:
     printf("***** MPTEST09 END END *****\n");
 }

 int 
defi1 (struct ss *ssp)
 {
     static int d1_i=1;

     ssp->ss_i1 = d1_i++ ;
     return(0);
 }

 int 
defi2 (struct ss *ssp, int ei)
 {
      struct ss *d_sp;
      static int  i=0,
                  num[ ] ={20,13, 1, 7,23, 6, 2, 5,22, 3,
                              4 ,15, 8,21,24,14,17, 9,
                              26,11,19,16,18,25,10,12};

      d_sp=ssp+ei;
      d_sp->ss_i2=num[i++];
      return(i<26);
 }

 int 
defc (struct ss *ssp)
 {
     int i=0;
     char c='a';

     for( ;i<26 ;i++){
       ssp->ss_c = c;
       c++;
       switch(c){
         case 0x8a :
           c=0x91;
           break;
         case 0x9a :
           c=0xa2;
       }
       ssp++;
     }
     return(0);
 }

 int 
defn (struct ss *ssp)
 {
    int i;
    struct ss *np;

    for( np=ssp,i=0 ; i<26 ; np=np->next,i++){
       np->next=np+1;
    }
    (np-1)->next = NULL;
    return(0);
 }

 int 
sortss (struct ss *ssp)
 {
    struct ss ws,*wssp;
    int i,j,n;
    if(ssp == NULL) return(0);
    wssp=ssp;
    for(n=25,i=0;i<25;i++,n--){
      for(j=0;j<n;j++){
        if(ssp->ss_i2 > (ssp+1)->ss_i2){
          memcpy(&ws,(ssp+1),sizeof(struct ss));
          memcpy((ssp+1),ssp,sizeof(struct ss));
          memcpy(ssp,&ws,sizeof(struct ss));
        }
        ssp++;
      }
      ssp=wssp;
    }
    defn(wssp);
    return(1); 
 }

 int 
schk (struct ss *ssp)
 {
   struct ss *wssp;
   int i;

    if(ssp == NULL) return(0);
    for(i=0,wssp=ssp;ssp->next != NULL ; ssp=ssp->next,i++){
       if(ssp->ss_i2 < (ssp+1)->ss_i2)
          continue;
       else
          return(0); 
    }
    return(1); 
 }


#define TESTOK " *** CHECK OK ***\n"
#define TESTNG " *** CHECK NG ***\n"

  static int rdata[ ] ={2,3,5,7,11,13,17,19,23,29,31,37,41,43,
                           47,53,59,61,67,71,73,79,83,89,97};

  struct ssq {
       int  ssd;
       char atr[4];
       struct ssq *nxt;
  } ssq0[100];

 int chk1(struct ssq *,int *,int);
 int chk2(struct ssq *,int *,int);
 int chain(struct ssq *);
 int ckchain(struct ssq *);

int 
mptest10 (void)
 {
    int data ;
    int i,mm,rtncd;
    char  str[3];

    printf("\n***** MPTEST10 START *****\n");
    for( i=0 ; i<100 ; i++){
       ssq0[i].ssd=i+1;
       ssq0[i].atr[0]='o';
       ssq0[i].atr[1]='n';
       ssq0[i].atr[2]='\0';
    }
    ssq0[0].atr[1]='f';
    ssq0[0].atr[2]='f';
    ssq0[0].atr[3]='\0';

    for(data=1 ; data <= 100 ; data++ ){
       for( i=2 ; i<=data ; i++){
          mm = data%i;
          if(mm==0){
             if(i!=data){
                ssq0[data-1].atr[1]='f';
                ssq0[data-1].atr[2]='f';
                ssq0[data-1].atr[3]='\0';
                break;
             }
          }
       }
    }

    for(i=0;i<100;i++){
       printf("(%2d) d=%3d, atr=%3s",i,ssq0[i].ssd,ssq0[i].atr);
       (i+1)%3==0 ? printf("\n") : printf("  ");
    }
    printf("\n");

    switch(rtncd=chain(ssq0)){
      case 0:
        printf("  **  CHAIN OK **\n");
        break;
      case 1:
        printf("  **  CHAIN NG  CODE = %d **\n",rtncd);
        goto label1 ;
      case 2:
        printf("  **  CHAIN NG  CODE = %d **\n",rtncd);
        goto label1 ;
    }

    rtncd = chk();
 label1:
    if(rtncd==0){
       printf(TESTOK);
       strcpy(str,"OK");
    }else{
       printf(TESTNG);
       strcpy(str,"NG");
    }
    printf("***** MPTEST10 %s END *****\n",str);
 }

 int 
chk (void)
 {
    struct ssq *sp;
    int i,jg;

    sp=ssq0;
    for(i=0;i<100;i++){
       if(!strcmp(sp->atr,"on"))
          jg=chk1(sp,rdata,sizeof(rdata)/sizeof(rdata[0]));
       else
          jg=chk2(sp,rdata,sizeof(rdata)/sizeof(rdata[0]));
       if(jg!=0)
          return(-1);
    }
    return(0);
 }

 int 
chk1 (struct ssq *sp, int *data, int size)
 {
    int i;

    for(i=0;i<size;i++){
       if(sp->ssd == *data++)
          return(0);
    }
    printf("     in chk1  NG  number=%d\n",sp->ssd);
    return(-1);
 }

 int 
chk2 (struct ssq *sp, int *data, int sz)
 {
    int i;

    for(i=0;i<sz;i++){
       if(sp->ssd == *data++){
          printf("     in chk2  NG  number=%d\n",sp->ssd);
          return(-1);
       }
    }
    return(0);
 }

 int 
chain (struct ssq *ssp)
 {
    struct ssq *wssp,*bssp,*pssp;
    int i;

    for(i=0,wssp=ssp ; i<100 ; i++){
      if(wssp->atr[1]=='n'){
         pssp=bssp=wssp;
         break;
      }
      wssp++;
    }

    for( ; i<99 ; i++){
      if(wssp->atr[1]=='n'){
         bssp->nxt=wssp;
         bssp=wssp;
      }
      wssp++;
    }
    return(ckchain(pssp));
 }

 int 
ckchain (struct ssq *ssp)
 {
    int i;
    struct ssq *wssp;

     for(wssp=ssp,i=0;i<100;i++){
       if(wssp->ssd != rdata[i]){
         return(1);
       } else {
         wssp= wssp->nxt;
         if(wssp==NULL && i==sizeof(rdata)/sizeof(rdata[0])-1) return(0);
       }
     }
     return(2);
 }
