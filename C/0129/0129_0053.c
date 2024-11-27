#include <stdlib.h>
#include <math.h>
#include <stdio.h>
long  int z[3][3][3];

void display(long  int a) {
  printf("%#05x ",a);
}
void sub(long  int a[ ][3][3]) {

  int i,j,k;
  for (i=0; i<3; i++,puts(" ") )    
    for (j=0; j<3; j++,puts(" "))    
      for (k=0; k<3; k++) {           
        display(a[i][j][k]);
        switch(a[i][j][k]){
          case 0x000 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x001 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x002 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x010 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x011 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x012 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x020 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x021 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x022 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x101 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x102 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x110 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x111 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x112 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x120 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x121 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x122 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x200 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x201 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x202 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x210 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x211 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x212 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x220 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x221 : z[i-1][j][k]= a[i][j][k]; break;
          case 0x222 : z[i-1][j][k]= a[i][j][k]; break;
          default      : printf(" ng\n");
        } 
      } 
}
void sub2( ) {
  int i,j,k;
  for (i=0; i<3; i++,puts(" ") )    
    for (j=0; j<3; j++,puts(" "))    
      for (k=0; k<3; k++)           
        display(z[i][j][k]);
}
int main( ) {
  long  int a[3][3][3]={   
  {
    {0x000,0x001,0x002} 
   ,{0x010,0x011,0x012} 
   ,{0x020,0x021,0x022} 
  },
  {
    {0x100,0x101,0x102} 
   ,{0x110,0x111,0x112} 
   ,{0x120,0x121,0x122} 
  },
  {
    {0x200,0x201,0x202} 
   ,{0x210,0x211,0x212} 
   ,{0x220,0x221,0x222} 
  },
                  };
  printf("*  start *\n");
  sub(a);
  printf("******************\n");
  sub2( );
  printf("*  end   *\n");
exit (0);
}
