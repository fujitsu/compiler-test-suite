#include <stdio.h>
extern int n;

int B[100];                    
void fvla(int m, int C[m][m]); 

void fvla(int m, int C[m][m])  
{
  typedef int VLA[m][m];       
  int D[m];                    
  int (*s)[m];                 
  static int (*q)[m] = &B;     

  if (sizeof(C) == 8) {
    printf("1-1    sizeof C = %d (%d) \n",sizeof(C),8);
  } else {
    printf("1-1 NG sizeof C = %d (%d) \n",sizeof(C),8);
  }
  if (sizeof(D) == m*4) {
    printf("1-2    sizeof D = %d (%d) \n",sizeof(D),m*4);
  } else {
    printf("1-2 NG sizeof D = %d (%d) \n",sizeof(D),m*4);
  }
  if (sizeof(s) == 8) {
    printf("1-3    sizeof s = %d (%d) \n",sizeof(s),8);
  } else {
    printf("1-3 NG sizeof s = %d (%d) \n",sizeof(s),8);
  }
  if (sizeof(q) == 8) {
    printf("1-4    sizeof q = %d (%d) \n",sizeof(q),8);
  } else {
    printf("1-4 NG sizeof q = %d (%d) \n",sizeof(q),8);
  }
}

void fcompat(){}
