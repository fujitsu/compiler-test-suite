
#include "stdio.h"
#include "math.h"
int main()
{
  int n,i,j,k,l;
   double c1[10][10],b1[10][10],a1[10][10],result;
   float  c2[10][10],b2[10][10],a2[10][10];

   n=10;
   for ( j=0;j<n;j++){
     for ( i=0;i<n;i++){
      c1[j][i]=i+1; 
      b1[j][i]=i+1;
      a1[j][i]=i+1;
      c2[j][i]=i+1;
      b2[j][i]=i+1;
      a2[j][i]=i+1;
    }
  }

  
   for (l=1;l<n;l++){
    for (j=1;j<n;j++){
      c1[l][j] = 8;
      for (k=1;k<n;k++){
        for (i=1;i<n;i++){
          c1[j][i]=c1[j][i]+a1[k][i]*b1[j][k];
        }
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+c1[j][i];
    }
  }
  printf("test-1 = %f \n",result);

  
  for (l=1;l<n;l++){
    for (j=1;j<n;j++){
      c2[l][j] = 8;
	for (k=1;k<n;k++){
	  for (i=1;i<n;i++){
	    c2[j][i]=c2[j][i]+a2[k][i]*b2[j][k];
	  }
	}
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+c2[j][i];
    }
  }
  printf("test-2 = %f \n",result);
}
