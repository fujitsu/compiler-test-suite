#include <stdio.h>
int main()
{
  float r4a[10][10],r4b[10][10],r4c[10][10];
  double r8a[10][10],r8b[10][10],r8c[10][10];
  int  i,j,k,n,m,l;

  n = 5;
  m = 5;

  
  for(i=0;i<10;i++)
  for(j=0;j<10;j++)
    {
      r4a[i][j] = 0;
      r4b[i][j] = i;
      r4c[i][j] = i+2;
    }
  
  for(i=0;i<10;i++)
  for(j=0;j<10;j++)
    {
      r8a[i][j] = 0;
      r8b[i][j] = i;
      r8c[i][j] = i+2;
    }

  for(k=0;k<9;k++)
  for(j=0;j<9;j++)
    for(i=0;i<9;i++)
      {
	r4a[i+1][j] = r4b[i+1][j];
	r4c[i][j+1] = r4b[i][j+1]+1;
      }

  for(j=0;j<9;j++)
    {
      r4a[1][j] = r4a[m+1][j];
      r4c[m+1][j+1] = r4c[1][j+1];
    }

  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r4a[i][j],r4a[i+1][j],r4a[i+2][j],r4a[i+3][j],r4a[i+4][j]);

  printf("\n");
  
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r4c[i][j],r4c[i+1][j],r4c[i+2][j],r4c[i+3][j],r4c[i+4][j]);
  
  printf("\n");

  for(l=0;l<9;l++)
    {
      for(k=0;k<9;k++)
	for(j=0;j<9;j++)
	  {
	    r8a[k][j] = r8b[k][j]+1;
	  }

      for(j=0;j<9;j++)
	for(k=0;k<9;k++)
	  for(i=0;i<9;i++)
	    {
	      r8c[k][j] = r8b[k][j];
	    }
    }

  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r8a[i][j],r8a[i+1][j],r8a[i+2][j],r8a[i+3][j],r8a[i+4][j]);

  printf("\n");
  
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r8c[i][j],r8c[i+1][j],r8c[i+2][j],r8c[i+3][j],r8c[i+4][j]);
  
  printf("\n");


  for(l=0;l<9;l++)
    {
      for(k=0;k<9;k++)
	for(j=0;j<9;j++)
	  for(i=0;i<9;i++)
	    {
	      r4a[k][j] = r4b[k][j];
	    }

      for(k=0;k<9;k++)
	for(j=0;j<9;j++)
	{
	  r4c[k][j] = r4b[k][j]+1;
	}
    }
  
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r4a[i][j],r4a[i+1][j],r4a[i+2][j],r4a[i+3][j],r4a[i+4][j]);

  printf("\n");
  
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r4c[i][j],r4c[i+1][j],r4c[i+2][j],r4c[i+3][j],r4c[i+4][j]);
  
  printf("\n");

  for(k=0;k<9;k++)
  for(j=0;j<9;j++)
    for(i=0;i<9;i++)
      {
	r8a[i+1][j] = r8b[i+1][j];
      r8c[i][j+1] = r8b[i][j+1]+1;
      }

  for(i=0;i<9;i++)
    {
	r8a[1][j] = r8b[m+1][j];
      r8c[m+1][j+1] = r8b[1][j+1]+1;
    }

  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r8a[i][j],r8a[i+1][j],r8a[i+2][j],r8a[i+3][j],r8a[i+4][j]);

  printf("\n");
  
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r8c[i][j],r8c[i+1][j],r8c[i+2][j],r8c[i+3][j],r8c[i+4][j]);
  
  printf("\n");
}
