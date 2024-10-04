#include  <stdio.h>

#define OK 1
#define NG 0

int ok();
struct tag1 {
   char      t1xx[90];
   long int  t1a:8;
   long int  t1b:8;
   long int  t1c:8;
   long int  t1d:8;
};
struct tag2 {
   char      t2xx[4000];
};
struct tag3 {
   char      t3xx[5001];
};

int sub971(volatile struct tag1 *pst1)
{
   if( pst1->t1a + pst1->t1b + pst1->t1c + pst1-> t1d == 100)
     return OK;
    else
     return NG;
}
int pk000971()
{
   volatile struct tag1 st1;
   volatile struct tag2 st2;
   volatile struct tag3 st3;

   st2.t2xx[0] = 'a';
   st3.t3xx[0] = 'b';
   st1.t1a = 10;
   st1.t1b = 20;
   st1.t1c = 30;
   st1.t1d = 40;
   printf("*** PK000971  START ***\n");
   if (sub971(&st1) == OK)
     printf("     +++ PK000971 OK +++\n");
   else
   {
     printf("     --- PK000971 NG ---\n");
     printf(" a,b,c,d = %d,%d,%d,%d\n",
                        st1.t1a,st1.t1b,st1.t1c,st1.t1d);
   }
   printf("*** PK000971   END  ***\n");
}
#include  <stdio.h>
struct tag {
  int a;
  int b;
};
static int sumi=0;
static double sumd=0;
static struct tag sumst={0,0};
void sub(int i)
{
     sumi +=i;
}
void sub1(double i)
{
     sumd +=i;
}
void sub2(struct tag i)
{
  sumst.a += i.a;
  sumst.b += i.b;
}

extern        volatile int         gei1;
extern  const volatile int         gei2;
              volatile int         gi1=0;
        const volatile int         gi2=1;
              volatile int        *gp1=&gi1;
        const volatile int        *gp2=&gi2;
static        volatile int        *gp4=&gi1;
static  const volatile int        *gp5=&gi2;
              volatile short int   gi3=0;
        const volatile short int   gi4=1;
              volatile double      gd1=0;
        const volatile double      gd2=1;
              volatile struct tag  gs1={2,3};
        const volatile struct tag  gs2={4,5};

int scrlp25()
{
                       int         dummy=2;
              volatile int         i1=0;
        const volatile int         i2=1;
              volatile int        *p1=&dummy;
        const volatile int        *p2=&dummy;
              volatile int        *p4=&dummy;

              volatile int        *p5=&dummy;
              volatile short int   i3=0;
        const volatile short int   i4=1;
              volatile double      d1=0;
        const volatile double      d2=1;
              volatile struct tag  s1={0,2};
        const volatile struct tag  s2={1,3};

        int i;
        for(i=0;i<10;i++) sub(i1);
        for(i=0;i<10;i++) sub(i2);
        for(i=0;i<10;i++) sub(*p1);
        for(i=0;i<10;i++) sub(*p2);
        for(i=0;i<10;i++) sub(*p4);
        for(i=0;i<10;i++) sub(*p5);
        for(i=0;i<10;i++) sub(i3);
        for(i=0;i<10;i++) sub(i4);
        for(i=0;i<10;i++) sub1(d1);
        for(i=0;i<10;i++) sub1(d2);
        for(i=0;i<10;i++) sub2(s1);
        for(i-0;i<10;i++) sub2(s2);

        for(i=0;i<10;i++) sub(gi1);
        for(i=0;i<10;i++) sub(gi2);
        for(i=0;i<10;i++) sub(*gp1);
        for(i=0;i<10;i++) sub(*gp2);
        for(i=0;i<10;i++) sub(*gp4);
        for(i=0;i<10;i++) sub(*gp5);
        for(i=0;i<10;i++) sub(gi3);
        for(i=0;i<10;i++) sub(gi4);
        for(i=0;i<10;i++) sub1(gd1);
        for(i=0;i<10;i++) sub1(gd2);
        for(i=0;i<10;i++) sub2(gs1);
        for(i-0;i<10;i++) sub2(gs2);
        ok();
}
int ok()
{
    if( sumi == 140 && sumd == 20 && sumst.a == 20 && sumst.b == 50 )
      puts(" OK ");
    else
      puts(" NG ");
    printf("%d \n",sumi);
    printf("%s%f \n","",sumd);
    printf("%d \n",sumst.a);
    printf("%d \n",sumst.b);
}

