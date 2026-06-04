#include <stdio.h>

#define  MAX_LINE   1000
#define  MAX_COLUMN 1000

static double a[MAX_LINE][MAX_COLUMN],
              b[MAX_LINE][MAX_COLUMN],
              c[MAX_LINE][MAX_COLUMN];
static char   chk[MAX_LINE][MAX_COLUMN];

extern int is_true(),WA();
extern double d_get();
extern void check();
int main()
{
  int i,j;
  double x;

  printf("START\n");
  for (i=0; i< MAX_LINE ; i++)
    for (j=0;j < MAX_COLUMN ; j+=2){
      a[i][j] = (double)(i+j);
      b[i][j] = (double)(i-j);
      x= d_get(i)*d_get(j);
      if (is_true(i,j)){
        c[i][j]=a[i][j]+x*b[i][j];
        c[i][j+1]=a[i][j]-x*b[i][j];
      }
    }
  
  check();
  printf("END\n");
}

int is_true(i,j)
int i,j;
{
  return i+j;
}

double d_get(x)
int x;
{
  return x*1.0;
}
    
void check()
{
  double x,y,z;
  int  g=0;
  short i,j;

  for (i=0; i< MAX_LINE ; i++)
    for (j=0;j < MAX_COLUMN ; j+=2){
      if (i!=0 || j!=0){
	z=a[i][j];
	x=(i*j)*b[i][j]+z;
	y=-(i*j)*b[i][j]+z;
        if (c[i][j]==x)
	  chk[i][j]=1;
        if (c[i][j+1]==y)
	  chk[i][j+1]=1;
      }else{
        if (c[i][j]==0.0)
	  chk[i][j]=1;
        if (c[i][j+1]==0.0)
	  chk[i][j+1]=1;
      }
    }
  for (i=0; i< MAX_LINE ; i++)
    for (j=0;j < MAX_COLUMN ; j++){
      g+=chk[i][j];
    }
  if (g==MAX_COLUMN*MAX_LINE)
    printf("OK\n");
  else
    printf("NG %d %d \n",g,MAX_COLUMN*MAX_LINE);
  
  return;
}

	

   
