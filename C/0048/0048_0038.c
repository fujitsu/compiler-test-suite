#include <stdio.h>
#include <setjmp.h>
#include <string.h>
int sub1 (void);
int func111 (int x, int y);
int scpsi12 (void);
int scpsi11 (void);
int scpsi08 (void);
int scpsi07 (void);
int scpsi06 (void);
int mptest16 (void);
int mptest15 (void);
int mptest14 (void);
int mptest13 (void);
int mptest12 (void);
int m3etre16 (void);
int m3etre15 (void);
int m3etre14 (void);
int m3etre13 (void);
int m3etre12 (void);
#define   m_type_january  1
#define   m_type_may      2
#define   m_type_october  3
#define   m_type_december 4
int 
main (void)
{
    printf("*  *** TEST FOR COMMON *** STARTED *\n");
    m3etre12();
    m3etre13();
    m3etre14();
    m3etre15();
    m3etre16();
    mptest12();
    mptest13();
    mptest14();
    mptest15();
    mptest16();
    scpsi06();
    scpsi07();
    scpsi08();
    scpsi11();
    scpsi12();
    printf("*  *** TEST FOR COMMON *** ENDED *\n");
}

int 
m3etre12 (void)
  {
printf("\n* M3ETRE12 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int a=0;
  int b=3;
  a=b%2;
  if(a==1)
    printf("*** M3ETRE12-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-01 *** N G ***\n");
}
{
  int a=0;
  int b=3;
  a=1<<1;
  if(a==2)
    printf("*** M3ETRE12-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-02 *** N G ***\n");
}
{
  int a=0;
  int b=1;
  a=b<<b;
  if(a==2)
    printf("*** M3ETRE12-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-03 *** N G ***\n");
}
{
  int a=0;
  int b=1;
  a=2>>b;
  if(a==1)
    printf("*** M3ETRE12-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-04 *** N G ***\n");
}
{
  int a=0;
  int b=2;
  int c=1;
  a=b>>c;
  if(a==1)
    printf("*** M3ETRE12-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-05 *** N G ***\n");
}
{
  int a=0;
  a=2^1;
  if(a==3)
    printf("*** M3ETRE12-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-06 *** N G ***\n");
}
{
  int a=0;
  int b=2;
  int c=1;
  a=b^c;
  if(a==3)
    printf("*** M3ETRE12-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-07 *** N G ***\n");
}
{
  int a=0;
  a=2|1;
  if(a==3)
    printf("*** M3ETRE12-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-08 *** N G ***\n");
}
{
  int a=0;
  int b=1;
  int c=2;
  a=b|c;
  if(a==3)
    printf("*** M3ETRE12-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-09 *** N G ***\n");
}
{
  int a=0;
  a=1&2;
  if(a==0)
    printf("*** M3ETRE12-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE12-10 *** N G ***\n");
}
printf("*** M3ETRE12 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
int 
m3etre13 (void)
  {
printf("\n* M3ETRE13 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int a=1;
  int b=1;
  int i=0;
  i=a&b;
  if(i==1)
    printf("*** M3ETRE13-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-01 *** N G ***\n");
}
{
  int a=1;
  int *p;
  &a;
  p=&a;
  if(p==&a)
    printf("*** M3ETRE13-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-02 *** N G ***\n");
}
{
  int i=0;
  int arr[2];
  i=&arr[0] < &arr[1];
  if(i==1)
    printf("*** M3ETRE13-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-03 *** N G ***\n");
}
{
  int arr[2];
  int i=0;
  i=&arr[0] <= &arr[0];
  if(i==1)
    printf("*** M3ETRE13-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-04 *** N G ***\n");
}
{
  int arr[2];
  int i=1;
  i=&arr[0] > &arr[1];
  if(i==0)
    printf("*** M3ETRE13-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-05 *** N G ***\n");
}
{
  int arr[2];
  int i=1;
  i=&arr[0] >= &arr[1];
  if(i==0)
    printf("*** M3ETRE13-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-06 *** N G ***\n");
}
{
  int arr[2];
  int i=0;
  i=&arr[0] == &arr[0];
  if(i==1)
    printf("*** M3ETRE13-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-07 *** N G ***\n");
}
{
  int arr[2];
  int i=1;
  i=&arr[0] != &arr[0];
  if(i==0)
    printf("*** M3ETRE13-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-08 *** N G ***\n");
}
{
  int a=1;
  int i=0;
  i=&a && 1;
  if(i==1)
    printf("*** M3ETRE13-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-09 *** N G ***\n");
}
{
  int a=1;
  int i=0;
  i=&a || &a;
  if(i==1)
    printf("*** M3ETRE13-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE13-10 *** N G ***\n");
}
printf("*** M3ETRE13 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
int 
m3etre14 (void)
  {
printf("\n* M3ETRE14 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int a=0;
  int i=1;
  i=&a - &a;
  if(i==0)
    printf("*** M3ETRE14-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-01 *** N G ***\n");
}
{
  int a[2];
  int *i;
  int b=1;
  int x=0;
  a[1]=200;
  i=b + &a[0];
  x=*i;
  if(x==200)
    printf("*** M3ETRE14-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-02 *** N G ***\n");
}
{
  int a=1;
  int arr[2];
  arr[0]=1;
  arr[1]=2;
  a=arr[0] & arr[1];
  if(a==0)
    printf("*** M3ETRE14-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-03 *** N G ***\n");
}
{
  int *p;
  int a=1;
  p=&a;
  if(*p==1)
    printf("*** M3ETRE14-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-04 *** N G ***\n");
}
{
  int p;
  int a=1;
  p=!&a;
  if(p==0)
    printf("*** M3ETRE14-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-05 *** N G ***\n");
}
{
  int *i;
  int a=0;
  int b=1;
  int arr[2];
  i=a<1?&b:arr;
  if(*i==1)
    printf("*** M3ETRE14-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-06 *** N G ***\n");
}
{
  int *i;
  int a=0;
  int b=1;
  int arr[2];
  i=a<0?arr:&b;
  if(*i==1)
    printf("*** M3ETRE14-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-07 *** N G ***\n");
}
{
  int *i;
  int a=1;
  i=(&a);
  if(*i==1)
    printf("*** M3ETRE14-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-08 *** N G ***\n");
}
{
  int i=0;
  int a=1;
  int b=1;
  i=(i=i+a)&b;
  if(i==1)
    printf("*** M3ETRE14-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-09 *** N G ***\n");
}
{
  int *p;
  int a=1,b=1;
  b=(p=&a,&a==&a);
  if(b==1)
    printf("*** M3ETRE14-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE14-10 *** N G ***\n");
}
printf("*** M3ETRE14 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
int 
m3etre15 (void)
  {
printf("\n* M3ETRE15 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int f();
  int ff();
  int a=0;
  int i=0;
  i=(f(a)&ff(a));
  if(i==1)
    printf("*** M3ETRE15-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-01 *** N G ***\n");
}
{
  int i=0;
  i=2*1;
  if(i==2)
    printf("*** M3ETRE15-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-02 *** N G ***\n");
}
{
  int i=0;
  int a=1,b=2;
  i=a*b;
  if(i==2)
    printf("*** M3ETRE15-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-03 *** N G ***\n");
}
{
  int *p;
  int a=1,b=2;
  p=&a;
  *p+=b;
  if(*p==3)
    printf("*** M3ETRE15-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-04 *** N G ***\n");
}
{
  int *p;
  int a=1,b=2,i=1;
  p=&a;
  i=b<*p;
  if(i==0)
    printf("*** M3ETRE15-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-05 *** N G ***\n");
}
{
  int *p;
  int a=2,b=2,i=0;
  p=&a;
  i=b<=*p;
  if(i==1)
    printf("*** M3ETRE15-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-06 *** N G ***\n");
}
{
  int *p;
  int a=1,b=2,i=0;
  p=&a;
  i=b>*p;
  if(i==1)
    printf("*** M3ETRE15-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-07 *** N G ***\n");
}
{
  int *p;
  int a=1,b=2,i=0;
  p=&a;
  i=b>=*p;
  if(i==1)
    printf("*** M3ETRE15-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-08 *** N G ***\n");
}
{
  int *p;
  int a=1,b=2,i=1;
  p=&a;
  i=b==*p;
  if(i==0)
    printf("*** M3ETRE15-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-09 *** N G ***\n");
}
{
  int *p;
  int a=1,b=2,i=0;
  p=&a;
  i=b!=*p;
  if(i==1)
    printf("*** M3ETRE15-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE15-10 *** N G ***\n");
}
printf("*** M3ETRE15 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
int 
f (int a)
{
  a=1;
  return(a);
}
int 
ff (int a)
  {
    a=1;
    return(a);
  }
int 
m3etre16 (void)
  {
printf("\n* M3ETRE16 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=1 && *p;
  if(i==1)
    printf("*** M3ETRE16-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-01 *** N G ***\n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=0 || *p;
  if(i==1)
    printf("*** M3ETRE16-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-02 *** N G ***\n");
}
{
  int *p;
  int a=2;
  int i=0;
  p=&a;
  i=4 / *p;
  if(i==2)
    printf("*** M3ETRE16-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-03 *** N G ***\n");
}
{
  int *p;
  int a=2;
  int i=0;
  p=&a;
  i=3 % *p;
  if(i==1)
    printf("*** M3ETRE16-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-04 *** N G ***\n");
}
{
  int *p;
  int a=2;
  int i=0;
  p=&a;
  i=3 << *p;
  if(i==12)
    printf("*** M3ETRE16-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-05 *** N G ***\n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=3 >> *p;
  if(i==1)
    printf("*** M3ETRE16-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-06 *** N G ***\n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=3 ^ *p;
  if(i==2)
    printf("*** M3ETRE16-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-07 *** N G ***\n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=3 | *p;
  if(i==3)
    printf("*** M3ETRE16-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-08 *** N G ***\n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=3 & *p;
  if(i==1)
    printf("*** M3ETRE16-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-09 *** N G ***\n");
}
{
  int *p;
  int a=2;
  int i=0;
  p=&a;
  i=3 * *p;
  if(i==6)
    printf("*** M3ETRE16-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE16-10 *** N G ***\n");
}
printf("*** M3ETRE16 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
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
   static int staticfunction1();
int 
scpsi06 (void)
{
          int   a,b,c;

  printf("********** SCPSI06 TEST START **********\n");
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

  printf("********** SCPSI07 TEST START **********\n");
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

  printf("********** SCPSI08 TEST START **********\n");

       sa=4;
       sb=-3;
       sc=6;

  if (sa == 4 && sb == -3 && sc == 6)
      printf("***** SCPSI08 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI08 - 01 ***** N   G *****\n");

  sd=func111(sa,sb);

  if (sd == 1)
      printf("***** SCPSI08 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI08 - 02 ***** N   G *****\n");

  printf("********** SCPSI08 TEST  END  **********\n");
}
int 
func111 (int x, int y)

{
       int     z;

       z=x+y;
       return(z);
}

          jmp_buf env;

int 
scpsi11 (void)
{
          int    x;
          struct tag1  {
          int    month;
          int    day;
          } birth;

  printf("********** SCPSI11 TEST START **********\n");

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
  sub1();
   else
  printf("********** SCPSI11 TEST  END  **********\n");
}
  int 
sub1 (void)
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

  printf("********** SCPSI12 TEST START **********\n");

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
