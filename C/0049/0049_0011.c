#include <string.h>

#include  <stdio.h>
#include  <stdlib.h>
int get_int(int a);

#define F  float
#define D  double
#define X  long double
       int i;
       F  f00[10],f01[10],f02[10],f03[10],f04[10],f05[10],f06[10],f07[10],f08[10],f09[10]
            , f10[10],f11[10],f12[10],f13[10],f14[10],f15[10],f16[10],f17[10],f18[10],f19[10]
            , f20[10],f21[10],f22[10],f23[10],f24[10],f25[10],f26[10],f27[10],f28[10],f29[10];
       F  *pf00,*pf01,*pf02,*pf03,*pf04,*pf05,*pf06,*pf07,*pf08,*pf09
        , *pf10,*pf11,*pf12,*pf13,*pf14,*pf15,*pf16,*pf17,*pf18,*pf19
        , *pf20,*pf21,*pf22,*pf23,*pf24,*pf25,*pf26,*pf27,*pf28,*pf29;
#ifdef __STDC__
       F  f00_result_chk(F *p0 ,F *p1 ,F *p2 ,F *p3 ,F *p4 ,F *p5
                        ,F *p6 ,F *p7 ,F *p8 ,F *p9 ,F *p10,F *p11
                        ,F *p12,F *p13,F *p14,F *p15,F *p16,F *p17
                        ,F *p18,F *p19,F *p20,F *p21,F *p22,F *p23
                        ,F *p24,F *p25,F *p26,F *p27,F *p28,F *p29);
#else
       F  f00_result_chk( );
#endif
       D d00[10],d01[10],d02[10],d03[10],d04[10],d05[10],d06[10],d07[10],d08[10],d09[10]
       , d10[10],d11[10],d12[10],d13[10],d14[10],d15[10],d16[10],d17[10],d18[10],d19[10]
       , d20[10],d21[10],d22[10],d23[10],d24[10],d25[10],d26[10],d27[10],d28[10],d29[10];
       D *pd00,*pd01,*pd02,*pd03,*pd04,*pd05,*pd06,*pd07,*pd08,*pd09
       , *pd10,*pd11,*pd12,*pd13,*pd14,*pd15,*pd16,*pd17,*pd18,*pd19
       , *pd20,*pd21,*pd22,*pd23,*pd24,*pd25,*pd26,*pd27,*pd28,*pd29;
#ifdef __STDC__
       D  d00_result_chk(D *p0 ,D *p1 ,D *p2 ,D *p3 ,D *p4 ,D *p5
                        ,D *p6 ,D *p7 ,D *p8 ,D *p9 ,D *p10,D *p11
                        ,D *p12,D *p13,D *p14,D *p15,D *p16,D *p17
                        ,D *p18,D *p19,D *p20,D *p21,D *p22,D *p23
                        ,D *p24,D *p25,D *p26,D *p27,D *p28,D *p29);
#else
       D  d00_result_chk( );
#endif
       X x00[10],x01[10],x02[10],x03[10],x04[10],x05[10],x06[10],x07[10],x08[10],x09[10]
       , x10[10],x11[10],x12[10],x13[10],x14[10],x15[10],x16[10],x17[10],x18[10],x19[10]
       , x20[10],x21[10],x22[10],x23[10],x24[10],x25[10],x26[10],x27[10],x28[10],x29[10];
       X *px00,*px01,*px02,*px03,*px04,*px05,*px06,*px07,*px08,*px09
       , *px10,*px11,*px12,*px13,*px14,*px15,*px16,*px17,*px18,*px19
       , *px20,*px21,*px22,*px23,*px24,*px25,*px26,*px27,*px28,*px29;
#ifdef __STDC__
       X  x00_result_chk(X *p0 ,X *p1 ,X *p2 ,X *p3 ,X *p4 ,X *p5
                        ,X *p6 ,X *p7 ,X *p8 ,X *p9 ,X *p10,X *p11
                        ,X *p12,X *p13,X *p14,X *p15,X *p16,X *p17
                        ,X *p18,X *p19,X *p20,X *p21,X *p22,X *p23
                        ,X *p24,X *p25,X *p26,X *p27,X *p28,X *p29);
