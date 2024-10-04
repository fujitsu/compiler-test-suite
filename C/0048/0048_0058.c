
#include <stdio.h>
#include <stddef.h>
#include <setjmp.h>
#include <string.h>
#include <signal.h>
int ser (int *x, int *y);
int ank (void);
int subm5 (void);
int sub1a (int i_dum, int *i1, int *j1);
int sub1qw (void);
int func1cc (int x, int y);
int func1a (int q);
int func1 (int x, int y);
int sub7 (void);
int sub2 (void);
int sub1 (void);
int m3mpsi0a (void);
int m3mpsi09 (void);
int m3mpsi08 (void);
int m3mpsi07 (void);
int m3mpsi05 (void);
int m3mptr05 (void);
int m3mptr04 (void);
int m3mptr03 (void);
int m3mptr02 (void);
int m3mptr01 (void);
int m3mpjp01 (void);
int m3mpjp00 (void);
int m3mpyt05 (void);
int m3mpyt04 (void);
int m3mpyt03 (void);
int m3mpyt02 (void);
int m3mpyt01 (void);
int scpva01 (void);
int scpsi12 (void);
int scpsi11 (void);
int scpsi08 (void);
int scpsi07 (void);
int scpsi06 (void);
int scpsi05 (void);
int scpsi04 (void);
int scpsi03 (void);
int scpsi02 (void);
int scpsi01 (void);
int scppr01 (void);
int scpo304 (void);
int scpo303 (void);
int scpo302 (void);
int m3etre63 (void);
int m3etre62 (void);
int m3etre61 (void);
int m3etre60 (void);
int m3etre59 (void);
int m3etre58 (void);
int m3etre57 (void);
int m3etre56 (void);
int m3etre55 (void);
int m3etre54 (void);
int m3etre53 (void);
int m3etre52 (void);
int m3etre51 (void);
int m3etre50 (void);
int m3etre49 (void);
int m3etre48 (void);
int m3etre47 (void);
int m3etre46 (void);
int m3etre45 (void);
int m3etre44 (void);
int 
main (void)
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    m3etre44();
    m3etre45();
    m3etre46();
    m3etre47();
    m3etre48();
    m3etre49();
    m3etre50();
    m3etre51();
    m3etre52();
    m3etre53();
    m3etre54();
    m3etre55();
    m3etre56();
    m3etre57();
    m3etre58();
    m3etre59();
    m3etre60();
    m3etre61();
    m3etre62();
    m3etre63();
    scpo302();
    scpo303();
    scpo304();
    scppr01();
    scpsi01();
    scpsi02();
    scpsi03();
    scpsi04();
    scpsi05();
    scpsi06();
    scpsi07();
    scpsi08();
    scpsi11();
    scpsi12();
    scpva01();
    m3mpyt02();
    m3mpyt03();
    m3mpyt04();
    m3mpyt05();
    m3mpjp00();
    m3mpjp01();
    m3mptr01();
    m3mptr02();
    m3mptr03();
    m3mptr04();
    m3mptr05();
    m3mpsi05();
    m3mpsi07();
    m3mpsi08();
    m3mpsi09();
    m3mpsi0a();
    m3mpyt01();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}

