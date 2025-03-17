#include <stdio.h>

#define ROTATION_NUM 100
#define ELEMENT_NUM 100
#define ANSWER 9900.0f
void sub(int (*aa)[ELEMENT_NUM],
	 int (*bb)[ELEMENT_NUM]);

void sub(int (*aa)[ELEMENT_NUM],
	 int (*bb)[ELEMENT_NUM]) 
{
  int i,j;
  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=1; j < ROTATION_NUM; ++j) {
      aa[i][j] = 1;
    }
  }

}


int main( void ) {
  int array2_a[ELEMENT_NUM][ELEMENT_NUM];
  int array2_b[ELEMENT_NUM][ELEMENT_NUM];
  double result=0;
  int i,j;
  i=j=0;
  
  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=0; j < ROTATION_NUM; ++j) {
      array2_a[i][j] = 0;
      array2_b[i][j] = 1;
    }
  }
  
  sub(array2_a, array2_b); 
  
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
