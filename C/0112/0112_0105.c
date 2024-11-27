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
    da[i] =  remainder(db[i],dc[i]);
  }
  for(i=0;i<10;i++)  printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  remainderf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    int nn=3;
    da[i] =  remquo(db[i],dc[i],&nn);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    int nn=3;
    fa[i] =  remquof(fb[i],fc[i],&nn);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  copysign(db[i],dc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  copysignf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  scalbn(db[i],dc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  scalbnf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  scalbln(db[i],dc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  scalblnf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  hypot(db[i],dc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  hypotf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  nextafter(db[i],dc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  nextafterf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    da[i] =  nexttoward(db[i],dc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",da[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  nexttowardf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
}
