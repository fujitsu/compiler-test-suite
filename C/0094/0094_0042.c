#include  <stdio.h>
long    np_sub();
long    p_sub(float,float,short int,float);
int main(){
  long  a1,a2,constret();

  a1=np_sub(1.0,2.0,3,4.0);
  a2=p_sub((float)1,(float)2,(short int)3,(float)4);
  printf("%d %d %d\n",a1,a2,constret(10));
  if(a1==constret(10) && a2==(short int)10) 
    printf("OK\n");
  else
    printf("NG\n");
}
long np_sub(a,b,c,d)
float a,b,d;
int c;
{
   float x;

   x=a+b+c+d;
   printf("%s%lf\n","",x);
   return (long)x;
}
long p_sub(float a,float b,short int c,float d)
{
   long x;

   x=a+b+c+d;
   printf("%d\n",x);
   return x;
}
long constret( int n)
{
  long ret;

  if (n==0) return 0;
  ret=n*(n/n)/(n/n);
  if (ret==0) ret=n;
  return (ret*(ret/ret)==ret) ? ret :n;
}
