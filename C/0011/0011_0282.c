#include  <stdio.h>

struct tag {
             int a;
             short int b;
           };

int glb;
int main()
{
  struct tag x,sub();
  int i,j;

for(i=0;i<4;i++)
{
  x.a=i+1;
  x.b=x.a+2;
  j=x.a+glb;
  x=sub();

  if(x.a==3 && x.b==2) printf(" ----- ok ----- \n");
  else                 printf(" ----- ng ----- \n");

  j=x.a+i;
  x.a=x.b+1;
}
}

struct tag sub()
{
struct tag str;

str.a=3;
str.b=2;

return(str);
}
