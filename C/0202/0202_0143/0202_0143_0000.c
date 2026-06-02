#include <stdio.h>
extern int n;
extern int m;

void fcompat(void)
{
  int a[n][6][m];
  int (*p)[4][n+1];
  int c[n][n][6][m];
  int (*r)[n][n][n+1];
  r = c;   
           

  if(sizeof(a) == n*6*m*4) {
    printf("4_3-1    sizeof a = %d (%d) \n",sizeof(a),n*6*m*4);
  } else {
    printf("4_3-1 NG sizeof a = %d (%d) \n",sizeof(a),n*6*m*4);
  }
  if(sizeof(p) == 8) {
    printf("4_3-2    sizeof p = %d (%d) \n",sizeof(p),8);
  } else {
    printf("4_3-2 NG sizeof p = %d (%d) \n",sizeof(p),8);
  }
  if(sizeof(c) == n*n*6*m*4) {
    printf("4_3-3    sizeof c = %d (%d) \n",sizeof(c),n*n*6*m*4);
  } else {
    printf("4_3-3 NG sizeof c = %d (%d) \n",sizeof(c),n*n*6*m*4);
  }
  if(sizeof(r) == 8) {
    printf("4_3-4    sizeof r = %d (%d) \n",sizeof(r),8);
  } else {
    printf("4_3-4 NG sizeof r = %d (%d) \n",sizeof(r),8);
  }
}

void fvla(){}
