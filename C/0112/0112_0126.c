#include <stdio.h>
#include <math.h>
int main()
{
  volatile float fa[10],fb[10]={10,9,8,7,6,5,4,3,2,1};
  volatile float fc[10]={2,2,2,2,2,2,2,2,2,2};
  int i;
  for(i=0;i<10;i++) {
    fa[i] =  sinf(fb[i]);
  }
  for(i=0;i<10;i++)  printf("%f ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  cosf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    fa[i] =  expf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  logf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    fa[i] =  sinf(fb[i]) + cosf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  powf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  powf(fb[i],4);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = tanf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = atanf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = atan2f(fb[i],3);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = log10f(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = log2f(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = exp2f(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    fa[i] = sqrtf(fb[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
}
