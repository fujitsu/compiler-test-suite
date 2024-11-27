#include  <stdio.h>

void sub();
int main() {
sub(1,1);
}
void sub(d,e)
int d,e;
{
int ar[4];
int a=0,b,c,i,s,aa;
  printf("***  test start ***\n");
  for(i=0;i<4;i++) {
    aa=a;
    ar[i]=aa;
  }
  b=a;
  if(b==0) c=a;
  if(c==0) ar[c]=99;
  else     ar[0]=999;
  if(d!=0) ar[1]=99;
  else     ar[1]=999;
  d=1;
  if(e!=0) ar[d+1]=99;
  else     ar[d+1]=999;
  e=a;
  if(e==0) ar[e+3]=99;
  else     ar[e+3]=999;
  for(i=0,s=0;i<4;i++) {
    s=s+ar[i];
  }
  if(s==396) printf("test is ok\n");
  else {

       printf("test is error\n");
       for(i=0;i<4;i++)
         printf("ar(%d)=%d\n",i,ar[i]);

  }
printf("***  test ended ***\n");
}