int 
m3etre44 (void)
  {
printf("*** M3ETRE44 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=1;
  i=+sizeof(int);
  if(i==4)
    printf("*** M3ETRE44-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-01 *** N G ***\n");
}
{
  int i=1,a=1;
  i=(++a,sizeof(int));
  if(i==4&a==2)
    printf("*** M3ETRE44-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-02 *** N G ***\n");
}
{
  int i=1,a=2;
  i=i==1?a:0;
  if(i==2)
    printf("*** M3ETRE44-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-03 *** N G ***\n");
}
{
  int i=1,a=2;
  i=i==a?a:0;
  if(i==0)
    printf("*** M3ETRE44-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-04 *** N G ***\n");
}
{
  int i=1,a=2;
  static int arr[]={1,2,3};
  i=i==arr[1]?a:0;
  if(i==0)
    printf("*** M3ETRE44-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-05 *** N G ***\n");
}
{
  int i=1,a=2,b=0;
  i=i==(b=1+1)?a:0;
  if(i==0)
    printf("*** M3ETRE44-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-06 *** N G ***\n");
}
{
  int i=1,a=2,b=0;
  i=i==b++ ?a:0;
  if(i==0)
    printf("*** M3ETRE44-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-07 *** N G ***\n");
}
{
  int i=1,a=2,b=0;
  i=i==b-- ?a:0;
  if(i==0)
    printf("*** M3ETRE44-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-08 *** N G ***\n");
}
{
  int f44();
  int i=1,a=2,b=0;
  i=i==f44(b)?a:0;
  if(i==2)
    printf("*** M3ETRE44-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-09 *** N G ***\n");
}
{
  int f44();
  int i=1,a=2,b=1;
  i=i==b?2:0;
  if(i==2)
    printf("*** M3ETRE44-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-10 *** N G ***\n");
}
printf("*** M3ETRE44 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
f44 (int b)
  {
    b=1;
    return(b);
  }
int 
m3etre45 (void)
  {
printf("*** M3ETRE45 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=1,a=2,b=1;
  i=i==b?a:0;
  if(i==2)
    printf("*** M3ETRE45-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-01 *** N G ***\n");
}
{
  static int arr[]={1,2,3};
  int i=1,b=1;
  i=i==b?arr[1]:0;
  if(i==2)
    printf("*** M3ETRE45-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-02 *** N G ***\n");
}
{
  int i=2,b=2;
  i=i==b?(b=b+1): 0;
  if(i==3)
    printf("*** M3ETRE45-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-03 *** N G ***\n");
}
{
  int i=0,b=2;
  i=b==2?b++: 0;
  if(i==2)
    printf("*** M3ETRE45-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-04 *** N G ***\n");
}
{
  int i=0,b=2;
  i=b==2?b--: 0;
  if(i==2)
    printf("*** M3ETRE45-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-05 *** N G ***\n");
}
{
  int i=2,b=2,f45(),a=0;
  i=i==b?f45(a):0;
  if(i==3)
    printf("*** M3ETRE45-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-06 *** N G ***\n");
}
{
  int i=0,f45(),a=0;
  i=f45(a);
  if(i==3)
    printf("*** M3ETRE45-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-07 *** N G ***\n");
}
{
  int i=0,a=0;
  (i=a+1);
  if(i==1)
    printf("*** M3ETRE45-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-08 *** N G ***\n");
}
{
  int i=1,a=0;
  i=a<(a);
  if(i==0)
    printf("*** M3ETRE45-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-09 *** N G ***\n");
}
{
  int i=0,a=0;
  i=a<=(a);
  if(i==1)
    printf("*** M3ETRE45-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-10 *** N G ***\n");
}
printf("*** M3ETRE45 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
f45 (int a)
  {
    a=3;
    return(a);
  }
int 
m3etre46 (void)
  {
printf("*** M3ETRE46 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=1,a=0;
  i=a>(a);
  if(i==0)
    printf("*** M3ETRE46-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-01 *** N G ***\n");
}
{
  int i=0,a=0;
  i=a>=(a);
  if(i==1)
    printf("*** M3ETRE46-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-02 *** N G ***\n");
}
{
  int i=0,a=0;
  i=a==(a);
  if(i==1)
    printf("*** M3ETRE46-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-03 *** N G ***\n");
}
{
  int i=1,a=0;
  i=a!=(a);
  if(i==0)
    printf("*** M3ETRE46-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-04 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a&&(a);
  if(i==1)
    printf("*** M3ETRE46-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-05 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a||(a);
  if(i==1)
    printf("*** M3ETRE46-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-06 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a/(a);
  if(i==1)
    printf("*** M3ETRE46-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-07 *** N G ***\n");
}
{
  int i=1,a=1;
  i=a%(a);
  if(i==0)
    printf("*** M3ETRE46-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-08 *** N G ***\n");
}
{
  int i=1,a=1;
  i=a<<(a);
  if(i==2)
    printf("*** M3ETRE46-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-09 *** N G ***\n");
}
{
  int i=0,a=2;
  i=a>>(1);
  if(i==1)
    printf("*** M3ETRE46-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-10 *** N G ***\n");
}
printf("*** M3ETRE46 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre47 (void)
  {
printf("*** M3ETRE47 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=0,a=2;
  i=a^(1);
  if(i==3)
    printf("*** M3ETRE47-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-01 *** N G ***\n");
}
{
  int i=0,a=2;
  i=a|(1);
  if(i==3)
    printf("*** M3ETRE47-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-02 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a&(1);
  if(i==1)
    printf("*** M3ETRE47-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-03 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a*(1);
  if(i==1)
    printf("*** M3ETRE47-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-04 *** N G ***\n");
}
{
  int i=1,a=1;
  i=a-(1);
  if(i==0)
    printf("*** M3ETRE47-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-05 *** N G ***\n");
}
{
  int i=1,a=1;
  i=a+(1);
  if(i==2)
    printf("*** M3ETRE47-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-06 *** N G ***\n");
}
{
  static int arr[]={1,2,3};int i=1;
  i=arr[(++i)];
  if(i==3)
    printf("*** M3ETRE47-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-07 *** N G ***\n");
}
{
  int i=0,a=1;
  i+=(a);
  if(i==1)
    printf("*** M3ETRE47-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-08 *** N G ***\n");
}
{
  int i=0,a=1;
  i-=(a);
  if(i==-1)
    printf("*** M3ETRE47-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-09 *** N G ***\n");
}
{
  int i=1,a=2;
  i*=(a);
  if(i==2)
    printf("*** M3ETRE47-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-10 *** N G ***\n");
}
printf("*** M3ETRE47 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre48 (void)
  {
printf("*** M3ETRE48 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=4,a=2;
  i/=(a);
  if(i==2)
    printf("*** M3ETRE48-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-01 *** N G ***\n");
}
{
  int i=4,a=2;
  i%=(a);
  if(i==0)
    printf("*** M3ETRE48-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-02 *** N G ***\n");
}
{
  int i=4,a=2;
  i>>=(a);
  if(i==1)
    printf("*** M3ETRE48-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-03 *** N G ***\n");
}
{
  int i=4,a=2;
  i<<=(a);
  if(i==16)
    printf("*** M3ETRE48-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-04 *** N G ***\n");
}
{
  int i=4,a=2;
  i&=(a);
  if(i==0)
    printf("*** M3ETRE48-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-05 *** N G ***\n");
}
{
  int i=4,a=2;
  i^=(a);
  if(i==6)
    printf("*** M3ETRE48-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-06 *** N G ***\n");
}
{
  int i=4,a=2;
  i|=(a);
  if(i==6)
    printf("*** M3ETRE48-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-07 *** N G ***\n");
}
{
  int i=4,a=2;
  i=(a);
  if(i==2)
    printf("*** M3ETRE48-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-08 *** N G ***\n");
}
{
  int *i,a=2;
  i=&(a);
  if(*i==2)
    printf("*** M3ETRE48-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-09 *** N G ***\n");
}
{
  int *i,a=2,b=0;
  i=&(a);
  b=*(i);
  if(b==2)
    printf("*** M3ETRE48-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-10 *** N G ***\n");
}
printf("*** M3ETRE48 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre49 (void)
  {
printf("*** M3ETRE49 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=0,a=2;
  i=-(a);
  if(i==-2)
    printf("*** M3ETRE49-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-01 *** N G ***\n");
}
{
  int i=1,a=2;
  i=!(a);
  if(i==0)
    printf("*** M3ETRE49-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-02 *** N G ***\n");
}
{
  int i=0,a=1;
  i=~(a);
  if(i==-2)
    printf("*** M3ETRE49-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-03 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=(int)(a);
  if(i==1)
    printf("*** M3ETRE49-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-04 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=(i==0)?(++a):1;
  if(i==2)
    printf("*** M3ETRE49-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-05 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=(i!=0)?1:(++a);
  if(i==2)
    printf("*** M3ETRE49-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-06 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=((a=a+1)+1);
  if(i==3)
    printf("*** M3ETRE49-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-07 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=+(a=a+1);
  if(i==2)
    printf("*** M3ETRE49-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-08 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=++(a);
  if(i==2)
    printf("*** M3ETRE49-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-09 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=--(a);
  if(i==0)
    printf("*** M3ETRE49-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-10 *** N G ***\n");
}
printf("*** M3ETRE49 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre50 (void)
  {
printf("*** M3ETRE50 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=0;char a=1;
  i=--a,(++i);
  if(i==1)
    printf("*** M3ETRE50-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-01 *** N G ***\n");
}
{
  int f50();char a=1;
  a=f50(1);
  if(a==2)
    printf("*** M3ETRE50-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-02 *** N G ***\n");
}
{
  int f50();char a=1,b=1;
  a=f50(b);
  if(a==2)
    printf("*** M3ETRE50-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-03 *** N G ***\n");
}
{
  int f50();char a=1;
  static int arr[]={1,2,3};
  a=f50(arr[0]);
  if(a==2)
    printf("*** M3ETRE50-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-04 *** N G ***\n");
}
{
  int fff();char a=0;
  a=fff();
  if(a==2)
    printf("*** M3ETRE50-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-05 *** N G ***\n");
}
{
  int f50();char a=2;
  a=f50(a=(a+(-1)));
  if(a==2)
    printf("*** M3ETRE50-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-06 *** N G ***\n");
}
{
  char a=2,i=0;
  i=(a++);
  if(a==3&i==2)
    printf("*** M3ETRE50-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-07 *** N G ***\n");
}
{
  char a=2,i=0;
  i=(a--);
  if(a==1&i==2)
    printf("*** M3ETRE50-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-08 *** N G ***\n");
}
{
  int f50();char a=1,b=0;
  b=(a=f50(a));
  if(b==2)
    printf("*** M3ETRE50-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-09 *** N G ***\n");
}
{
  char i=0,a=1;
  i=(a++);
  if(i==1)
    printf("*** M3ETRE50-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-10 *** N G ***\n");
}
printf("*** M3ETRE50 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
fff (void)
{
  return(2);
  }
int 
f50 (int a)
  {
    if(a==1)
    return(2);
    else
    return(0);
  }
int 
m3etre51 (void)
  {
printf("\n*** M3ETRE51 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  char a=1;
  ++a;
  if(a==2)
    printf("*** M3ETRE51-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-01 *** N G ***\n");
}
{
  int i=1;char a=0;
  i=i<++a;
  if(i==0&a==1)
    printf("*** M3ETRE51-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-02 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i<=++a;
  if(i==0&a==1)
    printf("*** M3ETRE51-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-03 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i>++a;
  if(i==1&a==1)
    printf("*** M3ETRE51-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-04 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i>=++a;
  if(i==1&a==1)
    printf("*** M3ETRE51-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-05 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i==++a;
  if(i==0&a==1)
    printf("*** M3ETRE51-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-06 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i!=++a;
  if(i==1&a==1)
    printf("*** M3ETRE51-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-07 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i&&++a;
  if(i==1&a==1)
    printf("*** M3ETRE51-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-08 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i||++a;
  if(i==1&a==0)
    printf("*** M3ETRE51-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-09 *** N G ***\n");
}
{
  int i=2;char a=1;
  i=i/++a;
  if(i==1&a==2)
    printf("*** M3ETRE51-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-10 *** N G ***\n");
}
printf("*** M3ETRE51 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre52 (void)
  {
printf("\n*** M3ETRE52 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=2;char a=1;
  i=i%++a;
  if(i==0&a==2)
    printf("*** M3ETRE52-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-01 *** N G ***\n");
}
{
  int i=2;char a=1;
  i=i<<++a;
  if(i==8&a==2)
    printf("*** M3ETRE52-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-02 *** N G ***\n");
}
{
  int i=8;char a=1;
  i=i>>++a;
  if(i==2&a==2)
    printf("*** M3ETRE52-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-03 *** N G ***\n");
}
{
  int i=2;char a=1;
  i=i^++a;
  if(i==0&a==2)
    printf("*** M3ETRE52-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-04 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i|++a;
  if(i==3&a==2)
    printf("*** M3ETRE52-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-05 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i&++a;
  if(i==0&a==2)
    printf("*** M3ETRE52-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-06 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i*++a;
  if(i==2&a==2)
    printf("*** M3ETRE52-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-07 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i-++a;
  if(i==-1&a==2)
    printf("*** M3ETRE52-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-08 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i+ ++a;
  if(i==3&a==2)
    printf("*** M3ETRE52-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-09 *** N G ***\n");
}
{
  int i=1;char a=1;
  static int arr[]={1,2,3};
  i=arr[++a];
  if(i==3&a==2)
    printf("*** M3ETRE52-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-10 *** N G ***\n");
}
printf("*** M3ETRE52 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre53 (void)
  {
printf("\n*** M3ETRE53 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=1;char a=1,b=0;
  static int arr[]={1,2,4};
  i=(arr[a]++);
  b=arr[a];
  if(i==2&a==1&b==3)
    printf("*** M3ETRE53-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-01 *** N G ***\n");
}
{
  int i=1;char a=1;
  i+= ++a;
  if(i==3&a==2)
    printf("*** M3ETRE53-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-02 *** N G ***\n");
}
{
  int i=1;char a=1;
  i-= ++a;
  if(i==-1&a==2)
    printf("*** M3ETRE53-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-03 *** N G ***\n");
}
{
  int i=1;char a=1;
  i*= ++a;
  if(i==2&a==2)
    printf("*** M3ETRE53-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-04 *** N G ***\n");
}
{
  int i=2;char a=1;
  i/= ++a;
  if(i==1&a==2)
    printf("*** M3ETRE53-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-05 *** N G ***\n");
}
{
  int i=2;char a=1;
  i%= ++a;
  if(i==0&a==2)
    printf("*** M3ETRE53-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-06 *** N G ***\n");
}
{
  int i=4;char a=1;
  i>>= ++a;
  if(i==1&a==2)
    printf("*** M3ETRE53-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-07 *** N G ***\n");
}
{
  int i=4;char a=1;
  i<<= ++a;
  if(i==16&a==2)
    printf("*** M3ETRE53-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-08 *** N G ***\n");
}
{
  int i=4;char a=1;
  i&= ++a;
  if(i==0&a==2)
    printf("*** M3ETRE53-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-09 *** N G ***\n");
}
{
  int i=4;char a=1;
  i^= ++a;
  if(i==6&a==2)
    printf("*** M3ETRE53-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-10 *** N G ***\n");
}
printf("*** M3ETRE53 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre54 (void)
  {
printf("\n*** M3ETRE54 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=4;char a=1;
  i|= ++a;
  if(i==6&a==2)
    printf("*** M3ETRE54-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-01 *** N G ***\n");
}
{
  int i=4;char a=1;
  i= ++a;
  if(i==2&a==2)
    printf("*** M3ETRE54-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-02 *** N G ***\n");
}
{
  int i=4;char a=1;
  i= - ++a;
  if(i==-2&a==2)
    printf("*** M3ETRE54-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-03 *** N G ***\n");
}
{
  int i=4;char a=1;
  i= ! ++a;
  if(i==0&a==2)
    printf("*** M3ETRE54-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-04 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=~ ++a;
  if(i==-2&a==1)
    printf("*** M3ETRE54-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-05 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=(i>0)?++a:0;
  if(i==1)
    printf("*** M3ETRE54-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-06 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=(i<0)?0:++a;
  if(i==1)
    printf("*** M3ETRE54-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-07 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=i+(++a);
  if(i==5)
    printf("*** M3ETRE54-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-08 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=(a)++;
  if(i==0&a==1)
    printf("*** M3ETRE54-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-09 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=+ ++a;
  if(i==1)
    printf("*** M3ETRE54-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-10 *** N G ***\n");
}
printf("*** M3ETRE54 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre55 (void)
  {
printf("\n*** M3ETRE55 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=4;char a=0;
  a=(a+=i),++a;
  if(a==5)
    printf("*** M3ETRE55-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-01 *** N G ***\n");
}
{
  int i=4;char a=1;
  i=a--;
  if(i==1&a==0)
    printf("*** M3ETRE55-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-02 *** N G ***\n");
}
{
  int i=4;char a=1;
  --a;
  if(a==0)
    printf("*** M3ETRE55-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-03 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b<--a;
  if(i==0)
    printf("*** M3ETRE55-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-04 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b<=--a;
  if(i==1)
    printf("*** M3ETRE55-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-05 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b>--a;
  if(i==0)
    printf("*** M3ETRE55-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-06 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b>=--a;
  if(i==1)
    printf("*** M3ETRE55-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-07 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b==--a;
  if(i==1)
    printf("*** M3ETRE55-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-08 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b!=--a;
  if(i==0)
    printf("*** M3ETRE55-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-09 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b&&--a;
  if(i==0&a==1)
    printf("*** M3ETRE55-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-10 *** N G ***\n");
}
printf("*** M3ETRE55 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre56 (void)
  {
printf("\n*** M3ETRE56 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=4;char a=1,b=0;
  i=b||--a;
  if(i==0&a==0)
    printf("*** M3ETRE56-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-01 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b/--a;
  if(i==3)
    printf("*** M3ETRE56-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-02 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b%--a;
  if(i==0)
    printf("*** M3ETRE56-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-03 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b<<--a;
  if(i==6)
    printf("*** M3ETRE56-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-04 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b>>--a;
  if(i==1)
    printf("*** M3ETRE56-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-05 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b^ --a;
  if(i==2)
    printf("*** M3ETRE56-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-06 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b|--a;
  if(i==3)
    printf("*** M3ETRE56-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-07 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b&--a;
  if(i==1)
    printf("*** M3ETRE56-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-08 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b*--a;
  if(i==3)
    printf("*** M3ETRE56-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-09 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b- --a;
  if(i==2)
    printf("*** M3ETRE56-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE56 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre57 (void)
  {
printf("\n*** M3ETRE57 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5;char a=2,b=3;
  i=b+ --a;
  if(i==4)
    printf("*** M3ETRE57-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-01 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  static int arr[]={1,2,3};
  i=arr[--a];
  if(i==2)
    printf("*** M3ETRE57-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-02 *** N G ********** N G ***\n");
}
{
  int i=5;char a=1;
  static int arr[]={1,12,3};
  arr[a]--;
  i=arr[a];
  if(i==11&&a==1)
    printf("*** M3ETRE57-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-03 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i+=--a;
  if(i==6)
    printf("*** M3ETRE57-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-04 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i-=--a;
  if(i==4)
    printf("*** M3ETRE57-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-05 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i*=--a;
  if(i==10)
    printf("*** M3ETRE57-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-06 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i/=--a;
  if(i==2)
    printf("*** M3ETRE57-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-07 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i%=--a;
  if(i==1)
    printf("*** M3ETRE57-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-08 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i>>=--a;
  if(i==1)
    printf("*** M3ETRE57-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-09 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i<<=--a;
  if(i==20)
    printf("*** M3ETRE57-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE57 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre58 (void)
  {
printf("\n*** M3ETRE58 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5;char a=3;
  i&=--a;
  if(i==0)
    printf("*** M3ETRE58-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-01 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i^=--a;
  if(i==7)
    printf("*** M3ETRE58-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-02 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i|=--a;
  if(i==7)
    printf("*** M3ETRE58-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-03 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i=--a;
  if(i==2)
    printf("*** M3ETRE58-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-04 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i=- --a;
  if(i==-2)
    printf("*** M3ETRE58-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-05 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i=! --a;
  if(i==0)
    printf("*** M3ETRE58-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-06 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=~ --a;
  if(i==-2)
    printf("*** M3ETRE58-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-07 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=(i>a)?--a:0;
  if(i==1)
    printf("*** M3ETRE58-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-08 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=(i<a)?0:--a;
  if(i==1)
    printf("*** M3ETRE58-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-09 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=i+(--a);
  if(i==6)
    printf("*** M3ETRE58-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE58 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre59 (void)
  {
printf("\n*** M3ETRE59 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5;char a=2;
  i=i+(a)--;
  if(i==7&a==1)
    printf("*** M3ETRE59-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-01 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=+ --a;
  if(i==1)
    printf("*** M3ETRE59-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-02 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i+=a,--i;
  if(i==6)
    printf("*** M3ETRE59-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-03 *** N G ********** N G ***\n");
}
{
  int i=5;
  i+=2,--i;
  if(i==6)
    printf("*** M3ETRE59-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-04 *** N G ********** N G ***\n");
}
{
  int i=5;
  i+=i,++i;
  if(i==11)
    printf("*** M3ETRE59-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  static int arr[]={1,2,3};
  i=arr[0],a=arr[i];
  if(i==1&a==2)
    printf("*** M3ETRE59-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={1,2,3};
  i=a*(a+1),arr[i]=1;
  if(i==2&arr[2]==1)
    printf("*** M3ETRE59-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  a++,arr[a]=1;
  if(a==2&arr[2]==1)
    printf("*** M3ETRE59-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  a--,arr[a]=1;
  if(a==0&arr[0]==1)
    printf("*** M3ETRE59-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-09 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,faaa();
  static int arr[]={7,8,9};
  i=faaa(a),i=arr[i];
  if(i==9)
    printf("*** M3ETRE59-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE59 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
faaa (int a)
  {
    a=2;
    return(a);
  }
int 
m3etre60 (void)
  {
printf("\n*** M3ETRE60 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5;
  i=(i+1)*2;
  if(i==12)
    printf("*** M3ETRE60-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-01 *** N G ********** N G ***\n");
}
{
  int i=5,f60(),a=0;
  i=(f60(a)*2);
  if(i==4)
    printf("*** M3ETRE60-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-02 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=(a+1)-2;
  if(i==-1)
    printf("*** M3ETRE60-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-03 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=(f60(a)-1);
  if(i==1)
    printf("*** M3ETRE60-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-04 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  i=arr[a]+a;
  if(i==9)
    printf("*** M3ETRE60-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=(f60(a)+1);
  if(i==3)
    printf("*** M3ETRE60-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=a++ <=1;
  if(i==1&a==1)
    printf("*** M3ETRE60-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=a-- <=1;
  if(i==1&a==-1)
    printf("*** M3ETRE60-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=(f60(a)<=1);
  if(i==0)
    printf("*** M3ETRE60-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-09 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=a++ > 1;
  if(i==0&a==1)
    printf("*** M3ETRE60-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE60 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
f60 (int a)
  {
    a=2;
    return(a);
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
scpo302 (void) {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun1(),fun2();
     memcpy(u1.c,"1234",4);
     fun1();
     fun2();
     if(memcmp(u1.c,"ABCD",4)==0)
       {
         printf("\n%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
 }
 void 
fun1 (int a) {
     u1.b.b1=u1.b.b1-0x20;
     u1.b.b2=u1.b.b2-0x20;
     u1.b.b3=u1.b.b3-0x20;
     u1.b.b4=u1.b.b4-0x20;
 }
 void 
fun2 (int a) {
     u1.a=u1.a+0x30303030;
 }
 union tag1a {
   unsigned int   a;
   struct tag2a {
     unsigned char   b1;
     unsigned char   b2;
     unsigned char   b3;
     unsigned char   b4;
   } b;
   unsigned char   c[4];
 } u1a;
int 
scpo303 (void) {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun1a(),fun2a();
     memcpy(u1a.c,"1234",4);
     fun1a();
     fun2a();
     if(memcmp(u1a.c,"ABCD",4)==0)
       {
         printf("\n%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
 }
 void 
fun1a (int a) {
     u1a.b.b1=u1a.b.b1-0x20;
     u1a.b.b2=u1a.b.b2-0x20;
     u1a.b.b3=u1a.b.b3-0x20;
     u1a.b.b4=u1a.b.b4-0x20;
 }
 void 
fun2a (int a) {
     u1a.a=u1a.a+0x30303030;
 }
 union tag1b {
   unsigned int   a;
   struct tag2b {
     unsigned char   b1;
     unsigned char   b2;
     unsigned char   b3;
     unsigned char   b4;
   } b;
   unsigned char   c[4];
 } u1b;
int 
scpo304 (void) {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun1b(),fun2b();
     memcpy(u1b.c,"1234",4);
     fun1b();
     fun2b();
     if(memcmp(u1b.c,"ABCD",4)==0)
       {
         printf("\n%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
 }
 void 
fun1b (void) {
     u1b.b.b1=u1b.b.b1-0x20;
     u1b.b.b2=u1b.b.b2-0x20;
     u1b.b.b3=u1b.b.b3-0x20;
     u1b.b.b4=u1b.b.b4-0x20;
 }
 void 
fun2b (void) {
     u1b.a=u1b.a+0x30303030;
 }
 static int    fun1c();
 static void   ok();
 int    a;
int 
scppr01 (void) {
   int    b;
   void   ng();
     a=10;
     b=fun1c(a);
     if(a==b)
       {
         ok();
       }
     else
       {
         ng();
       }
 }
 static int 
fun1c (void) {
     return(a);
 }
 static void 
ok (void) {
   static char c1[]={"ok"};
     printf("\n%s\n",c1);
 }
 void 
ng (void) {
   static char c2[]={"ng"};
     printf("%s\n",c2);
 }
int 
scpsi01 (void)
{
  char                    a;
  char               h[2];
  short int               b;
  unsigned int            c;
  long long int           d;
  long double             e;
  struct tag1
   { int el1;
     char el2;
   } str1 ;
  union ux
   { int el3;
     char el4;
   } str2 ;

  printf("\n********** SCPSI01 TEST START **********\n");

       a=12;
       h[1]='t';
       b=-15;
       c=5;
       d=10;
       e=7;
       str1.el1=4;
       str2.el3=9;

  if (a == 12 && b == -15 && c == 5 && d == 10 && e == 7)
      printf("***** SCPSI01 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI01 - 01 ***** N   G *****\n");
  if (h[1] == 't')
      printf("***** SCPSI01 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI01 - 02 ***** N   G *****\n");
  if (str1.el1 == 4 && str2.el3 == 9)
      printf("***** SCPSI01 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI01 - 03 ***** N   G *****\n");

  printf("********** SCPSI01 TEST  END  **********\n");
}
int 
scpsi02 (void)
{
  static char sa[5]="line";
  static unsigned short int      sb;
  static float                   sc;
  static long long int           sd;
  static long double             se;
  static struct name
    {char * first;
      char * second;
    } str1={
       "banana",
       "baseball",
       };
  static union ux
    {int el1;
      char el2;
    } str2;

  printf("\n********** SCPSI02 TEST START **********\n");

       sb=4;
       sc=-3;
       sd=6;
       se=7;
       str2.el1=5;

  if (sb == 4 && sc == -3 && sd == 6 && se == 7 && str2.el1 == 5)
      printf("***** SCPSI02 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 01 ***** N   G *****\n");
  if (strcmp(sa,"line") == 0)
      printf("***** SCPSI02 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 02 ***** N   G *****\n");
  if (strcmp(str1.first,"banana") == 0)
      printf("***** SCPSI02 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 03 ***** N   G *****\n");

  printf("********** SCPSI02 TEST  END  **********\n");
}
  float                          xa;
  static char                    sa;
  static unsigned short int      sb;
  static float                   sc;
  static double                  sd;
  static long long int           se;
  static long double             sf;
  static char            *s = "abc";
  static struct name
    {char * first;
      char * second;
    } str1={
       "first",
       "seconds",
       };
  static union ux
    { int el1;
      char el2;
    } str2;
int 
scpsi03 (void)
{

  printf("\n********** SCPSI03 TEST START **********\n");

       xa=4;
       sa=2;
       sb=5;
      sc=-3;
       sd=6;
       se=8;
       str2.el1=9;

  if (xa == 4 && str2.el1 == 9)
      printf("***** SCPSI03 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 01 ***** N   G *****\n");
  if (sa == 2 && sb == 5 && sc == -3 && sd == 6 && se == 8)
      printf("***** SCPSI03 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 02 ***** N   G *****\n");
  if (strcmp(str1.first,"first") == 0)
      printf("***** SCPSI03 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 03 ***** N   G *****\n");
  if(strlen(s) == 3)
      printf("***** SCPSI03 - 04 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 04 ***** N   G *****\n");

  printf("********** SCPSI03 TEST  END  **********\n");
}
int 
scpsi04 (void)
{
          int   property,debt,total;

  printf("\n********** SCPSI04 TEST START **********\n");
          property=25000;
         debt=-3000;
         total=func1(property,debt);

  if ( total == 22000)
      printf("***** SCPSI04 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI04 - 01 ***** N   G *****\n");

  printf("********** SCPSI04 TEST  END  **********\n");
}
  int 
func1 (int x, int y)
{
     int   z;
     z=x+y;
 return(z);
}
int 
scpsi05 (void)
{
           int   a,b,c,x,y;

  printf("\n********** SCPSI05 TEST START **********\n");
                a=1;
                b=2;

  x=func1a(a);
  y=func1a(b);
          c=x+y;
  if ( c == 12)
      printf("***** SCPSI05 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI05 - 01 ***** N   G *****\n");

  printf("********** SCPSI05 TEST  END  **********\n");

}
  int 
func1a (int q)
{
          int   x;
          x=q*4;
  return (x);

}
  int 
func2a (int r)
{
          int   y;
          y=r*4;
  return (y);

}

   static int staticfunction1();
int 
scpsi06 (void)
{
          int   a,b,c;

  printf("\n********** SCPSI06 TEST START **********\n");
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

  printf("\n********** SCPSI07 TEST START **********\n");
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

  printf("\n********** SCPSI08 TEST START **********\n");

       sa=4;
       sb=-3;
       sc=6;

  if (sa == 4 && sb == -3 && sc == 6)
      printf("***** SCPSI08 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI08 - 01 ***** N   G *****\n");

  sd=func1cc(sa,sb);

  if (sd == 1)
      printf("***** SCPSI08 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI08 - 02 ***** N   G *****\n");

  printf("********** SCPSI08 TEST  END  **********\n");
}
int 
func1cc (int x, int y)

{
       int     z;

       z=x+y;
       return(z);
}
#define   m_type_january  1
#define   m_type_may      2
#define   m_type_october  3
#define   m_type_december 4

          jmp_buf env;

int 
scpsi11 (void)
{
          int    x;
          struct tag1  {
          int    month;
          int    day;
          } birth;

  printf("\n********** SCPSI11 TEST START **********\n");

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
  sub1qw();
   else
  printf("********** SCPSI11 TEST  END  **********\n");
}
  int 
sub1qw (void)
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

  printf("\n********** SCPSI12 TEST START **********\n");

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
int 
scpva01 (void) {
 struct tag1 {
    signed char          sc;
  unsigned char          usc;
    signed short int     ssi;
  unsigned short int     usi;
    signed long int      sli;
  unsigned long int      uli;
    signed long long int slli;
  unsigned long long int ulli;
           float    fl;
           double   du;
      long double   ldu;
           char     ch[3];
      wchar_t       lch;
 }s={'a','b',1,2,3,4,5,6,1.0,2.0,3.0,"xyz",L'b'};
 printf("\n*** SCPVA01 TEST START ***\n");
 if (s.sc == 'a')
      { printf(" ** SIGNED CHAR TEST OK            **\n"); }
 else { printf("  ## SIGNED CHAR TEST NG            ##\n"); }
 if (s.usc == 'b')
      { printf(" ** UNSIGNED CHAR TEST OK          **\n"); }
 else { printf("  ## UNSIGNED CHAR TEST NG          ##\n"); }
 if (s.ssi == 1)
      { printf(" ** SIGNED SHORT INT TEST OK       **\n"); }
 else { printf("  ## SIGNED SHORT INT TEST NG       ##\n"); }
 if (s.usi == 2)
      { printf(" ** UNSIGNED SHORT INT TEST OK     **\n"); }
 else { printf("  ## UNSIGNED SHORT INT TEST NG     ##\n"); }
 if (s.sli == 3)
      { printf(" ** SIGNED LONG INT TEST OK        **\n"); }
 else { printf("  ## SIGNED LONG INT TEST NG        ##\n"); }
 if (s.uli == 4)
      { printf(" ** UNSIGNED LOND INT TEST OK      **\n"); }
 else { printf("  ## UNSIGNED LOND INT TEST NG      ##\n"); }
 if (s.slli == 5)
      { printf(" ** SIGNED LONG LONG INT TEST OK   **\n"); }
 else { printf("  ## SIGNED LONG LONG INT TEST NG   ##\n"); }
 if (s.ulli == 6)
      { printf(" ** UNSIGNED LONG LONG INT TEST OK **\n"); }
 else { printf("  ## UNSIGNED LONG LONG INT TEST NG ##\n"); }
 if (s.fl == 1.0)
      { printf(" ** FLOAT TEST OK                  **\n"); }
 else { printf("  ## FLOAT TEST NG                  ##\n"); }
 if (s.du == 2.0)
      { printf(" ** DOUBLE TEST OK                 **\n"); }
 else { printf("  ## DOUBLE TEST NG                 ##\n"); }
 if (s.ldu == 3.0)
      { printf(" ** LONG DOUBLE TEST OK            **\n"); }
 else { printf("  ## LONG DOUBLE TEST NG            ##\n"); }
 if (0 == memcmp(s.ch,"xyz",3))
      { printf(" ** CHAR*N TEST OK                 **\n"); }
 else { printf("  ## CHAR*N TEST NG                 ##\n"); }
 if (s.lch == L'b')
      { printf(" ** LONG CHAR TEST OK              **\n"); }
 else { printf("  ## LONG CHAR TEST NG              ##\n"); }
 printf("*** SCPVA01 TEST END   ***\n");
}
struct numlist
  {
   int number ;
   struct numlist *benum ;
   struct numlist *afnum ;
  } ;
   int indata[10];
   int nx ;
int inputdata (struct numlist *justnum, struct numlist *updatad);
int dataout (struct numlist *justnum);
int 
m3mpyt02 (void)
{
   struct numlist listar[50] ;
   struct numlist *startad ;
   struct numlist *updatad ;
   static int allnum[10]={1,2,3,4,5,6,7,8,9,10} ;
   int result ;
   int i ;
       indata[0]=5 ;
       indata[1]=8 ;
       indata[2]=2 ;
       indata[3]=9 ;
       indata[4]=6 ;
       indata[5]=10;
       indata[6]=1 ;
       indata[7]=7 ;
       indata[8]=3 ;
       indata[9]=4 ;
   startad=listar ;
   printf ("\n** sort *****\n");
   startad->number=indata[0] ;
   startad->benum=0 ;
   startad->afnum=0 ;
   updatad=listar ;
   i=1 ;
   while (i<=9)
         {
          updatad=updatad+1 ;
          updatad->number=indata[i] ;
          updatad->benum=0 ;
          updatad->afnum=0 ;
          inputdata (startad,updatad);
          i++ ;
         }
   nx=0 ;
   dataout (startad);
   if(memcmp(indata,allnum,40)==0)
     {
       printf ("***** ok *****\n");
     }
   else
     {
       printf ("***** ng *****\n");
      }
}
int 
inputdata (struct numlist *justnum, struct numlist *updatad)
{
   if (justnum->number > updatad->number)
  {
     if (justnum->benum==0)
       justnum->benum=updatad ;
     else
       inputdata (justnum->benum,updatad);
   }
    else
      {
        if (justnum->afnum==0)
            justnum->afnum=updatad ;
        else
            inputdata (justnum->afnum,updatad);
       }
}
int 
dataout (struct numlist *justnum)
{
if (justnum->benum!=0)
    dataout (justnum->benum);
printf ("number:- %d -\n",justnum->number);
indata[nx] = justnum->number ;
nx++ ;
if (justnum->afnum!=0)
    dataout (justnum->afnum);
}
struct sort
{
   int data ;
   struct sort *front ;
} ;
int correlation (struct sort *now, struct sort *add);
int 
m3mpyt03 (void)
{
   struct sort num[50] ;
   struct sort *head ;
   struct sort *tail ;
   static int allnum[20]={0,1,2,3,4,5,6,7,8,9,10,20,
                           30,40,50,60,70,80,90,100};
   int number[20] ;
   int nq ;
   int i ;
   number[0]=100 ;
   number[1]=6 ;
   number[2]=30 ;
   number[3]=10 ;
   number[4]=2 ;
   number[5]=0 ;
   number[6]=4 ;
   number[7]=40 ;
   number[8]=7 ;
   number[9]=80 ;
   number[10]=3 ;
   number[11]=50 ;
   number[12]=1 ;
   number[13]=90 ;
   number[14]=20 ;
   number[15]=9 ;
   number[16]=70 ;
   number[17]=8 ;
   number[18]=60 ;
   number[19]=5 ;
   head=num ;
   tail=num ;
   head->data=number[0] ;
   head->front=0 ;
   i=1;
   printf ("\n***** sort *****\n");
   while (i<=19)
      {
         tail++ ;
         tail->front=0 ;
         tail->data=number[i] ;
         if (head->data > tail->data)
           {
             tail->front=head ;
             head=tail;
           }
         else
             correlation (head,tail);
         i++;
       }
    nq=0;
    while (head != 0)
       {
         printf ("***** list data : %2d\n",head->data );
         number[nq]=head->data ;
         head=head->front ;
         nq++;
       }
   if (memcmp(number,allnum,80)==0)
        printf ("***** ok *****\n");
   else
        printf ("***** ng *****\n");
}
int 
correlation (struct sort *now, struct sort *add)
{
    if ((now->front->data)<(add->data) && now->front!=0)
      {
        correlation (now->front,add);
      }
    else
     {
        add->front=now->front;
        now->front=add ;
     }
}
struct homerun
{
   int some[3];
   int hit;
   int str;
   int total;
};
  struct homerun homer[50];
  struct homerun *point;
  int nr,i,j,hs,h,c,demo,d,e;
  static int number[3]={7,2,5};
  int table[3];
  int strnum[3];
  int hitnum[3];
int 
m3mpyt04 (void)
{
  d=1;
  point=homer;
  i=0;
  c=0;
  hs=0;
  nr=0;
  while(i<=2){
    if(hs==3){
      break;
    }
    table[0]=d;
    table[1]=d+1;
    table[2]=d+2;
    ank();
    i++;
    d=d+3;
  }
  if(hs!=3){
    table[c]=0;
    c++;
  }
  while(h<=2){
    switch(c){
      case 0:break;
      case 1:
               switch(nr){
               case 1:table[2]=strnum[0];
                        table[0]=hitnum[0];
                        table[1]=hitnum[1];
                        break;
               case 2:table[1]=strnum[0];
                        table[0]=hitnum[0];
                        table[2]=hitnum[2];
                        break;
               case 3:table[0]=strnum[0];
                        table[1]=hitnum[1];
                        table[2]=hitnum[2];
                        break;
               }
      break;
      case 2:
               switch(nr){
               case 0:table[2]=strnum[1];
                        table[1]=strnum[2];
                        table[0]=hitnum[0];
                        break;
               case 1:table[0]=strnum[2];
                        table[2]=strnum[0];
                        table[1]=hitnum[1];
                        break;
               case 2:table[0]=strnum[1];
                        table[1]=strnum[0];
                        table[2]=hitnum[2];
                        break;
               }
      break;
      case 3:table[1]=strnum[0];
               table[2]=strnum[1];
               table[0]=strnum[2];
      }
      nr=0;
      c=0;
      hs=0;
      ank();
  }
  if(memcmp(number,hitnum,12)==0)
    printf("\n***** ok *****\n");
  else
    printf("***** ng *****\n");
}
int 
ank (void)
{
  h=0;
  point->some[0]=table[0];
  point->some[1]=table[1];
  point->some[2]=table[2];
  point->hit=0;
  point->str=0;
  point->total=0;
  e=0;
  while(e<=2){
    if(number[e]==point->some[e]) {
      point->hit++;
      hitnum[e]=point->some[e];
      nr=nr+e;
      h++;
    }
    j=0;
    while(j<=2){
      if(number[e]==point->some[j] && e!=j) {
        point->str++;
        strnum[c]=point->some[j];
        c++;
      }
      j++;
    }
    e++;
  }
  point->total=point->hit+point->str;
  hs=hs+point->total;
  point++;
}
int 
m3mpyt05 (void)
{
 int calen[42][12];
 int a,b,d,e,f,work1,work2,work3,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;
 int i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21;
 static int months[12]={31,28,31,30,31,30,31,31,30,31,30,31};
 static int year[11]={1989,2000,-12,1,1990,1991,1992,
                  1993,20001,2001,2000};
 static char *month[]={" january ","february "," march  ",
 "  april  ","   may   ","  june   ","  july   "," august  ",
 "september"," october ","novenber ","december "};
 static char week[]={"su mo tu we th fr sa"};
 static char *day[]={"  "," 1"," 2"," 3"," 4"," 5"," 6"," 7"," 8",
 " 9","10","11","12","13","14","15","16","17","18","19","20","21",
 "22","23","24","25","26","27","28","29","30","31"};

  d=0;
  while(d<=10){
    a=0;
    while(a<=11){
      b=0;
      while(b<=41){
        calen[b][a]=0;
        b++;
     }
     a++;
    }
    if(year[d] < 0){
      printf("don't print  %d   calender \n",year[d]);
      printf("don't make beforechrist calender \n");
      d++;
      continue;
    }
    else
      if(year[d]>9999){
        printf("don't print %d  calender \n",year[d]);
        printf("input 0<year>9999 \n");
        d++;
        continue;
      }
    if((year[d]%4==0)&&(year[d]%100!=0)&&
      (year[d]%400==0)&&(year[d]%2000!=0))
      months[1]=29;
    work1=year[d]-1;
    work2=work1%100;
    work3=work1/100;
    e=(284/10)+work2+(work2/4)+(work3/4)-2*work3;
    f=e%7;
    a=0;
    while(a<=11){
      b=0;
      while(b<=months[a]){
        calen[b+f][a]=b;
        b++;
      }
      f=(months[a]+f)%7;
      a++;
   }
   printf("\n      * * * * * * * * * *      %4d  ",year[d]);
   printf("calendar      * * * * * * * * * * \n");
   a=0;
   while(a<=11){
     printf("%20s%25s%25s\n",month[a],month[a+1],month[a+2]);
     printf("%25s%25s%25s\n",week,week,week);
     b=0;
     while(b<=41){
        i1=calen[b][a];
        i2=calen[b+1][a];
        i3=calen[b+2][a];
        i4=calen[b+3][a];
        i5=calen[b+4][a];
        i6=calen[b+5][a];
        i7=calen[b+6][a];
        i8=calen[b][a+1];
        i9=calen[b+1][a+1];
        i10=calen[b+2][a+1];
        i11=calen[b+3][a+1];
        i12=calen[b+4][a+1];
        i13=calen[b+5][a+1];
        i14=calen[b+6][a+1];
        i15=calen[b][a+2];
        i16=calen[b+1][a+2];
        i17=calen[b+2][a+2];
        i18=calen[b+3][a+2];
        i19=calen[b+4][a+2];
        i20=calen[b+5][a+2];
        i21=calen[b+6][a+2];
        printf("%7s%3s%3s%3s%3s%3s%3s",day[i1],day[i2],day[i3],
               day[i4],day[i5],day[i6],day[i7]);
        printf("%7s%3s%3s%3s%3s%3s%3s",day[i8],day[i9],day[i10],
               day[i11],day[i12],day[i13],day[i14]);
        printf("%7s%3s%3s%3s%3s%3s%3s\n",day[i15],day[i16],day[i17],
               day[i18],day[i19],day[i20],day[i21]);
        b=b+7;
     }
     a=a+3;
   }
   d++;
}
  if(day[i21]==day[0])
    printf(" *****     calendar program ok     *****\n");
  else
    printf(" *****     calendar program ng     *****\n");
}
 jmp_buf  env_area;
 int      int1,int2;

int 
m3mpjp00 (void)
 {
   int1=1;
   int2=2;
   switch (setjmp(env_area)) {
     case 0: if((int1==1)&&(int2==2))
             {
               printf("\ntest-1 ok \n");
             }
             else
             {
               printf("test-1 ng. int1=%d,int2=%d\n",int1,int2);
             }
             goto l1;
     case 1: if((int1==10)&&(int2==20))
             {
               printf("test-2 ok \n");
             }
             else
             {
               printf("test-2 ng. int1=%d,int2=%d\n",int1,int2);
             }
             goto l2;
     case 2: if((int1==100)&&(int2==200))
             {
               printf("test-3 ok \n");
             }
             else
             {
               printf("test-3 ng. int1=%d,int2=%d\n",int1,int2);
             }
             return 0;
     }
 l1: ;
   sub1();
 l2: ;
   sub2();
 }

 int 
sub1 (void)
 {
   int1=10;
   int2=20;
   longjmp(env_area,1);
   return 0;
 }

 int 
sub2 (void)
 {
   int1=100;
   int2=200;
   longjmp(env_area,2);
   return 0;
 }
 jmp_buf  env_area;
 int      int1,int2,err_cnt,i,j,k;
 int      int_ar1[10] = {0,1,2,3,4,5,6,7,8,9};
 int      int_ar2[10];                            
 int      int_ans[10] = {0,1,2,3,4,8,6,7,8,9};  

int 
m3mpjp01 (void)
 {
   printf("m3mpjp01 start\n");
   for (i=0,j=0;j<10;i++,j++)
   {
     int1=int_ar1[i];
     int2=setjmp(env_area);
     int_ar2[j]=int_ar1[i];
     if (int2 == 1)
     {
       goto l1;
     }
   }
   sub1a(int1,&i,&j);
 l1:;
   err_cnt=0;
   for (k=0;k<10;k++)
   {
     if (int_ar2[k] != int_ans[k])
     {
       printf("***ng*** int_ar2(%d)=%d, right_value=%d\n",
              k,int_ar2[k],int_ans[k]);
       err_cnt++;
     }
   }
   if (err_cnt == 0)
   {
     printf("**** ok ****\n");
   }
   printf("m3mpjp01 end\n");
   return 0;
 }

 int 
sub1a (int i_dum, int *i1, int *j1)
 {
   *i1=8;
   *j1=5;
   longjmp(env_area,1);
   return 0;
 }
int 
m3mptr01 (void)
{
  int flag=0;
  int i=0;
  int c=3;
  int hs=3;
  while(1){
    if(i==2){
      flag=1;
      goto switches ;
    }
    i++;
  }
  switches:;
  flag++;
  switch(c){
    case 0:break;
    case 1:
           printf("case1\n");
           break;
    case 2:
           printf("case2\n");
           break;
    case 3:
           printf("case3\n");
           flag++;
           break;
    }
  if(flag==3)
    printf("***** ok *****\n");
  else
    printf("***** ng *****\n");
  return 0;
}
int 
m3mptr02 (void)
{
  volatile int b;
  int a,c,d,e,f,flag;
  c=25;
  a=10;
  c=35;
  a=5;
  d=100;
  d=200;
  e=300;
  e=400;
  f=60;
  f=80;
  flag=0;
  if(a!=c){
    flag=1;
  }
  if(b<=b){
    if(c>=a){
    b=e;
    flag++;
    }
  }
  if(b==b){
    b=f;
    flag++;
  }
  a=2000;
  b=5000;
  c=10000;
  d=100;
  e=300;
  f=60;
  if(flag==3){
    printf("*****  ok  *****\n");
  }
  else {
    printf("*****  ng  *****\n");
  }
  return 0;
}
int 
m3mptr03 (void)
{
  int flag=0;
  int a,b,c,d,e,f;
  a=10;
  a=15;
  d=30;
  d=5;
  if(a!=20){
    flag++;
  }
  if((a>5) ||(d<50)){
    a=b+f;
    flag++;
  }
  else {
    a=c+f;
    flag++;
  }
  if(flag==2){
    printf("*****   ok   *****\n",a);
  }
  else {
    printf("*****   ng   *****\n",a);
  }
  d=20;
  e=30;
  b=55;
  c=60;
  a=100;
  f=200;
  return 0;
}
int 
m3mptr04 (void)
{
  int flag=0;
  int i,c,a,b;
  a=20;
  b=53;
  a=3;
  b=1;
  c=60;
  c=3;
  i=0;
  while(1){
    if(i==2){
      flag=1;
      goto switches ;
    }
    i++;
  }
  switches:;
  for(i=0 ; i<5 ; i++){
    if(i<4){
      continue;
    }
    flag++;
  }
  flag++;
  switch(c){
    case 0:
           printf("case2\n");
           b=a;
           break;
    case 1:
           printf("case1\n");
           if(b>10)
             printf("case1\n");
           break;
    case 2:
           printf("case2\n");
           break;
    case 3:
           printf("case3\n");
           flag++;
           if(c<120){
             printf("case1\n");
             flag++;
           }
           break;
    }
  if(b<3){
    flag++;
    if(flag>10){
      printf("flag : true\n");
    }
    else {
      printf("flag : false\n");
      flag++;
    }
  }
  a=2;
  b=50;
  c=333;
  if(flag==7)
    printf("***** ok *****\n");
  else
    printf("***** ng *****\n");
  return 0;
}
int 
m3mptr05 (void)
{
  int a,b,c,d,e,i,j,flag=0;
  i=0;
  a=0;
  a=2;
  while(i<3){
    j=0;
    while(j<=2){
      b=a+j;
      flag++;
      j++;
    }
    flag--;
    i++;
  }
  if(flag==6){
    printf("*****   ok   *****\n");
  }
  else {
    printf("*****   ng   *****\n");
  }
  a=20;
  b=30;
  return 0;
}
int y;
int 
m3mpsi05 (void) {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
int a[10];
int x;
pint=&var3;
pint->mema=5;
pint->memb=15;
a[4]=5;
a[pint->mema]=3;
pint=&var2;
pint->memb=4;
x=pint->memb;
pint->memb=a[4];
x=pint->memb;
pint=&var3;
y=x;
a[1]=y;
pint=&var3;
subm5();
x=a[1];
pint->memc[1]=y+pint->memb;
if (pint->memc[1]==37) printf("\nm3mpsi05 ok\n");
else
printf("%d\n",pint->memc[1]);
 return 0;
}
int 
subm5 (void)
{
y=22;
return 0;
}
int y5;
int 
m3mpsi07 (void) {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
int a[10];
int x;
pint=&var3;
sub7();
y5=y5-17;
pint->mema=y5;
sub7();
pint->memb=15;
a[4]=pint->mema;
a[pint->mema]=3;
pint=&var2;
pint->memb=4;
x=pint->memb;
pint->memb=a[4];
x=pint->memb;
pint=&var3;
y5=x;
a[1]=y5;
pint=&var3;
sub7();
x=a[1];
pint->memc[1]=y5+pint->memb;
if (pint->memc[1]==37) printf("\nm3mpsi07 ok\n");
else
printf("%d\n",pint->memc[1]);
 return 0;
}
int 
sub7 (void)
{
y5=22;
return 0;
}
int 
m3mpsi08 (void) {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x,y;
var.mema=5;
pint=&var2;
pint->memc[3]=0.5;
pint->mema=3;
y=pint->mema;
x=(int)(pint->memc[3]);
a[1]=x+y;
if (a[1]==3) printf("\nm3mpsi08 ok\n");
else
printf("m3mpsi08 ng\n");
 return 0;
}
int 
m3mpsi09 (void) {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x,y,z;
int *i;
var.mema=5;
pint=&var2;
i=&z;
z=3;
pint->mema=*i;
*i=5;
x=pint->mema;
z=z+(*i);
if (z==10) printf("\nm3mpsi09 ok\n");
else
printf("m3mpsi09 ng\n");
if (pint->mema==3) printf("m3mpsi09 ok\n");
else
printf("m3mpsi09 ng\n");
 return 0;
}
int 
m3mpsi0a (void) {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[11];  
int x,y,z;
int *i;
var.mema=5;
pint=&var2;
i=&z;
z=3;
pint->mema=*i;
*i=5;
x=pint->mema;
z=z+(*i);
a[*i]=*i;
if (z==10) printf("\nm3mpsi0a ok\n");
else
printf("m3mpsi0a ng\n");
if (pint->mema==3) printf("m3mpsi0a ok\n");
else
printf("m3mpsi0a ng\n");
if (a[*i]==10) printf("m3mpsi0a ok\n");
else
printf("m3mpsi0a ng\n");
 return 0;
}
int 
m3mpyt01 (void)
{
  static int b[10]={1,2,3,4,5,6,7,8,9,10};
  int a[10];
  int i,j;
  printf("\n********* sort program *********\n");
  a[0]=2;
  a[1]=9;
  a[2]=1;
  a[3]=5;
  a[4]=6;
  a[5]=8;
  a[6]=4;
  a[7]=10;
  a[8]=3;
  a[9]=7;
  i=0;
  while(i<=9){
    j=i+1;
    while(j<=9){
      ser(&a[i],&a[j]);
      j++;
    }
    i++;
  }
  printf("1st ====>>>  %d   \n",a[0]);
  printf("2dn ====>>>  %d   \n",a[1]);
  printf("3rd ====>>>  %d   \n",a[2]);
  printf("4th ====>>>  %d   \n",a[3]);
  printf("5th ====>>>  %d   \n",a[4]);
  printf("6th ====>>>  %d   \n",a[5]);
  printf("7th ====>>>  %d   \n",a[6]);
  printf("8th ====>>>  %d   \n",a[7]);
  printf("9th ====>>>  %d   \n",a[8]);
  printf("largest=>>>  %d   \n",a[9]);
  if(memcmp(a,b,40)==0)
       printf("\nok\n");
  else printf("ng\n");
  return 0;
}
int ser(x,y)
int *x,*y;
{
  int demo;
    if(*x>*y){
      demo=*x;
      *x=*y;
      *y=demo;
    }
  return 0;
}
