#include <stdio.h>
int main()
{
  double a[10][10],b[10][10],c[10][10];
  long  i,j,k,n;
  for(i=0;i<10;i++)
  for(j=0;j<10;j++)
    {
      a[i][j] = 0;
      b[i][j] = i;
      c[i][j] = i+2;
      n = i-1;
    }

  for(j=0;j<=n;j++)
    for(k=0;k<=n;k++)
      for(i=0;i<=n;i++)
	{
	  a[i][j] = a[i][j]+b[i][k]*c[k][j];
	}

  for(j=0;j<10;j++)
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   a[i][j],a[i+1][j],a[i+2][j],a[i+3][j],a[i+4][j]);

  for(j=0;j<=n;j++)
    for(k=0;k<=n;k++)
      for(i=0;i<=n;i++)
	{
	  a[j][i] = a[j][i]+b[k][i]*c[j][k];
	}

  for(j=0;j<10;j++)
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   a[i][j],a[i+1][j],a[i+2][j],a[i+3][j],a[i+4][j]);

}
