#include <stdio.h>

long  double z[3][3][3];
void display(long  double a) {
  printf("%.3x ",(int)a);
}
void sub( long  double a[ ][3][3]) {

  volatile int i,j,k;
  for (i=0; i<3; i++,puts(" ") )    
    for (j=0; j<3; j++,puts(" "))   
      for (k=0; k<3; k++) {           
        display(a[i][j][k]);
        switch((long)a[i][j][k]){
          case 0x000 :
          case 0x001 :
          case 0x002 : 
          case 0x010 : 
          case 0x011 :
          case 0x012 : 
          case 0x020 : 
          case 0x021 : 
          case 0x022 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100 : 
          case 0x101 : 
          case 0x102 :
          case 0x110 : 
          case 0x111 :
          case 0x112 : 
          case 0x120 :
          case 0x121 : 
          case 0x122 : 
          case 0x200 : 
          case 0x201 :
          case 0x202 :
          case 0x210 : 
          case 0x211 : 
          case 0x212 : 
          case 0x220 : 
          case 0x221 :
          case 0x222 : z[i-1][j][k]= a[i][j][k]; break;
          default      : printf(" ng\n");
        } 
      } 
}
void sub2( ) {
  volatile  int i,j,k;
  for (i=0; i<3; i++,puts(" ") )    
    for (j=0; j<3; j++,puts(" "))   
      for (k=0; k<3; k++)           
        display(z[i][j][k]);
}
int main( ) {
   long  double a[3][3][3]={   
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
}
