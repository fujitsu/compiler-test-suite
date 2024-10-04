#include <stdio.h>
int sub1 (int ii4a[10][10], int ii4b[10][10], int ii4c[10][10], float rr4a[10][10], float rr4b[10][10], float rr4c[10][10], double rr8a[10][10], double rr8b[10][10], double rr8c[10][10], int n, int m);
int main()
{
  int   i4a[10][10],i4b[10][10],i4c[10][10],i4d;
  float r4a[10][10],r4b[10][10],r4c[10][10],r4d;
  double r8a[10][10],r8b[10][10],r8c[10][10],r8d;
  int  i,j;
  for(j=0;j<10;j++)
  for(i=0;i<10;i++)
    {
      i4a[i][j] = 0;
      i4b[i][j] = i;
      i4c[i][j] = i+2;
      r4a[i][j] = 0;
      r4b[i][j] = i;
      r4c[i][j] = i+2;
      r8a[i][j] = 0;
      r8b[i][j] = i;
      r8c[i][j] = i+2;
    }

  for(i=0;i<10;i++)
  for(j=0;j<10;j++)
    {
      i4a[i][j] = i4b[j][i]+i4c[i][j];
    }

  printf("\n");
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%d %d %d %d %d \n",
	     i4a[i][j],i4a[i+1][j],i4a[i+2][j],i4a[i+3][j],i4a[i+4][j]);
  
  for(i=0;i<10;i++)
  for(j=0;j<10;j++)
    {
      r4a[i][j] = r4b[j][i]+r4c[i][j];
    }

  printf("\n");
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r4a[i][j],r4a[i+1][j],r4a[i+2][j],r4a[i+3][j],r4a[i+4][j]);

  for(j=0;j<10;j++)
  for(i=0;i<10;i++)
    {
      r8a[i][j] = r8b[j][i]+r8c[i][j];
    }

  printf("\n");
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r8a[i][j],r8a[i+1][j],r8a[i+2][j],r8a[i+3][j],r8a[i+4][j]);
  

    sub1(i4a,i4b,i4c,r4a,r4b,r4c,r8a,r8b,r8c,0,10);


  printf("\n");
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%d %d %d %d %d \n",
	     i4a[i][j],i4a[i+1][j],i4a[i+2][j],i4a[i+3][j],i4a[i+4][j]);
  printf("\n");
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r4a[i][j],r4a[i+1][j],r4a[i+2][j],r4a[i+3][j],r4a[i+4][j]);
  printf("\n");
  
  for(j=0;j<10;j++)
    for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r8a[i][j],r8a[i+1][j],r8a[i+2][j],r8a[i+3][j],r8a[i+4][j]);
  
}

int 
sub1 (int ii4a[10][10], int ii4b[10][10], int ii4c[10][10], float rr4a[10][10], float rr4b[10][10], float rr4c[10][10], double rr8a[10][10], double rr8b[10][10], double rr8c[10][10], int n, int m)
     
{
  int i4e=0,i,j;
  float  r4e=0;
  double r8e=0;
  
  for(i=n;i<m;i++)
  for(j=n;j<m;j++)
    {
      ii4a[j][i] = ii4b[i][j]+ii4c[j][i];
    }

  for(j=n;j<m;j++)
  for(i=n;i<m;i++)
    {
      rr4a[j][i] = rr4b[i][j]+rr4c[j][i];
    }

  for(j=n;j<m;j++)
  for(i=n;i<m;i++)
    {
      rr8a[j][i] = rr8b[i][j]+rr8c[j][i];
    }

  
}