int cdpm0025 ( ) {
   int f1( ),f2( ),f3( ),f4( ),f5( ),f6( ),f7( ),f8( ),f9( ),f10( );
   int f11( ),f12( ),f13( ),f14( ),f15( ),f16( ),f17( ),f18( ),f19( ),f20( );
   int i,subx( );
   register volatile  int result;
   register volatile int result0;
   register volatile int result1;
   register volatile int result2;
   register volatile int result3;
   register volatile int result4;
   register volatile int result5;
   register volatile int result6;
   register volatile int result7;
   register volatile int result8;
   register volatile int result9;
  int j;
  static  int (*sub[ ])( )={f1,f2,f3,f4,f5,f6,f7,f8,f9,f10
                          ,f11,f12,f13,f14,f15,f16,f17,f18,f19,f20};
  for (i=0; i<=10;i++) {
  result=sub[i](result1=
           sub[i+1](result2=
             sub[i+2](result3=
               sub[i+3](result4=
                 sub[i+4](result5=
                   sub[i+5](result6=
                     sub[i+6](result7=
                       sub[i+7](result8=
                         sub[i+8](result9=
                           sub[i+9](1)
         )))))))));
    if (sub[i](result)==2048
     && 1022 == (result0=result1 + result2 + result3 + result4 + result5
                         + result6 + result7 + result8 + result9))
      printf ("** cdpm0025(%d) ** OK\n",(int)(i+1));
    else
      printf ("** cdpm0025(%d) ** NG result=%d result0=%d\n"
              ,(int)(i+1),result,result0);
  }
  for (i=0; i<=10;i++) {
    result=subx(result0=sub[i](i)
               ,result1=sub[i+1](i)
               ,result2=sub[i+2](i)
               ,result3=sub[i+3](i)
               ,result4=sub[i+4](i)
               ,result5=sub[i+5](i)
               ,result6=sub[i+6](i)
               ,result7=sub[i+7](i)
               ,result8=sub[i+8](i)
               ,result9=sub[i+9](i));

    if (result==(i*20)
     && result==(result0 + result1 + result2 + result3 + result4 + result5
               + result6 + result7 + result8 + result9))
      printf ("** cdpm0025(%d) ** OK\n",(int)(i+12));
    else
      printf ("** cdpm0025(%d) ** NG result=%d\n",(int)(i+12),result);
  }
}
 int f10(p)  register volatile int p;{return p+p;}
 int f9(p)  int p;{return p+p;}
 int f8(p)  int p;{return p+p;}
 int f7(p)  int p;{return p+p;}
 int f6(p)  int p;{return p+p;}
 int f5(p)  int p;{return p+p;}
 int f4(p)  int p;{return p+p;}
 int f3(p)  int p;{return p+p;}
 int f2(p)  int p;{return p+p;}
 int f1(p)  int p;{return p+p;}
 int f20(p)  int p;{return p+p;}
 int f19(p)  int p;{return p+p;}
 int f18(p)  int p;{return p+p;}
 int f17(p)  int p;{return p+p;}
 int f16(p)  int p;{return p+p;}
 int f15(p)  int p;{return p+p;}
 int f14(p)  int p;{return p+p;}
 int f13(p)  int p;{return p+p;}
 int f12(p)  int p;{return p+p;}
 int f11(p)  int p;{return p+p;}
 int subx(p0,p1,p2,p3,p4,p5,p6,p7,p8,p9)
    register volatile int p0,p1,p2,p3,p4,p5,p6,p7,p8,p9;{
return p0+p1+p2+p3+p4+p5+p6+p7+p8+p9;
}
struct t {
                        double a; 
                        double b;
};
void    sub3126(struct t a[][3][3][3][3][3][3][3][3][3],
            struct t b[][3][3][3][3][3][3][3][3][3]) {
volatile int i,j,k,l,m,n,o,p,q,r,s,t,u,ok=0,ng=0;

  for (i=0; i<3; i++ )     
    for (j=0; j<3; j++)     
      for (k=0; k<3; k++)  
        for (l=0; l<3; l++)  
          for (m=0; m<3; m++)  
            for (n=0; n<3; n++)  
              for (o=0; o<3; o++)  
                for (p=0; p<3; p++)  
                  for (q=0; q<3; q++)  
                    for (r=0; r<3; r++)  
         b[i][j][k][l][m][n][o][p][q][r].a 
        =a[i][j][k][l][m][n][o][p][q][r].a + 99.0; 

}
void    clean(struct t b[][3][3][3][3][3][3][3][3][3]) {
int i,j,k,l,m,n,o,p,q,r,s,t,u;
  for (i=0; i<3; i++ )     
    for (j=0; j<3; j++)     
      for (k=0; k<3; k++)  
        for (l=0; l<3; l++)  
          for (m=0; m<3; m++)  
            for (n=0; n<3; n++)  
              for (o=0; o<3; o++)  
                for (p=0; p<3; p++)  
                  for (q=0; q<3; q++)  
                    for (r=0; r<3; r++)  {
         b[i][j][k][l][m][n][o][p][q][r].a =1.0;
         b[i][j][k][l][m][n][o][p][q][r].b =100.0;
           }
}
void    check(struct t a[][3][3][3][3][3][3][3][3][3],
              struct t b[][3][3][3][3][3][3][3][3][3]) {
int i,j,k,l,m,n,o,p,q,r,s,t,u;
int ok=0,ng=0;
  for (i=0; i<3; i++ )     
    for (j=0; j<3; j++)     
      for (k=0; k<3; k++)  
        for (l=0; l<3; l++)  
          for (m=0; m<3; m++)  
            for (n=0; n<3; n++)  
              for (o=0; o<3; o++)  
                for (p=0; p<3; p++)  
                  for (q=0; q<3; q++)  
                    for (r=0; r<3; r++)  
        if (b[i][j][k][l][m][n][o][p][q][r].a
         == a[i][j][k][l][m][n][o][p][q][r].b )
         ok++; else ng++;
  if (ng) printf("comk3126 ng\n");
   else   printf("comk3126 ok\n");
}
int comk3126 ( ) {
struct t  b[3][3][3][3][3][3][3][3][3][3];
struct t  a[3][3][3][3][3][3][3][3][3][3];
  clean(a);
  clean(b);
  sub3126(a,b);
  check(a,b);
}

