#include <stdio.h>

#define IMAX 100
#define JMAX 100
int a_array[IMAX][JMAX];


#define ROTATION_NUM 100
#define ELEMENT_NUM 100
#define ANSWER 20000.0f

void loop_collapse_0(int pi,int pj) {
  int i, j;
  int a_array[IMAX][JMAX]; 
  for (i = 0; i < IMAX; i++) {
    for (j = 0; j < JMAX; j++) {
      a_array[i][j] = 1;
    }
  }
  
}


int main( void ) {
  double result=0;
  int i,j,k,l,m,n;
  i=j=k=l=m=n=0;

  
  printf("%s \n","initialization");
  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=0; j < ROTATION_NUM; ++j) {
      a_array[i][j] = 2;
     }
  }
  
  i=j=3;
  printf("%s \n","Main body of processing");
  loop_collapse_0(i,j);

  
  printf("%s \n","check on result");
  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=0; j < ROTATION_NUM; ++j) {
      result += a_array[i][j];
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
