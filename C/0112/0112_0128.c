#include <stdio.h>
#include <math.h>
int main()
{
  double fa[10],fb[10]={10,9,8,7,6,5,4,3,2,1};
  double fc[10]={2,2,2,2,2,2,2,2,2,2};
  int i;
  for(i=0;i<10;i++) {
    fa[i] =  sin(fb[i]);
  }
  for(i=0;i<10;i++)  printf("%g ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  cos(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    fa[i] =  exp(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  log(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    fa[i] =  sin(fb[i]) + cos(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  pow(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  pow(fb[i],4);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = tan(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = atan(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = atan2(fb[i],3);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = log10(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = log2(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = exp2(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = sqrt(fb[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
}
