#include <stdio.h>
#include <math.h>
int main()
{
  double da[10]={0,0,0,0,0,0,0,0,0,0},db[10]={10,9,8,7,6,5,4,3,2,1};
  float fa[10]={0,0,0,0,0,0,0,0,0,0},fb[10]={10,9,8,7,6,5,4,3,2,1};
  int i;
  for(i=0;i<10;i++) {
    if (i>3) da[i] =  asin(db[i]/20);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    if (i>3) fa[i] =  asinf(fb[i]/20);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i>3) da[i] =  acos(db[i]/20);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    if (i>3) fa[i] =  acosf(fb[i]/20);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i>3) da[i] =  erf(db[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    if (i>3) fa[i] =  erff(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i>3) da[i] =  erfc(db[i]/20);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i>3) fa[i] =  erfcf(fb[i]/20);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
}