#include  <stdio.h>

int scrna14()
{
  int a,b;
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

int sub54(i,j)
 volatile   long long int i;
 volatile   long long int j; {
i=~i;
i=i<< (j+30);
i=(~j ) & i;
printf("%.8x%.8x\n",*(int *)&i,*(((int *)&i)+1));
}
int kaimk2054 ( ) {
volatile const  long long int i=1;
 printf("*kaimk2054 start*\n");
 {
volatile const  long long int i=2;
 {
volatile const  long long int i=3;
 {
volatile const  long long int i=4;
 {
volatile const  long long int i=5;
 {
volatile const  long long int i=6;
 {
volatile const  long long int i=7;
 {
volatile const  long long int i=8;
 {
volatile const  long long int i=9;
 {
volatile const  long long int i=10;
 {
volatile const  long long int i=11;
 {
volatile const  long long int i=12;
 {
volatile const  long long int i=13;
 {
volatile const  long long int i=14;
 {
volatile const  long long int i=15;
 {
volatile const  long long int i=16;
 {
  volatile const  long long int i=17;
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 }
   sub54(i,i);
 printf("*kaimk2054 end*\n");

}
int main( ) {
  register int i;
  for (i=0; i<3;i++) {
    scrlp25( );
    pk000971( );
    cdpm0025( );
    if (i==0) continue;
    scrna14( );
    if (i==1) continue;
    comk3126( );
    if (i==2) continue;
    kaimk2054( );
  }
}
