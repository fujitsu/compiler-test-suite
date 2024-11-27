#include <stdio.h>
#include <math.h>
int main()
{
  double da[10],db[10]={10,9,8,7,6,5,4,3,2,1};
  float fa[10],fb[10]={10,9,8,7,6,5,4,3,2,1};
  int i;
  for(i=0;i<10;i++) {
    da[i] =  asinh(db[i]/20);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  asinhf(fb[i]/20);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  acosh(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  acoshf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  atanh(db[i]/20);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  atanhf(fb[i]/20);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  exp2(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  exp2f(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  expm1(db[i]/20);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] =  expm1f(fb[i]/20);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
}
