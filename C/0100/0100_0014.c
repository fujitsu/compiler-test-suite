#include <stdio.h>

#define ROTATION_NUM 100
#define ELEMENT_NUM 100
#define ANSWER 960.0f

int a_array[ELEMENT_NUM], b_array[ELEMENT_NUM], c_array[ELEMENT_NUM];
int x_array[ELEMENT_NUM], y_array[ELEMENT_NUM], z_array[ELEMENT_NUM];
void loop_fusion_0 (int imax,int pi) {
  int i;
  int bar=3;
  
  for(i=pi; i < imax+bar-3; i++) {
    a_array[i] = b_array[i] + c_array[i];
  }
  for(i=pi; i < imax+bar-3; i++) {
    x_array[i] = y_array[i] + z_array[i];
  }

}


int main( void ) {
  int array2_a[ELEMENT_NUM][ELEMENT_NUM];
  int array2_b[ELEMENT_NUM][ELEMENT_NUM];
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

  
  i=j=3;
  printf("%s \n","Main body of processing");
  loop_fusion_0(99,i);

  
  printf("%s \n","check on result");
  for (i=0; i < ROTATION_NUM; ++i) {
    result += a_array[i]+x_array[i];
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
