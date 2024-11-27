#include <stdlib.h>
#include <math.h>
#include <stdio.h>
long int z[3][3][3];
volatile long int y[3][3][3];

void display(long double a) {
  printf("%Lf ",a);
}
void display2(long int a) {
  printf("(%.8x) ",a);
}
void subleft(long double a[ ][3][3]) {

  volatile int i,j,k;
  for (i=0; i<3; i++ )    
    for (j=0; j<3; j++)    
      for (k=0; k<3; k++) {           
        switch((long int)a[i][j][k]){
          case 2147482781 : z[i+2][j][k]= a[i][j][k]; break;
          case 2147482782 : z[i+2][j][k]= a[i][j][k]; break;
          case 2147482783 : z[i+2][j][k]= a[i][j][k]; break;
          case 2147482784 : z[i+2][j][k]= a[i][j][k]; break;
          case 2147482785 : z[i+2][j][k]= a[i][j][k]; break;
          case 2147482786 : z[i+2][j][k]= a[i][j][k]; break;
          case 2147482787 : z[i+2][j][k]= a[i][j][k]; break;
          case 2147482788 : z[i+2][j][k]= a[i][j][k]; break;
          case 2147482789 : z[i+2][j][k]= a[i][j][k]; break;
          case 2147482790 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482791 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482792 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482793 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482794 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482795 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482796 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482797 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482798 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482799 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482800 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482801 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482802 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482803 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482804 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482805 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482806 : z[i-1][j][k]= a[i][j][k]; break;
          case 2147482807 : z[i-1][j][k]= a[i][j][k]; break;
          default      : printf(" ng\n");
        } 
      } 
}
void subright(volatile const  long double a[ ][3][3]) {

  int i,j,k;
  for (i=0; i<3; i++ )    
    for (j=0; j<3; j++)    
      for (k=0; k<3; k++) {           

        switch((long int)a[i][j][k]){
          case 2147482781 : y[i+2][j][k]= a[i][j][k]; break;
          case 2147482782 : y[i+2][j][k]= a[i][j][k]; break;
          case 2147482783 : y[i+2][j][k]= a[i][j][k]; break;
          case 2147482784 : y[i+2][j][k]= a[i][j][k]; break;
          case 2147482785 : y[i+2][j][k]= a[i][j][k]; break;
          case 2147482786 : y[i+2][j][k]= a[i][j][k]; break;
          case 2147482787 : y[i+2][j][k]= a[i][j][k]; break;
          case 2147482788 : y[i+2][j][k]= a[i][j][k]; break;
          case 2147482789 : y[i+2][j][k]= a[i][j][k]; break;
          case 2147482790 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482791 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482792 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482793 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482794 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482795 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482796 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482797 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482798 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482799 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482800 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482801 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482802 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482803 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482804 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482805 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482806 : y[i-1][j][k]= a[i][j][k]; break;
          case 2147482807 : y[i-1][j][k]= a[i][j][k]; break;
          default      : printf(" ng\n");
        } 
      } 
}
int subcmp( ) {
  int i,j,k;
  int ng=0;
  for (i=0; i<3; i++)    
    for (j=0; j<3; j++)    
      for (k=0; k<3; k++)           
        if (y[i][j][k]==z[i][j][k]); else ng++;

  return(ng);
}
int main( ) {
volatile  const static long double a[3][3][3]={   
  {
    {2147482781.0L,2147482782.0L,2147482783.0L}
   ,{2147482784.0L,2147482785.0L,2147482786.0L}
   ,{2147482787.0L,2147482788.0L,2147482789.0L}
    
    
    
  },
  {
    {2147482790.0L,2147482791.0L,2147482792.0L}
   ,{2147482793.0L,2147482794.0L,2147482795.0L}
   ,{2147482796.0L,2147482797.0L,2147482798.0L}
    
    
    
  },
  {
    {2147482799.0L,2147482800.0L,2147482801.0L}
   ,{2147482802.0L,2147482803.0L,2147482804.0L}
   ,{2147482805.0L,2147482806.0L,2147482807.0L}
    
    
    
  } 
                  };
long double b[3][3][3]={   
  {
    {2147482781.0L,2147482782.0L,2147482783.0L}
   ,{2147482784.0L,2147482785.0L,2147482786.0L}
   ,{2147482787.0L,2147482788.0L,2147482789.0L}
    
    
    
  },
  {
    {2147482790.0L,2147482791.0L,2147482792.0L}
   ,{2147482793.0L,2147482794.0L,2147482795.0L}
   ,{2147482796.0L,2147482797.0L,2147482798.0L}
    
    
    
  },
  {
    {2147482799.0L,2147482800.0L,2147482801.0L}
   ,{2147482802.0L,2147482803.0L,2147482804.0L}
   ,{2147482805.0L,2147482806.0L,2147482807.0L}
    
    
    
  } 
                  };
  subright(a);
  subleft(b);
  if (subcmp( )) printf(" ng\n");
  else            printf(" ok\n");
exit (0);
}
