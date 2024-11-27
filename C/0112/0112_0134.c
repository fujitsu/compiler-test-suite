#include <stdio.h>
#include <math.h>
int main()
{
  double da[10],db[10]={10,9,8,7,6,5,4,3,2,1};
  float fa[10],fb[10]={10,9,8,7,6,5,4,3,2,1};
  int i;

  for(i=0;i<10;i++) {
    da[i] =  round(db[i]/4);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  roundf(fb[i]/4);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    da[i] =  trunc(db[i]/4);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  truncf(fb[i]/4);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    da[i] =  floor(db[i]/4);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  floorf(fb[i]/4);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    da[i] =  ceil(db[i]/4);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  ceilf(fb[i]/4);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    da[i] =  rint(db[i]/4);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  rintf(fb[i]/4);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    da[i] =  nearbyint(db[i]/4);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  nearbyintf(fb[i]/4);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
}
