#include <stdio.h>
#include <math.h>
int main()
{
  double da[10],db[10]={10,9,8,7,6,5,4,3,2,1};

  float fa[10],fb[10]={10,9,8,7,6,5,4,3,2,1};

  int i;
  int ia1[10],ia2[10];
  for(i=0;i<10;i++) {
    ia1[i] =  ilogb(db[i]);
  }
  for(i=0;i<10;i++)  printf("%d ",ia1[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    ia2[i] =  ilogbf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%d ",ia2[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  log1p(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  log1pf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  log2(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  log2f(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  logb(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  logbf(db[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  lgamma(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  lgammaf(db[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  tgamma(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  tgammaf(db[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
}
