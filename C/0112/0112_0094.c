#include "stdio.h"
int main()
{
  int i;
  float r4a[10][2]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  float r4b[10]={0,0,0,0,0,0,0,0,0,0};
  int ll[10]={-10,-10,-10,-10,-10,5,5,5,5,5};
  
  for(i=0;i<10;i++) {
    if (ll[i] >= 0) r4a[i][1] = 3;
  }

  for(i=0;i<10;i++) printf(" %g",r4a[i][1]);
  printf("\n");

  for(i=0;i<10;i++) {
    if (ll[i] >= 0) r4b[i] = 3;
  }

  for(i=0;i<10;i++) printf(" %g",r4b[i]);
  printf("\n");
}
