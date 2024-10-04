#include <stdio.h>
int main()
{
  float a[100][100],b[100][100],c[100][100];
  int  i,j;
  for(i=0;i<100;i++)
  for(j=0;j<100;j++)
    {
      a[i][j] = 0;
      b[i][j] = i;
      c[i][j] = i+2;
    }

  for(i=0;i<100;i++)
    for(j=0;j<100;j++)
      {
	a[i][j] = a[i][j]+c[i][j];
	a[i][j] = b[i][j]+a[i][j];
      }

  for(i=0;i<100;i+=5)
    printf("%f %f %f %f %f \n",
	   a[i][0],a[i+1][2],a[i+2][5],a[i+3][6],a[i+4][9]);

  for(j=0;j<100;j++)
    for(i=0;i<100;i++)
      {
	a[i][j] = a[i][j]+c[i][j];
	a[i][j] = b[i][j]+a[i][j];
      }

  for(i=0;i<100;i+=5)
    printf("%f %f %f %f %f \n",
	   a[i][0],a[i+1][2],a[i+2][5],a[i+3][6],a[i+4][9]);
}
