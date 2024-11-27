#include <stdio.h>

long long int z[3][3][3];

void display(long long int a) {
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("(%.8x-%.8x) ",*(((int *)&(a))+1),*((int *)&a));
#else
  printf("(%.8x-%.8x) ",*((int *)&a),*(((int *)&(a))+1));
#endif
}
void sub(long long int a[ ][3][3]) {

  int i,j,k;
  for (i=0; i<3; i++,puts("   ") )    
    for (j=0; j<3; j++,puts("   "))    
      for (k=0; k<3; k++) {           
        display(a[i][j][k]);
        switch(a[i][j][k]){
          case 0x100000000LL : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100000001LL : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100000002LL : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100000010LL : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100000011LL : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100000012LL : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100000020LL : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100000021LL : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100000022LL : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100000100LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000101LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000102LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000110LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000111LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000112LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000120LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000121LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000122LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000200LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000201LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000202LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000210LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000211LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000212LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000220LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000221LL : z[i-1][j][k]= a[i][j][k]; break;
          case 0x100000222LL : z[i-1][j][k]= a[i][j][k]; break;
          default      : printf(" ng\n");
        } 
      } 
}
void sub2( ) {
  int i,j,k;
  for (i=0; i<3; i++,puts("   ") )    
    for (j=0; j<3; j++,puts("   "))    
      for (k=0; k<3; k++)           
        display(z[i][j][k]);
}
int main( ) {
  long long int a[3][3][3]={   
  {
    {0x100000000LL,0x100000001LL,0x100000002LL}
    
   ,{0x100000010LL,0x100000011LL,0x100000012LL}
    
   ,{0x100000020LL,0x100000021LL,0x100000022LL}
    
  },
  {
    {0x100000100LL,0x100000101LL,0x100000102LL} 
    
   ,{0x100000110LL,0x100000111LL,0x100000112LL}
    
   ,{0x100000120LL,0x100000121LL,0x100000122LL}
    
  },
  {
    {0x100000200LL,0x100000201LL,0x100000202LL} 
   ,{0x100000210LL,0x100000211LL,0x100000212LL} 
   ,{0x100000220LL,0x100000221LL,0x100000222LL} 
  },
                  };
  printf("*  start *\n");
  sub(a);
  printf("******************\n");
  sub2( );
  printf("*  end   *\n");
}