#else
       X  x00_result_chk( );
#endif

int 
cdpm0016 (void){
 for (i=0; i < 10; i++)  {
     f00[i]=f01[i]=f02[i]=f03[i]=f04[i]=f05[i]=f06[i]=f07[i]=f08[i]=f09[i]
   = f10[i]=f11[i]=f12[i]=f13[i]=f14[i]=f15[i]=f16[i]=f17[i]=f18[i]=f19[i]
   = f20[i]=f21[i]=f22[i]=f23[i]=f24[i]=f25[i]=f26[i]=f27[i]=f28[i]=f29[i]=1.0;
   pf00=f00 + i;pf01=f01 + i;pf02=f02 + i;pf03=f03 + i;pf04=f04 + i;
   pf05=f05 + i;pf06=f06 + i;pf07=f07 + i;pf08=f08 + i;pf09=f09 + i;
   pf10=f10 + i;pf11=f11 + i;pf12=f12 + i;pf13=f13 + i;pf14=f14 + i;
   pf15=f15 + i;pf16=f16 + i;pf17=f17 + i;pf18=f18 + i;pf19=f19 + i;
   pf20=f20 + i;pf21=f21 + i;pf22=f22 + i;pf23=f23 + i;pf24=f24 + i;
   pf25=f25 + i;pf26=f26 + i;pf27=f27 + i;pf28=f28 + i;pf29=f29 + i;
   if (f00_result_chk(pf00,pf01,pf02,pf03,pf04,pf05,pf06,pf07,pf08,pf09
                , pf10,pf11,pf12,pf13,pf14,pf15,pf16,pf17,pf18,pf19
                , pf20,pf21,pf22,pf23,pf24,pf25,pf26,pf27,pf28,pf29)
       ==30.0) 
      printf ("** cdpm0016 (%d) ** OK\n",i+1);
   else
      printf ("** cdpm0016 (%d) ** NG\n",i+1);
 }
 for (i=0; i < 10; i++)  {
      d00[i]=d01[i]=d02[i]=d03[i]=d04[i]=d05[i]=d06[i]=d07[i]=d08[i]=d09[i]
    = d10[i]=d11[i]=d12[i]=d13[i]=d14[i]=d15[i]=d16[i]=d17[i]=d18[i]=d19[i]
    = d20[i]=d21[i]=d22[i]=d23[i]=d24[i]=d25[i]=d26[i]=d27[i]=d28[i]=d29[i]=1.0;
    pd00=d00 + i;pd01=d01 + i;pd02=d02 + i;pd03=d03 + i;pd04=d04 + i;
    pd05=d05 + i;pd06=d06 + i;pd07=d07 + i;pd08=d08 + i;pd09=d09 + i;
    pd10=d10 + i;pd11=d11 + i;pd12=d12 + i;pd13=d13 + i;pd14=d14 + i;
    pd15=d15 + i;pd16=d16 + i;pd17=d17 + i;pd18=d18 + i;pd19=d19 + i;
    pd20=d20 + i;pd21=d21 + i;pd22=d22 + i;pd23=d23 + i;pd24=d24 + i;
    pd25=d25 + i;pd26=d26 + i;pd27=d27 + i;pd28=d28 + i;pd29=d29 + i;
    if (d00_result_chk(pd00,pd01,pd02,pd03,pd04,pd05,pd06,pd07,pd08,pd09
                 , pd10,pd11,pd12,pd13,pd14,pd15,pd16,pd17,pd18,pd19
                 , pd20,pd21,pd22,pd23,pd24,pd25,pd26,pd27,pd28,pd29)
      ==30.0) 
      printf ("** cdpm0016 (%d) ** OK\n",i+11);
   else
      printf ("** cdpm0016 (%d) ** NG\n",i+11);
 }
  for (i=0; i < 10; i++)  {
     x00[i]=x01[i]=x02[i]=x03[i]=x04[i]=x05[i]=x06[i]=x07[i]=x08[i]=x09[i]
   = x10[i]=x11[i]=x12[i]=x13[i]=x14[i]=x15[i]=x16[i]=x17[i]=x18[i]=x19[i]
   = x20[i]=x21[i]=x22[i]=x23[i]=x24[i]=x25[i]=x26[i]=x27[i]=x28[i]=x29[i]=1.0;
   px00=x00 + i;px01=x01 + i;px02=x02 + i;px03=x03 + i;px04=x04 + i;
   px05=x05 + i;px06=x06 + i;px07=x07 + i;px08=x08 + i;px09=x09 + i;
   px10=x10 + i;px11=x11 + i;px12=x12 + i;px13=x13 + i;px14=x14 + i;
   px15=x15 + i;px16=x16 + i;px17=x17 + i;px18=x18 + i;px19=x19 + i;
   px20=x20 + i;px21=x21 + i;px22=x22 + i;px23=x23 + i;px24=x24 + i;
   px25=x25 + i;px26=x26 + i;px27=x27 + i;px28=x28 + i;px29=x29 + i;
   if (x00_result_chk(px00,px01,px02,px03,px04,px05,px06,px07,px08,px09
                , px10,px11,px12,px13,px14,px15,px16,px17,px18,px19
                ,px20,px21,px22,px23,px24,px25,px26,px27,px28,px29)
   ==30.0) 
      printf ("** cdpm0016 (%d) ** OK\n",i+12);
   else
      printf ("** cdpm0016 (%d) ** NG\n",i+12);
 }
}
#ifdef __STDC__
F  f00_result_chk(F *p0 ,F *p1 ,F *p2 ,F *p3 ,F *p4 ,F *p5
                 ,F *p6 ,F *p7 ,F *p8 ,F *p9 ,F *p10,F *p11
                 ,F *p12,F *p13,F *p14,F *p15,F *p16,F *p17
                 ,F *p18,F *p19,F *p20,F *p21,F *p22,F *p23
                 ,F *p24,F *p25,F *p26,F *p27,F *p28,F *p29){
#else
F f00_result_chk(p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29) 
               F  *p0 ,*p1 ,*p2 ,*p3 ,*p4 ,*p5 ,*p6 ,*p7 ,*p8 ,*p9
                , *p10,*p11,*p12,*p13,*p14,*p15,*p16,*p17,*p18,*p19
                , *p20,*p21,*p22,*p23,*p24,*p25,*p26,*p27,*p28,*p29;{
#endif
  return(*p0  + *p1  + *p2  + *p3  + *p4  + *p5  + *p6  + *p7  + *p8  + *p9
       + *p10 + *p11 + *p12 + *p13 + *p14 + *p15 + *p16 + *p17 + *p18 + *p19
       + *p20 + *p21 + *p22 + *p23 + *p24 + *p25 + *p26 + *p27 + *p28 + *p29);
}  
#ifdef __STDC__
D  d00_result_chk(D *p0 ,D *p1 ,D *p2 ,D *p3 ,D *p4 ,D *p5
                 ,D *p6 ,D *p7 ,D *p8 ,D *p9 ,D *p10,D *p11
                 ,D *p12,D *p13,D *p14,D *p15,D *p16,D *p17
                 ,D *p18,D *p19,D *p20,D *p21,D *p22,D *p23
                 ,D *p24,D *p25,D *p26,D *p27,D *p28,D *p29){
#else
D d00_result_chk(p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29) 
           D *p0 ,*p1 ,*p2 ,*p3 ,*p4 ,*p5 ,*p6 ,*p7 ,*p8 ,*p9
           , *p10,*p11,*p12,*p13,*p14,*p15,*p16,*p17,*p18,*p19
           , *p20,*p21,*p22,*p23,*p24,*p25,*p26,*p27,*p28,*p29;{
#endif
  return(*p0  + *p1  + *p2  + *p3  + *p4  + *p5  + *p6  + *p7  + *p8  + *p9
       + *p10 + *p11 + *p12 + *p13 + *p14 + *p15 + *p16 + *p17 + *p18 + *p19
       + *p20 + *p21 + *p22 + *p23 + *p24 + *p25 + *p26 + *p27 + *p28 + *p29);
}  

#ifdef __STDC__
X  x00_result_chk(X *p0 ,X *p1 ,X *p2 ,X *p3 ,X *p4 ,X *p5
                 ,X *p6 ,X *p7 ,X *p8 ,X *p9 ,X *p10,X *p11
                 ,X *p12,X *p13,X *p14,X *p15,X *p16,X *p17
                 ,X *p18,X *p19,X *p20,X *p21,X *p22,X *p23
                 ,X *p24,X *p25,X *p26,X *p27,X *p28,X *p29){
#else
X x00_result_chk(p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29) 
                X *p0 ,*p1 ,*p2 ,*p3 ,*p4 ,*p5 ,*p6 ,*p7 ,*p8 ,*p9
                , *p10,*p11,*p12,*p13,*p14,*p15,*p16,*p17,*p18,*p19
                , *p20,*p21,*p22,*p23,*p24,*p25,*p26,*p27,*p28,*p29;{
#endif
  return(*p0  + *p1  + *p2  + *p3  + *p4  + *p5  + *p6  + *p7  + *p8  + *p9
       + *p10 + *p11 + *p12 + *p13 + *p14 + *p15 + *p16 + *p17 + *p18 + *p19
       + *p20 + *p21 + *p22 + *p23 + *p24 + *p25 + *p26 + *p27 + *p28 + *p29);
}
  

#include  <stdio.h>
 
 
 
  int m3mpfo16()
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
     i4[i] = i | i4a;
     i2[i] = i | i2a;
     u4[i] = i | u4a;
     u2[i] = i | u2a;
   }
   for(i=0;i<10;i++) {
     if(i4[i] == i) ;
     else goto error;
     if(i2[i] == i) ;
     else goto error;
     if(u4[i] == i) ;
     else goto error;
     if(u2[i] == i) ;
     else goto error;
   }
   printf("okokok m3mpfo16 okokok\n");
   goto nop;
   error:printf("ngngng m3mpfo16 ngngng\n");
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

#include  <stdio.h>

int m3mptr16()
{
  volatile int a;
  int x;
  char c[3];
  char *b=c;
  int y=110;
  int z=250;
  y=5;
  z=5;
  if(a!=2){
    c[0]='a';
  }
  if(*b!='c'){
    x=y+z;
  }
  else {
    x=y-z;
  }
  y=3;
  z=2;
  printf("x=%d  %c\n",x,*b);
  if(x>0){
    printf("********** m3mptr16 ok **********\n");
  }
  else {
    printf("?????????? m3mptr16 ng ??????????\n");
  }
}

#include  <stdio.h>

#include <stdio.h>

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

int scrlp16()
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

#include  <stdio.h>

int scobe16()
{
   signed char        a1=1;
   signed short int   a2=1;
   signed long  int   a3=1;
   unsigned char      a4=1;
   unsigned short int a5=1;
   unsigned long  int a6=1;
   float              a7=1;
   double             a8=1;
   long double        a9=1;
   signed long int    b;

   b = 0 - a1;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a2;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a3;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a4;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a5;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a6;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a7;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a8;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a9;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}

#include <setjmp.h>
jmp_buf env;
long int a=0;
int comk3116 ( ) {
           long int subb( ),b;
           void  suba( );

           if (setjmp(env)) {
             b=subb( ); 
             if (a==b) 
                   printf("comk3116 ok\n");
             else  printf("comk3116 ng\n");
             return(0);
           }
           suba( );
           printf("comk3116 ng\n");
}
void suba( ) {
long int b=0;

  goto F1;

  while (1) {

    if (b==0) {
      b++;
      F1:
      a++;
      continue;
    }
    a+=10;
    if (a>30) longjmp(env,1);
  }
}
long int subb( ) {
volatile long int a=0,b=0;

  goto F1;

  while (1) {

    if (b==0) {
      b++;
      F1:
      a++;
      continue;
    }
    a+=10;
    if (a>30) break;
  }
  return a;
}

#include <stdio.h>

typedef struct node {
  struct node *brother;
  double *dl;
} NODE;

#define N 100
#define DD1 1
#define DD2 2
#define DD3 3
#define DD4 4

static double sw_node();

int estreg16()
{
  NODE *p, *q;
  int  i;
  double back_dl, sum;

  p = (NODE *)malloc(N*sizeof(NODE));
  for (i = 0; i < N-1; i++) {
    p[i].brother = &p[i+1];
    p[i].dl = (double *)malloc(sizeof(double));
    *(p[i].dl) = (double)(i % 9);
  }
  p[N-1].brother = NULL;
  p[N-1].dl = (double *)malloc(sizeof(double));
  *(p[N-1].dl) = (double)(N-1);

  q = p;
  sum = (double)0.0;
  while (q != NULL) {
    back_dl = *(q->dl);
    *(q->dl) = sw_node(q);
    if (*(q->dl) > back_dl) {
      sum = sum + *(q->dl);
    }
    q = q->brother;
  }

  printf("sum = %lf\n", sum);
}

static double
sw_node(q)
  NODE *q;
{
  double value = *(q->dl);

  switch ((int)value % 5) {
  case DD1:
    value = value+(double)DD1;
    break;
  case DD2:
    value = value-(double)DD2;
    break;
  case DD3:
    value = value*(double)DD3;
    break;
  case DD4:
    value = value/(double)DD4;
    break;
  default:
    break;
  }

  return(value);
}

int reduction16()
{
  int *p;
  int a;
  int s[200], i;

  p = &a;

  *p = 0;

  for (i=0; i<200; i++) {
    s[i] = 1;
  }

  
#pragma clang loop unroll_count(11)
  for (i=0; i<50; i++) {
    a = *p + s[i];
  }

  
#pragma clang loop unroll_count(11)
  for (i=50; i<100; i++) {
    *p = a + s[i];
  }

  
  for (i=100; i<150; i++) {
    a = a + s[i];
  }

  
  for (i=150; i<200; i++) {
    *p = *p + s[i];
  }

  if (a == 200)
    printf("a = %d --- ok\n", a);
  else
    printf("a = %d --- ng (answer = 200)\n",a);
}

int comb16()
{
  int foo;

  foo = get_int (0);

  foo >>= 1;
  foo >>= 1;
  foo >>= 1;
  foo >>= 1;
  foo >>= 1;

  if (foo)
    {
      printf(" ### NG ###\n");
    }else{
      printf(" ### OK ###\n");
    }
}
int get_int(a)
int a;
{
  return a;
}

int url016 ()
{
  char *stp1, str1[8];
  char *stp2, str2[8];
  static char cpy[] = "abcdefghijklmnopqrstuvwxyz";
  static char res1[] = "acegikm";
  static char res2[] = "bdfhjln";
  char *cp;
  int i;

  printf("***** unroll016 ***** unroll 1 never 0 not 0\n");
  stp1 = str1;
  stp2 = str2;
  cp = cpy;
  for (i = 0; i < 7; i++)
    {
      *(stp1 ++) = *(cp ++);
      *(stp2 ++) = *(cp ++);
    }
  *stp1 = '\0';
  *stp2 = '\0';
  if (strcmp (str1, res1))
    {
      printf ("bxd33 1 ng %s \n",str1);
      return 0;
    }
  if (strcmp (res2, str2))
    {
      printf ("bxd33 2 ng %s \n",str2);
      return 0;
    }
  if(i!=7)
    printf ("bxd33 ng\n");
  printf ("bxd33 ok\n");
  printf("***** unroll016 ***** end\n");
}
int main( ){
  scobe16( );
  cdpm0016( );
  m3mpfo16( );
  estreg16( );
  m3mptr16( );
  scrlp16(  );
  comk3116( );
  reduction16( );
  comb16( );
  url016( );
}
