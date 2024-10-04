
#include  <stdio.h>

 
 struct st {
        int sti;
        char stc;
 };

 int 
mptest14 (void)
{
    struct st func(),st0;
#ifdef __STDC__
    int chk(struct st st0);
#else
    int chk();
#endif
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

#include  <stdio.h>

int 
m3mptr14 (void)
{
  volatile int a,b,x;
  int y=110;
  int z=250;
  y=5;
  z=10;
  if(a!=2){
    b=3;
  }
  if(10!=b){
    x=y+z;
  }
  else {
    x=y-z;
  }
  y=3;
  z=2;
  printf("x=%d\n",x);
  if(x>=0){
    printf("********** m2mptr14 ok **********\n");
  }
  else {
    printf("?????????? m2mptr14 ng ??????????\n");
  }
}

#include  <stdio.h>
 
 
 
 int 
m3mpfo14 (void)
 {
   int                 i4a,i4b,i4c,i4d,i4[10],i,j;
   short int           i2a,i2b,i2c,i2d,i2[10];
   unsigned int        u4a,u4b,u4c,u4d,u4[10];
   unsigned short int  u2a,u2b,u2c,u2d,u2[10];

   i4a = 0;
   i2a = 0;
   u4a = 0;
   u2a = 0;
   for(i=0;i<10;i++) {
     i4[i] = i & i4a;
     i2[i] = i & i2a;
     u4[i] = i & u4a;
     u2[i] = i & u2a;
   }
   for(i=0;i<10;i++) {
     if(i4[i] == 0) ;
     else goto error;
     if(i2[i] == 0) ;
     else goto error;
     if(u4[i] == 0) ;
     else goto error;
     if(u2[i] == 0) ;
     else goto error;
   }
   printf("okokok m3mpfo14 okokok\n");
   goto nop;
   error:printf("ngngng m3mpfo14 ngngng\n");
   printf("i4 = ");
   for(i=0;i<10;i++) {
     if(i == 9) printf("%d\n",i4[i]);
     else printf("%d ",i4[i]);
   }
   printf("i2 = ");
   for(i=0;i<10;i++) {
     if(i == 9) printf("%d\n",i2[i]);
     else printf("%d ",i2[i]);
   }
   printf("u4 = ");
   for(i=0;i<10;i++) {
     if(i == 9) printf("%d\n",u4[i]);
     else printf("%d ",u4[i]);
   }
   printf("u2 = ");
   for(i=0;i<10;i++) {
     if(i == 9) printf("%d\n",u2[i]);
     else printf("%d ",u2[i]);
   }
   nop:;
 }

int 
reduction14 (void)
{
  int i;
  int p=0, q=0;
  int N=50;
  int a[50];

  for (i=0; i < N; i++) {
    a[i] = i;
  }

  
  for ( i = 0; i < N; i++ ) {
    q += i;
    p = p + 10;
    q -= i-4;
  }

  
  for ( i = 0; i < N; i++ ) {
    p = p * i;
  }

  
  for ( i = 0; i < N; i++ ) {
    p = p + 10;
  }

  printf( "%d  ", p ); 
  printf( "%d  ", q ); 

  if ( p == 500 && q == 200 )
    printf( "***** LOOP OK *****\n" );
  else
    printf( "***** LOOP NG *****\n" );
}

#define N 50
#define ANS (double)25.0

int 
estreg14 (void)
{
  int i;
  double a[N];
  double sum = (double)0.0;

  for (i = 0; i < N; i++) {
    a[i] = (double)(i%2);
  }

  for (i = 0; i < N; i++) {
    sum = a[i] - sum;
  }

  printf("sum  = %lf --- ", sum); 

  if (sum == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %lf\n", ANS);
  }
}

#include  <stdio.h>

int 
scobe14 (void)
{
   signed char          a;
   float                b;
   double               c;
   long double          d;
   signed long long int e;

   a = 0x00;

   b = (float) a;
   c = (double) a;
   d = (long double) a;

   if (b==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   if (c==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   if (d==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   e = (long long int) b;
   if (e==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   e = (long long int) c;
   if (e==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}

#include  <stdio.h>

struct argtg {
    int stmem1[100],stmem2[100];
}argst;

int 
scosc14 (void){
    int  iarg[10][150];
    void sub1();

    iarg[9][149] = 0xff;

    sub1(iarg,&argst);
    if(argst.stmem1[50] == 456)
      printf("***** SCOSC14 *** O    K *****\n");
    else
      printf("***** SCOSC14 *** N    G *****\n");
}

void sub1(int *a, struct argtg *b)
{
    if(*(a+1499) == 0xff)
        b->stmem1[50] = 456;
    else{
        b->stmem1[50] = 789;
        printf(" ng !\n");
        printf(" a+4999 = %x\n",*(a+4999));
        }
}

#include  <stdio.h>

#define      num      2

struct tag1 {
    signed char            t1_sch1 :1;
    unsigned char          t1_uch1 :1;
    signed short int       t1_ssi1 :1;
    unsigned short int     t1_usi1 :1;
    signed long int        t1_sli1 :1;
    unsigned long int      t1_uli1 :1;

};
struct tag2 {
    signed char             t2_ch1 : 1;
    signed char             t2_ch2 : 3;
    signed char             t2_ch3 : 5;
    signed short int        t2_si1 : 1;
    signed short int        t2_si2 : 6;
    signed short int        t2_si3 :10;
    signed long int         t2_li1 : 1;
    signed long int         t2_li2 :12;
    signed long int         t2_li3 :20;

};

long int       cal[num], ans[num] = {  0, 3 };

int 
scpa014 (void)
{
    struct tag1            t1_st1;
    struct tag2            t2_st1;
    int                    i;

    printf("---- scpa014 start ---- \n");

    t1_st1.t1_sch1 = 1;      t1_st1.t1_uch1 = 1;
    t1_st1.t1_ssi1 = 1;      t1_st1.t1_usi1 = 1;
    t1_st1.t1_sli1 = 1;      t1_st1.t1_uli1 = 1;

    cal[0] = t1_st1.t1_sch1 + t1_st1.t1_uch1 +
               t1_st1.t1_ssi1 + t1_st1.t1_usi1 +
               t1_st1.t1_sli1 + t1_st1.t1_uli1 ;

    t2_st1.t2_ch1 = 1;     t2_st1.t2_li1 = 1;
    t2_st1.t2_ch2 = 1;     t2_st1.t2_li2 = 1;
    t2_st1.t2_ch3 = 1;     t2_st1.t2_li3 = 1;
    t2_st1.t2_si1 = 1;  
    t2_st1.t2_si2 = 1;  
    t2_st1.t2_si3 = 1;  

    cal[1] = t2_st1.t2_ch1 + t2_st1.t2_li1 +
               t2_st1.t2_ch2 + t2_st1.t2_li2 +
               t2_st1.t2_ch3 + t2_st1.t2_li3 +
               t2_st1.t2_si1  +
               t2_st1.t2_si2  +
               t2_st1.t2_si3 ;

    for (i=0; i<num; i++) {
        if (cal[i] == ans[i])
            printf ("  %d: ***  ok  *** \n", i+1);
        else {
            printf ("  %d: ???  ng  ??? \n", i+1);
            printf ("       ans = %d\n", ans[i]);
            printf ("       cal = %d\n", cal[i]);
        }
    }

    printf("---- scpa014  end  ---- \n");
}

#include  <stdio.h>

int 
scrna14 (void)
{
  volatile int a,b;
  volatile int  t1,t2,t3,k,l;

  for(a=0;a<5;a++)
    {
      t1 = a;
      t2 = t1+a;
      t3 = t2+t1;
    }
  l = t1 + t2 + t3;
  for(a=0,k=0;a<5;a++)
    {
     for(b=0;b<5;b++)
       {
        t1=a+b;
        t2=t1+b;
       }
     t3 = t1+t2+l;
    }
    k = t3+l;
    if( k == 68)
           printf(" ok \n");
    else
           printf(" ng \n");
 }

#include <limits.h>
 unsigned long long int mask,mask_2,i;
 unsigned long long int x,z;
int comk3114 ( ) {

 z=x=x-x;
 z=z+1U;
 if ((mask=~(~x >>1)) == (mask_2=(z << (sizeof(long long) * CHAR_BIT -1))))
   printf("comk3114 start \n");
 else
   printf("%.8x %.8x\n",*(long *)&mask_2, *(((long *)&mask_2)+1));

 i=1LL;
 do {

    while ( mask!=0 ) {
      if ((i & mask) != 0)
        printf("1");
      else
        printf("0");
      mask >>= 1;
    }
    printf("\n");
    mask=mask_2;
    i<<=1;
    if (!i) break;
 }
 while( i );
 printf("comk3114 end \n");
}
int 
main (void) {
  estreg14( );
  scobe14( );
  mptest14( );
  scrna14( );
  m3mptr14( );
  scosc14( );
  m3mpfo14( );
  reduction14( );
  scpa014( );
  comk3114( );
}
