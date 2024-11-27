#include <stdio.h>
#include <math.h>
int main()
{
  double da[10],db[10]={10,9,8,7,6,5,4,3,2,1};
  double dc[10]={4,4,4,4,4,4,4,4,4,4};
  float fa[10],fb[10]={10,9,8,7,6,5,4,3,2,1};
  float fc[10]={4,4,4,4,4,4,4,4,4,4};
  int i;
  for(i=0;i<10;i++) {
    da[i] =  fdim(db[i],dc[i]);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  fdimf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  fmax(db[i],dc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  fmaxf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  fmin(db[i],dc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  fminf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  fma(db[i],dc[i],2);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  fmaf(db[i],dc[i],2);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  cbrt(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  cbrtf(fb[i]);
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
