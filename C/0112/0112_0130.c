#include <stdio.h>
#include <math.h>
int main()
{
  double fa[10]={0,0,0,0,0,0,0,0,0,0},fb[10]={10,9,8,7,6,5,4,3,2,1};
  double fc[10]={2,2,2,2,2,2,2,2,2,2};
  int i;
  for(i=0;i<10;i++) {
    if (i > 2) {
      fa[i] =  sinf(fb[i]/20);
    }
  }
  for(i=0;i<10;i++)  printf("%f ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] =  cosf(fb[i]/20);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] =  expf(fb[i]/20);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] =  logf(fb[i]/20);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] =  sinf(fb[i]) + cosf(fb[i]);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] =  powf(fb[i],fc[i]);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] =  powf(fb[i],4);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] = tanf(fb[i]);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] = atanf(fb[i]);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] = atan2f(fb[i],3);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] = log10f(fb[i]);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] = log2f(fb[i]);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] = exp2f(fb[i]);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    if (i > 2) {
    fa[i] = sqrtf(fb[i]);
  }
  }
  for(i=0;i<10;i++) printf("%f ",fa[i]);
  printf("\n");
}
