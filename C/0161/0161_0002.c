#include <stdio.h>
long long int z[3][3][3];
volatile long long int y[3][3][3];

void display(long double a) {
  printf("%Lf ",a);
}
void display2(long long int a) {
  printf("(%.8x-%.8x) ",*((int *)&a),*(((int *)&(a))+1));
}
void subleft(long double a[ ][3][3]) {

  volatile int i,j,k;
  for (i=0; i<3; i++ )
    for (j=0; j<3; j++)
      for (k=0; k<3; k++) {

        switch((long long int)a[i][j][k]){
          case 9223372036854775781LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775782LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775783LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775784LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775785LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775786LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775787LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775788LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775789LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775790LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775791LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775792LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775793LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775794LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775795LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775796LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775797LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775798LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775799LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775800LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775801LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775802LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775803LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775804LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775805LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775806LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775807LL : z[i-1][j][k]= a[i][j][k]; break;
          default      : printf("ng\n");
        }
      }
}
void subright(volatile const  long double a[ ][3][3]) {

  int i,j,k;
  for (i=0; i<3; i++ )
    for (j=0; j<3; j++)
      for (k=0; k<3; k++) {

        switch((long long int)a[i][j][k]){
          case 9223372036854775781LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775782LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775783LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775784LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775785LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775786LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775787LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775788LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775789LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775790LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775791LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775792LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775793LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775794LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775795LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775796LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775797LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775798LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775799LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775800LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775801LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775802LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775803LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775804LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775805LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775806LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775807LL : y[i-1][j][k]= a[i][j][k]; break;
          default      : printf("ng\n");
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
    {9223372036854775781.0L,9223372036854775782.0L,9223372036854775783.0L}
   ,{9223372036854775784.0L,9223372036854775785.0L,9223372036854775786.0L}
   ,{9223372036854775787.0L,9223372036854775788.0L,9223372036854775789.0L}
  },
  {
    {9223372036854775790.0L,9223372036854775791.0L,9223372036854775792.0L}
   ,{9223372036854775793.0L,9223372036854775794.0L,9223372036854775795.0L}
   ,{9223372036854775796.0L,9223372036854775797.0L,9223372036854775798.0L}
  },
  {
    {9223372036854775799.0L,9223372036854775800.0L,9223372036854775801.0L}
   ,{9223372036854775802.0L,9223372036854775803.0L,9223372036854775804.0L}
   ,{9223372036854775805.0L,9223372036854775806.0L,9223372036854775807.0L}
  } 
                  };
long double b[3][3][3]={
  {
    {9223372036854775781.0L,9223372036854775782.0L,9223372036854775783.0L}
   ,{9223372036854775784.0L,9223372036854775785.0L,9223372036854775786.0L}
   ,{9223372036854775787.0L,9223372036854775788.0L,9223372036854775789.0L}
  },
  {
    {9223372036854775790.0L,9223372036854775791.0L,9223372036854775792.0L}
   ,{9223372036854775793.0L,9223372036854775794.0L,9223372036854775795.0L}
   ,{9223372036854775796.0L,9223372036854775797.0L,9223372036854775798.0L}
  },
  {
    {9223372036854775799.0L,9223372036854775800.0L,9223372036854775801.0L}
   ,{9223372036854775802.0L,9223372036854775803.0L,9223372036854775804.0L}
   ,{9223372036854775805.0L,9223372036854775806.0L,9223372036854775807.0L}
  } 
                  };
  subright(a);
  subleft(b);
  if (subcmp( )) printf("ng\n");
  else            printf("ok\n");
}
