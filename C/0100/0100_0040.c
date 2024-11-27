

#include <stdio.h>

#define ROTATION_NUM 100
#define ELEMENT_NUM 100
#define ANSWER 9801.0f


int sub_016(int (*aa)[ELEMENT_NUM],
	      int (*bb)[ELEMENT_NUM],
	      int pi,
	      int pj,
	      int pk,
	      int pl,
	      int pm,
	      int pn)
{
  int i,j;
  

  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=0; j < ROTATION_NUM+3-2-1; j=j+1) {
      aa[i][j] = bb[i][j];
    }
  }
  return aa[0][0];
  
}


int main( void ) {
  int array2_a[ELEMENT_NUM][ELEMENT_NUM];
  int array2_b[ELEMENT_NUM][ELEMENT_NUM];
  double result=0;
  int i,j,k,l,m,n;
  i=j=k=l=m=n=0;
  
  
  printf("%s \n","initialization");
  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=0; j < ROTATION_NUM; ++j) {
      array2_a[i][j] = 0;
      array2_b[i][j] = 1;
    }
  }
  
  
  i=j=0;
  printf("%s \n","Main body of processing");
  for (i=0; i < ROTATION_NUM-1; ++i) {
    for (j=0; j < ROTATION_NUM-1; ++j) {
      
      result += sub_016(array2_a, array2_b, i, j, k, l, m, n);
    }
  }
  
  
  printf("%s \n","check on result");
  
  
  if( (result - ANSWER) == 0 ) {
    printf("%s\n", "ok");
  } else {
    printf("%s: \n", "ng");
    printf("Correct Answer: %lf \n", ANSWER);
    printf("Execution Result: %lf \n", result);
  }
  return 1;
}
