#include <stdio.h>

#define ROTATION_NUM 100
#define ELEMENT_NUM 100
#define ANSWER 29700.0f

int main( void ) {
  int array2_a[ELEMENT_NUM][ELEMENT_NUM];
  int array2_b[ELEMENT_NUM][ELEMENT_NUM];
  int array2_c[ELEMENT_NUM][ELEMENT_NUM];
  double result=0;
  int i,j,k;
  i=j=k=0;
  
  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=0; j < ROTATION_NUM; ++j) {
      array2_a[i][j] = 0;
      array2_b[i][j] = 1;
      array2_c[i][j] = 2;
    }
  }


  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=1; j < ROTATION_NUM; ++j) {
      for (k=1; k < ROTATION_NUM; ++k) {
	array2_a[i][j] = array2_c[i][j] + array2_b[i][j] ;
      }
    }
  }
  
  
  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=0; j < ROTATION_NUM; ++j) {
      result += array2_a[i][j];
    }
  }
  
  if( (result - ANSWER) == 0 ) {
    printf("%s\n", "ok");
  } else {
    printf("%s: \n", "ng");
    printf("Correct Answer: %lf \n", ANSWER);
    printf("Execution Result: %lf \n", result);
  }
  return 1;
}
