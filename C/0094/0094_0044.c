#include  <stdio.h>
double  combi(),check(),dabs();
long    longret();

double combi(n,a)
double a;
long n;
{
  double ans1 ;
  long   i,j,count;
  long   ans2;

  if (n==0) return 1;
  else{
    for (ans1=1.0,count=0;;){
      ans1 *= a;
      if (count++ >= n-1) break;
      a=a-1.;
    }
    ans2=1;
    while(longret(5.)/5){
      ans2 *= n--;
      if (n==0) break;
    }
    return ans1/ans2;
  }
}
long longret(n)
double n;
{
  return (long)n;
}
double check(f1,n1,f2,n2,f3,n3,f4,n4,f5,n5,f6,n6)
double f1,f2,f3,f4,f5,f6;
long   n1,n2,n3,n4,n5,n6;
{
  double ret,a,b,c,d,e,f;

  a=combi(n1,f1);
  b=combi(n2,f2);
  c=combi(n3,f3);
  d=combi(n4,f4);
  e=combi(n5,f5);
  f=combi(n6,f6);
  ret=a+b+c+d+e+f;

  return ret;
}
double dabs(f)
double f;
{
  if (f>0.0) return f;
  else return -1*f;
}
int main(){
  long c2;
  double ans;
  c2=longret(2.0);
  if (dabs((ans=check(5.,0L,5.,1L,5.,2L,5.,3L,5.,4L,5.,5L))-2*longret(2.0)*2*c2*2) < 0.0000001)
    printf("CMDTH004  ** OK **\n");
  else
    printf("CMDTH004  ** NG ** %s %f\n","ans=",ans);  
}
