#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  float fa[10],fb[10]={-10,9,-8,-7,6,-5,4,-3,-2,1};
  float fc[10]={5,5,5,5,5,5,5,5,5,5};
  int ia[10],ib[10]={-10,9,-8,-7,6,-5,4,-3,-2,1 };
  int ic[10]={5,5,5,5,5,5,5,5,5,5};
  int i;
  for(i=0;i<10;i++) {
    fa[i] =  fabsf(fb[i]);
  }
  for(i=0;i<10;i++)  printf("%g ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  sqrtf(fabsf(fb[i]));
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    fa[i] =  fmaxf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  fminf(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    ia[i] =  abs(ib[i]);
  }
  for(i=0;i<10;i++)  printf("%d ",ia[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    ia[i] =  ib[i]>ic[i]?ib[i]:ic[i];
  }
  for(i=0;i<10;i++)  printf("%d ",ia[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    ia[i] =  ib[i]<ic[i]?ib[i]:ic[i];
  }
  for(i=0;i<10;i++)  printf("%d ",ia[i]);
  printf("\n");
}

