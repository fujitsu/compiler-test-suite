#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

double  combi(),dabs();
long    longret();
long check(double,long,double,long,double,long,double,long,double,long,double,long,long *); 


double combi(n,a)
double *a;
long *n;
{
  double ans1 ;
  long   i,j,count;
  long   ans2;

  if (*n==0) return 1;
  else{
    for (ans1=1.0,count= *n;;){
      if (count-- == 0) break;
      ans1 *= *a;
      *a= *a-1.;
    }
    ans2=1;
    while(longret(5.)/5){
      ans2 *= (*n)--;
      if (*n==0) break;
    }
    printf("%s%f ans2=%d\n","ans1=",ans1,ans2); 
    return ans1/ans2;
  }
}
long longret(n)
double n;
{
  return (long)n;
}
long   check(f1,n1,f2,n2,f3,n3,f4,n4,f5,n5,f6,n6,ret)
double f1,f2,f3,f4,f5,f6;
long   n1,n2,n3,n4,n5,n6;
long   *ret;
{
  long   a,b,c,d,e,f;
  double work;

  work=combi(&n1,&f1);
  a=longret(work);
  printf("%d\n",a);
  b=longret(combi(&n2,&f2));
  printf("%d\n",b);
  work=combi(&n3,&f3);
  c=longret(work);
  printf("%d\n",c);
  d=longret(combi(&n4,&f4));
  printf("%d\n",d);
  work=combi(&n5,&f5);
  e=longret(work);
  printf("%d\n",e);
  f=longret(combi(&n6,&f6));
  printf("%d\n",f);
  *ret=a+b+c+d+e+f;

  return *ret;
}
double dabs(f)
double f;
{
  if (f>0.0) return f;
  else return -1*f;
}
int main(){
  long c2,ans;
  c2=longret(2.0);
  if (check(5.,0,5.,1,5.,2,5.,3,5.,4,5.,5,&ans)-2*longret(2.0)*2*c2*2==0) 
    printf("CMDTH004  ** OK **\n");
  else
    printf("CMDTH004  ** NG ** %s %d\n","ans=",ans);  
exit (0);
}
