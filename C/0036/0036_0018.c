#include <stdio.h>
int sub1 (int ii4a[10][10], int ii4b[10][10], int ii4c[10][10], float rr4a[10][10], float rr4b[10][10], float rr4c[10][10], double rr8a[10][10], double rr8b[10][10], double rr8c[10][10], int n, int m, int ii4d[], float rr4d[], double rr8d[]);
int main()
{
  int   i4a[10][10],i4b[10][10],i4c[10][10],i4d[10];
  float r4a[10][10],r4b[10][10],r4c[10][10],r4d[10];
  double r8a[10][10],r8b[10][10],r8c[10][10],r8d[10]={0,0,0,0,0,0,0,0,0,0};
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
    {
      i4d[i] = i;
      for(j=0;j<10;j++)
	{
	  i4a[i][j] = i4b[i][j]+i4c[i][j];
	}
      i4d[i] = i4d[i] + i+ i4a[i][0];
    }
  
  for(i=0;i<10;i+=5)
    printf("%d %d %d %d %d \n",
	     i4d[i],i4d[i+1],i4d[i+2],i4d[i+3],i4d[i+4]);
  printf("\n");

  for(i=0;i<10;i++)
    {
      r4d[i] = i;
      for(j=0;j<10;j++)
	{
	  r4a[i][j] = r4b[i][j]+r4c[i][j]-r4d[i];
	}
      r4d[i] = r4d[i] + i+ r4a[i][0];
    }

  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	     r4d[i],r4d[i+1],r4d[i+2],r4d[i+3],r4d[i+4]);
  printf("\n");

  for(i=0;i<10;i++)
    {
      r8d[i] = i;
      for(j=0;j<10;j++)
	{
	  r8a[i][j] = r8b[j][i]+r8c[i][j]-r8d[j];
	}
      r8d[i] = r8d[i] + 2.0+ r8a[i][8];
    }
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	     r8d[i],r8d[i+1],r8d[i+2],r8d[i+3],r8d[i+4]);
  printf("\n");

    sub1(i4a,i4b,i4c,r4a,r4b,r4c,r8a,r8b,r8c,0,10,i4d,r4d,r8d);


  for(i=0;i<10;i+=5)
    printf("%d %d %d %d %d \n",
	     i4d[i],i4d[i+1],i4d[i+2],i4d[i+3],i4d[i+4]);
  printf("\n");


  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	     r4d[i],r4d[i+1],r4d[i+2],r4d[i+3],r4d[i+4]);
  printf("\n");
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	     r8d[i],r8d[i+1],r8d[i+2],r8d[i+3],r8d[i+4]);
  printf("\n");
}

int 
sub1 (int ii4a[10][10], int ii4b[10][10], int ii4c[10][10], float rr4a[10][10], float rr4b[10][10], float rr4c[10][10], double rr8a[10][10], double rr8b[10][10], double rr8c[10][10], int n, int m, int ii4d[], float rr4d[], double rr8d[])
     
{
  int i4e=0,i,j;
  float  r4e=0;
  double r8e=0;
  
  for(i=0;i<10;i++)
    {
      ii4d[i] = i;
      for(j=0;j<10;j++)
	{
	  ii4a[i][j] = ii4b[i][j]+ii4c[i][j];
	}
      ii4d[i] = ii4d[i] + i+ ii4a[i][0];
    }

  
  for(i=0;i<10;i++)
    {
      rr4d[i] = i;
      for(j=0;j<10;j++)
	{
	  rr4a[i][j] = rr4b[i][j]+rr4c[i][j]-rr4d[i];
	}
      rr4d[i] = rr4d[i] + i+ rr4a[i][3];
    }

  for(i=0;i<10;i++)
    {
      rr8d[i] = i;
      for(j=0;j<10;j++)
	{
	  rr8a[i][j] = rr8b[j][i]+rr8c[i][j]-rr8d[j];
	}
      rr8d[i] = rr8d[i] + 2.0+ rr8a[i][8];
    }
}

