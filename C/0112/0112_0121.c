#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  double fa[10],fb[10]={-10,9,-8,-7,6,-5,4,-3,-2,1};
  double fc[10]={5,5,5,5,5,5,5,5,5,5};
  long long int ia[10],ib[10]={-10,9,-8,-7,6,-5,4,-3,-2,1};
  long long int ic[10]={5,5,5,5,5,5,5,5,5,5};
  int i;
  for(i=0;i<10;i++) {
    fa[i] =  fabs(fb[i]);
  }
  for(i=0;i<10;i++)  printf("%g ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  sqrt(fabs(fb[i]));
  }
  for(i=0;i<10;i++) printf("%e ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    fa[i] =  fmax(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");
  
  for(i=0;i<10;i++) {
    fa[i] =  fmin(fb[i],fc[i]);
  }
  for(i=0;i<10;i++) printf("%g ",fa[i]);
  printf("\n");

  for(i=0;i<10;i++) {
    ia[i] =  abs(ib[i]);
  }
  for(i=0;i<10;i++)  printf("%Ld ",ia[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    ia[i] =  ib[i]>ic[i]?ib[i]:ic[i];
  }
  for(i=0;i<10;i++)  printf("%Ld ",ia[i]);
  printf("\n");
  for(i=0;i<10;i++) {
    ia[i] =  ib[i]<ic[i]?ib[i]:ic[i];
  }
  for(i=0;i<10;i++)  printf("%Ld ",ia[i]);
  printf("\n");
}

