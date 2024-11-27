#include <stdio.h>
#include <math.h>
int main()
{
  volatile double da[10],db[10]={10,9,8,7,6,5,4,3,2,1};
  volatile float fa[10],fb[10]={10,9,8,7,6,5,4,3,2,1};
  int i;
  for(i=0;i<10;i++) {
    da[i] =  asin(db[i]/20);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  asinf(fb[i]/20);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  acos(db[i]/20);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  acosf(fb[i]/20);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  erf(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  erff(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  erfc(db[i]/20);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] =  erfcf(fb[i]/20);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
}
