#include  <stdio.h>
long long     np_sub();
long long     p_sub(float,float,long long int,float);
int main(){
  long long   a1,a2,constret();

  a1=np_sub(1.0,2.0,3,4.0);
  a2=p_sub((float)1,(float)2,(long long int)3LL,(float)4);
  printf("%d %d %d\n",(int)a1,(int)a2,(int)constret(10LL));
  if(a1==constret(10LL) && a2==(long long int)10) 
    printf("OK\n");
  else
    printf("NG\n");
}
long long  np_sub(a,b,c,d)
float a,b,d;
int c;
{
   float x;

   x=a+b+c+d;
   printf("%s%lf\n","",x);
   return (long long )x;
}
long long  p_sub(float a,float b,long long int c,float d)
{
   long long  x;

   x=a+b+c+d;
   printf("%d\n",(int)x);
   return x;
}
long long  constret(n)
long long n;
{
  long long  ret;

  if (n==0) return 0;
  ret=n*(n/n)/(n/n);
  if (ret==0) ret=n;
  return (ret*(ret/ret)==ret) ? ret :n;
}
