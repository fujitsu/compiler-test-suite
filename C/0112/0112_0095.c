#include "stdio.h"
int main()
{
  int i;
  double r8a[10][2]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  double r8b[10]={0,0,0,0,0,0,0,0,0,0};
  int ll[10]={-10,-10,-10,-10,-10,5,5,5,5,5};
  
  for(i=0;i<10;i++) {
    if (ll[i] >= 0) r8a[i][1] = 3;
  }

  for(i=0;i<10;i++) printf(" %g",r8a[i][1]);
  printf("\n");

  for(i=0;i<10;i++) {
    if (ll[i] >= 0) r8b[i] = 3;
  }

  for(i=0;i<10;i++) printf(" %g",r8b[i]);
  printf("\n");
}
