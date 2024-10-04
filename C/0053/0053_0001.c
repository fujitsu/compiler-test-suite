#include<stdio.h>

#undef sun
int main()
  {
  static int a[]={1,2,3};
  enum day{mon,tue,wed,thu,fri=10,sat,sun};
  enum day e0,e1,e2;
  e0=mon;
  e1=tue;
  e2=fri;
printf("*  ***      MK3  TEST     ****** STARTED *\n");
{
  int  i= 1;
  char c;
  c=i;
  if(c==1)
    printf("*** -01 *** O K ***\n");
  else
    printf("*** -01 ***   N   G   ***\n");
}
{
  int  i;
  char c;
  i=e0;
  c=e2;
  if(i==0 && c==10)
    printf("*** -02 *** O K ***\n");
  else
    printf("*** -02 ***   N   G   ***\n");
}
{
  int  i=1;
  e2=i ;
  if(e2==1)
    printf("*** -03 *** O K ***\n");
  else
    printf("*** -03 ***   N   G   ***\n");
}
{
  e2=e0;
  if(e2==0 && e0==0 && e1==1)
    printf("*** -04 *** O K ***\n");
  else
    printf("*** -04 ***   N   G   ***\n");
}
{
  int i=1,*p1=&i,*p2;
  p2=&i;
  if(*p1==1 && *p2==1)
    printf("*** -05 *** O K ***\n");
  else
    printf("*** -05 ***   N   G   ***\n");
}
{
  int *p1;
  p1=0  ;
  if(p1==0)
    printf("*** -06 *** O K ***\n");
  else
    printf("*** -06 ***   N   G   ***\n");
}
{
  void *v;
  int f1();
  v = 0;
  v = f1;
  if ( v != 0 )
    printf("*** -07 *** O K ***\n");
  else
    printf("*** -07 ***   N   G   ***\n");
}
{
  int  i=1,*ip1=&i,*ip2;
  char c=1,*cp1=&c,*cp2;
  ip2=ip1;
  cp2=cp1;
  if ( cp1==cp2 )
    printf("*** -08 *** O K ***\n");
  else
    printf("*** -08 ***   N   G   ***\n");
}
{
  void *v;
  int i=1,*p=&i;
  v=0;
  v=p;
  if ( v!=0 )
    printf("*** -09 *** O K ***\n");
  else
    printf("*** -09 ***   N   G   ***\n");
}
{
  int   i = 1;
  int  *p1;
  void *v=0;
  p1=&i;
  p1=v;
  if ( p1==0 )
    printf("*** -10 *** O K ***\n");
  else
    printf("*** -10 ***   N   G   ***\n");
}
printf("*  ***      MK3  TEST     ****** ENDED ***\n");
}
int f1() { }
int f2() { }
