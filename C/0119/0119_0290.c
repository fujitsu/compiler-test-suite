#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int glb;
int main()
{
  struct tag7 {
                signed long int a :1;
                signed long int b :4;
                signed long int c :8;
              }i4;

  unsigned long long int u8,w1;
    signed long long int i8,w2;
  int i,j;
glb=10;
for(i=0;i<5;i++)
    {
      i4.a=glb;
      i8=i4.a;
      w2=i8+1;
      glb=w2;
    }

if(glb==i8+1) printf(" ----- ok1 ----- \n");
else          printf(" ----- ng1 ----- \n");

for(j=0;j<6;j++)
    {
      i4.b=glb;
      u8=i4.b;
      w1=u8+1;
      glb=w1;
    }
if(glb==u8+1) printf(" ----- ok2 ----- \n");
else          printf(" ----- ng2 ----- \n");

exit (0);
}
