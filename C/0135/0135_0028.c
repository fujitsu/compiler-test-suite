#include <stdlib.h>


#include <stdio.h>

int main()
{
  float        a[100],b[100],c[100][100],d[100][100];
  int          i,j,k,l,n=100;
  
  for(i=0;i<100;i++) {
    for(j=0;j<100;j++) {
      c[i][j]=.3;
      d[i][j]=.1;
    }
  }
  
  for(i=0;i<n;i++) {
    a[i]=i;
    b[i]=a[i]+i;
    for(j=2;j<n;j++) {
      c[i][j]=a[i];
      d[i][j]=b[i];
      c[i][j]=c[i][j-2]+1;
      d[i][j]=d[i][j]+i;
      c[i][j]=d[i][j]/j;
    }
  }

  printf("## C ## \n");
  for(i=0;i<100;i++) {
    for(j=0;j<100;j++) printf(" %f\n",c[i][j]);
  }
  printf("\n## D ## \n");
  for(i=0;i<100;i++) {
    for(j=0;j<100;j++) printf(" %f\n",d[i][j]);
  }
  exit(0);
}
