#include  <stdio.h>

struct tag {
             int a;
             short int b;
           };

int glb;
int main()
{
  struct tag x,y;
  int i,j;
  glb=2;

x.a=x.b=y.a=y.b=glb;

for(i=0;i<5;i++)
{
  x.a=i+1;
  x.b=x.a+2;
  j=x.b+glb;
  y.a=i+glb;
  y.b=y.a+x.a;
  j=y.b+glb;
  x=y;

  if(y.a==x.a) printf(" ----- ok1 ----- \n");
  else         printf(" ----- ng1 ----- \n");

  if(y.b==x.b) printf(" ----- ok2 ----- \n");
  else         printf(" ----- ng2 ----- \n");

}

}
