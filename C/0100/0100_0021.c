#include <stdio.h>

#define ROTATION_NUM 1000
#define ELEMENT_NUM 1000
#define ANSWER 2991.0f

int a_array[ELEMENT_NUM], b_array[ELEMENT_NUM], c_array[ELEMENT_NUM];
int x_array[ELEMENT_NUM], y_array[ELEMENT_NUM], z_array[ELEMENT_NUM];
void autoparallel_0 (int imax,int pi,int pj) {
  int i,j;
  int bar=3;
  j=1;
  for(i=3+pi-pj; i < imax-pj-pi+3; i++) {
    a_array[i] = b_array[i+pj-pi] + c_array[i-pi];
  }
}


int main( void ) {
  double result=0;
  int i,j,k,l,m,n;
  i=j=k=l=m=n=0;

  
  printf("%s \n","initialization");
  for (i=0; i < ROTATION_NUM; ++i) {
    a_array[i] = 0;
    b_array[i] = 1;
    c_array[i] = 2;
    x_array[i] = 0;
    y_array[i] = 3;
    z_array[i] = 4;
      
  }

  
  i=0;j=3;
  printf("%s \n","Main body of processing");
  autoparallel_0(997,i,j);

  
  printf("%s \n","check on result");
  for (i=0; i < ROTATION_NUM; ++i) {
    result += a_array[i];
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
