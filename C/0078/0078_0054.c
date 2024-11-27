#include <stdio.h>


#include <alloca.h>

int foo(int i)
{
  float *f ;
  f = (float *)alloca(i);

  for(i=0;i<10;i++) {
    f[i] = (float )i; 
  }

  printf("%g , %g \n",f[0],f[9]);
}
int main()
{
   foo( sizeof(float) * 10 );
}
